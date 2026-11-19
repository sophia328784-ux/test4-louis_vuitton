.class public abstract Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;
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
.method public static final a(Landroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p22

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p5 .. p9}, La;->D(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-static/range {p10 .. p14}, La;->D(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-static/range {p15 .. p19}, La;->D(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x523fc2e

    move-object/from16 v4, p21

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    and-int/lit8 v4, v0, 0x6

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v0

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    and-int/lit8 v7, v0, 0x30

    if-nez v7, :cond_3

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    :cond_3
    and-int/lit16 v7, v0, 0x180

    if-nez v7, :cond_5

    move-object/from16 v7, p2

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x100

    goto :goto_3

    :cond_4
    const/16 v12, 0x80

    :goto_3
    or-int/2addr v4, v12

    goto :goto_4

    :cond_5
    move-object/from16 v7, p2

    :goto_4
    and-int/lit16 v12, v0, 0xc00

    if-nez v12, :cond_7

    move-object/from16 v12, p3

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/16 v15, 0x800

    goto :goto_5

    :cond_6
    const/16 v15, 0x400

    :goto_5
    or-int/2addr v4, v15

    goto :goto_6

    :cond_7
    move-object/from16 v12, p3

    :goto_6
    and-int/lit16 v15, v0, 0x6000

    const/16 v16, 0x2000

    if-nez v15, :cond_9

    move-object/from16 v15, p4

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v17, 0x4000

    goto :goto_7

    :cond_8
    move/from16 v17, v16

    :goto_7
    or-int v4, v4, v17

    goto :goto_8

    :cond_9
    move-object/from16 v15, p4

    :goto_8
    const/high16 v17, 0x30000

    and-int v17, v0, v17

    const/high16 v18, 0x10000

    move-object/from16 v13, p5

    if-nez v17, :cond_b

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/high16 v20, 0x20000

    goto :goto_9

    :cond_a
    move/from16 v20, v18

    :goto_9
    or-int v4, v4, v20

    :cond_b
    const/high16 v20, 0x180000

    and-int v20, v0, v20

    const/high16 v21, 0x80000

    move-object/from16 v6, p6

    if-nez v20, :cond_d

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    const/high16 v23, 0x100000

    goto :goto_a

    :cond_c
    move/from16 v23, v21

    :goto_a
    or-int v4, v4, v23

    :cond_d
    const/high16 v23, 0xc00000

    and-int v23, v0, v23

    const/high16 v24, 0x400000

    move-object/from16 v9, p7

    if-nez v23, :cond_f

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    const/high16 v25, 0x800000

    goto :goto_b

    :cond_e
    move/from16 v25, v24

    :goto_b
    or-int v4, v4, v25

    :cond_f
    const/high16 v25, 0x6000000

    and-int v25, v0, v25

    const/high16 v26, 0x2000000

    move-object/from16 v10, p8

    if-nez v25, :cond_11

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    const/high16 v27, 0x4000000

    goto :goto_c

    :cond_10
    move/from16 v27, v26

    :goto_c
    or-int v4, v4, v27

    :cond_11
    const/high16 v27, 0x30000000

    and-int v27, v0, v27

    const/high16 v28, 0x10000000

    move-object/from16 v8, p9

    if-nez v27, :cond_13

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    const/high16 v29, 0x20000000

    goto :goto_d

    :cond_12
    move/from16 v29, v28

    :goto_d
    or-int v4, v4, v29

    :cond_13
    move-object/from16 v12, p10

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    const/16 v29, 0x4

    :goto_e
    move-object/from16 v13, p11

    goto :goto_f

    :cond_14
    const/16 v29, 0x2

    goto :goto_e

    :goto_f
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_15

    const/16 v30, 0x20

    goto :goto_10

    :cond_15
    const/16 v30, 0x10

    :goto_10
    or-int v29, v29, v30

    move-object/from16 v14, p12

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    const/16 v19, 0x100

    goto :goto_11

    :cond_16
    const/16 v19, 0x80

    :goto_11
    or-int v19, v29, v19

    move-object/from16 v11, p13

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_17

    const/16 v17, 0x800

    goto :goto_12

    :cond_17
    const/16 v17, 0x400

    :goto_12
    or-int v17, v19, v17

    move-object/from16 v5, p14

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_18

    const/16 v16, 0x4000

    :cond_18
    or-int v16, v17, v16

    move-object/from16 v0, p15

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    const/high16 v18, 0x20000

    :cond_19
    or-int v16, v16, v18

    move-object/from16 v0, p16

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/high16 v21, 0x100000

    :cond_1a
    or-int v16, v16, v21

    move-object/from16 v0, p17

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    const/high16 v24, 0x800000

    :cond_1b
    or-int v16, v16, v24

    move-object/from16 v0, p18

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    const/high16 v26, 0x4000000

    :cond_1c
    or-int v16, v16, v26

    move-object/from16 v0, p19

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    const/high16 v28, 0x20000000

    :cond_1d
    or-int v0, v16, v28

    move-object/from16 v5, p20

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    const/16 v16, 0x4

    goto :goto_13

    :cond_1e
    const/16 v16, 0x2

    :goto_13
    const v17, 0x12492493

    and-int v5, v4, v17

    const v6, 0x12492492

    const/16 v18, 0x1

    if-ne v5, v6, :cond_20

    and-int v5, v0, v17

    if-ne v5, v6, :cond_20

    and-int/lit8 v5, v16, 0x3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1f

    goto :goto_14

    :cond_1f
    const/4 v5, 0x0

    goto :goto_15

    :cond_20
    :goto_14
    move/from16 v5, v18

    :goto_15
    and-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_36

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v6, "OptionsScreen"

    invoke-direct {v5, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v5, v6}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->b:J

    sget-object v6, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v5, v7, v8, v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5, v1}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v24

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v6, v3, v5}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v26

    sget-object v28, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v30, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    and-int/lit16 v7, v4, 0x380

    const/16 v8, 0x100

    if-ne v7, v8, :cond_21

    move/from16 v7, v18

    goto :goto_16

    :cond_21
    move v7, v6

    :goto_16
    or-int/2addr v5, v7

    and-int/lit16 v7, v4, 0x1c00

    const/16 v8, 0x800

    if-ne v7, v8, :cond_22

    move/from16 v7, v18

    goto :goto_17

    :cond_22
    move v7, v6

    :goto_17
    or-int/2addr v5, v7

    const v7, 0xe000

    and-int v8, v4, v7

    const/16 v6, 0x4000

    if-ne v8, v6, :cond_23

    move/from16 v6, v18

    goto :goto_18

    :cond_23
    const/4 v6, 0x0

    :goto_18
    or-int/2addr v5, v6

    const/high16 v6, 0x70000

    and-int v8, v4, v6

    move/from16 v19, v6

    const/high16 v6, 0x20000

    if-ne v8, v6, :cond_24

    move/from16 v6, v18

    goto :goto_19

    :cond_24
    const/4 v6, 0x0

    :goto_19
    or-int/2addr v5, v6

    const/high16 v6, 0x380000

    and-int v8, v4, v6

    move/from16 v21, v6

    const/high16 v6, 0x100000

    if-ne v8, v6, :cond_25

    move/from16 v6, v18

    goto :goto_1a

    :cond_25
    const/4 v6, 0x0

    :goto_1a
    or-int/2addr v5, v6

    const/high16 v6, 0x1c00000

    and-int v8, v4, v6

    move/from16 v31, v6

    const/high16 v6, 0x800000

    if-ne v8, v6, :cond_26

    move/from16 v6, v18

    goto :goto_1b

    :cond_26
    const/4 v6, 0x0

    :goto_1b
    or-int/2addr v5, v6

    const/high16 v6, 0xe000000

    and-int v8, v4, v6

    move/from16 v32, v6

    const/high16 v6, 0x4000000

    if-ne v8, v6, :cond_27

    move/from16 v6, v18

    goto :goto_1c

    :cond_27
    const/4 v6, 0x0

    :goto_1c
    or-int/2addr v5, v6

    const/high16 v6, 0x70000000

    and-int/2addr v4, v6

    const/high16 v8, 0x20000000

    if-ne v4, v8, :cond_28

    move/from16 v4, v18

    goto :goto_1d

    :cond_28
    const/4 v4, 0x0

    :goto_1d
    or-int/2addr v4, v5

    and-int/lit8 v5, v0, 0xe

    const/4 v8, 0x4

    if-ne v5, v8, :cond_29

    move/from16 v5, v18

    goto :goto_1e

    :cond_29
    const/4 v5, 0x0

    :goto_1e
    or-int/2addr v4, v5

    and-int/lit8 v5, v0, 0x70

    const/16 v8, 0x20

    if-ne v5, v8, :cond_2a

    move/from16 v5, v18

    goto :goto_1f

    :cond_2a
    const/4 v5, 0x0

    :goto_1f
    or-int/2addr v4, v5

    and-int/lit16 v5, v0, 0x380

    const/16 v8, 0x100

    if-ne v5, v8, :cond_2b

    move/from16 v5, v18

    goto :goto_20

    :cond_2b
    const/4 v5, 0x0

    :goto_20
    or-int/2addr v4, v5

    and-int/lit16 v5, v0, 0x1c00

    const/16 v8, 0x800

    if-ne v5, v8, :cond_2c

    move/from16 v5, v18

    goto :goto_21

    :cond_2c
    const/4 v5, 0x0

    :goto_21
    or-int/2addr v4, v5

    and-int v5, v0, v7

    const/16 v7, 0x4000

    if-ne v5, v7, :cond_2d

    move/from16 v5, v18

    goto :goto_22

    :cond_2d
    const/4 v5, 0x0

    :goto_22
    or-int/2addr v4, v5

    and-int v5, v0, v19

    const/high16 v7, 0x20000

    if-ne v5, v7, :cond_2e

    move/from16 v5, v18

    goto :goto_23

    :cond_2e
    const/4 v5, 0x0

    :goto_23
    or-int/2addr v4, v5

    and-int v5, v0, v21

    const/high16 v7, 0x100000

    if-ne v5, v7, :cond_2f

    move/from16 v5, v18

    goto :goto_24

    :cond_2f
    const/4 v5, 0x0

    :goto_24
    or-int/2addr v4, v5

    and-int v5, v0, v32

    const/high16 v7, 0x4000000

    if-ne v5, v7, :cond_30

    move/from16 v5, v18

    goto :goto_25

    :cond_30
    const/4 v5, 0x0

    :goto_25
    or-int/2addr v4, v5

    and-int v5, v0, v6

    const/high16 v8, 0x20000000

    if-ne v5, v8, :cond_31

    move/from16 v5, v18

    goto :goto_26

    :cond_31
    const/4 v5, 0x0

    :goto_26
    or-int/2addr v4, v5

    and-int/lit8 v5, v16, 0xe

    const/4 v8, 0x4

    if-ne v5, v8, :cond_32

    move/from16 v5, v18

    goto :goto_27

    :cond_32
    const/4 v5, 0x0

    :goto_27
    or-int/2addr v4, v5

    and-int v0, v0, v31

    const/high16 v6, 0x800000

    if-ne v0, v6, :cond_33

    goto :goto_28

    :cond_33
    const/16 v18, 0x0

    :goto_28
    or-int v0, v4, v18

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_35

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v0, :cond_34

    goto :goto_29

    :cond_34
    move-object v0, v3

    goto :goto_2a

    :cond_35
    :goto_29
    new-instance v2, Lgh0;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v22, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object v0, v3

    move-object v6, v15

    move-object/from16 v3, p1

    move-object v15, v11

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v22}, Lgh0;-><init>(Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v2

    :goto_2a
    move-object v12, v4

    check-cast v12, Lkotlin/jvm/functions/Function1;

    const v14, 0xc36000

    const/16 v15, 0x14c

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v13, v0

    move-object/from16 v4, v24

    move-object/from16 v5, v26

    move-object/from16 v7, v28

    move-object/from16 v8, v30

    invoke-static/range {v4 .. v15}, Landroidx/compose/foundation/lazy/LazyDslKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_2b

    :cond_36
    move-object v13, v3

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_37

    move-object v2, v0

    new-instance v0, Luh0;

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

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move/from16 v22, p22

    move-object/from16 v33, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v22}, Luh0;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    move-object/from16 v2, v33

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_37
    return-void
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x39047b5d

    move-object/from16 v3, p8

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    and-int/lit8 v2, v9, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v9

    goto :goto_1

    :cond_1
    move v2, v9

    :goto_1
    and-int/lit8 v3, v9, 0x30

    if-nez v3, :cond_3

    move-object/from16 v3, p1

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    goto :goto_3

    :cond_3
    move-object/from16 v3, p1

    :goto_3
    and-int/lit8 v4, p10, 0x4

    if-eqz v4, :cond_5

    or-int/lit16 v2, v2, 0x180

    :cond_4
    move-object/from16 v5, p2

    goto :goto_5

    :cond_5
    and-int/lit16 v5, v9, 0x180

    if-nez v5, :cond_4

    move-object/from16 v5, p2

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x100

    goto :goto_4

    :cond_6
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v2, v6

    :goto_5
    and-int/lit8 v6, p10, 0x8

    if-eqz v6, :cond_8

    or-int/lit16 v2, v2, 0xc00

    :cond_7
    move-object/from16 v7, p3

    goto :goto_7

    :cond_8
    and-int/lit16 v7, v9, 0xc00

    if-nez v7, :cond_7

    move-object/from16 v7, p3

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x800

    goto :goto_6

    :cond_9
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v2, v10

    :goto_7
    and-int/lit8 v10, p10, 0x10

    if-eqz v10, :cond_b

    or-int/lit16 v2, v2, 0x6000

    :cond_a
    move-object/from16 v11, p4

    goto :goto_9

    :cond_b
    and-int/lit16 v11, v9, 0x6000

    if-nez v11, :cond_a

    move-object/from16 v11, p4

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/16 v12, 0x4000

    goto :goto_8

    :cond_c
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v2, v12

    :goto_9
    and-int/lit8 v12, p10, 0x20

    const/high16 v13, 0x30000

    if-eqz v12, :cond_e

    or-int/2addr v2, v13

    :cond_d
    move/from16 v13, p5

    goto :goto_b

    :cond_e
    and-int/2addr v13, v9

    if-nez v13, :cond_d

    move/from16 v13, p5

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_f

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v2, v14

    :goto_b
    and-int/lit8 v14, p10, 0x40

    const/high16 v16, 0x180000

    if-eqz v14, :cond_10

    or-int v2, v2, v16

    move/from16 v16, v2

    move/from16 v2, p6

    goto :goto_d

    :cond_10
    and-int v16, v9, v16

    move/from16 p8, v2

    move/from16 v2, p6

    if-nez v16, :cond_12

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_11
    const/high16 v16, 0x80000

    :goto_c
    or-int v16, p8, v16

    goto :goto_d

    :cond_12
    move/from16 v16, p8

    :goto_d
    const/high16 v17, 0xc00000

    and-int v17, v9, v17

    if-nez v17, :cond_14

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_13
    const/high16 v17, 0x400000

    :goto_e
    or-int v16, v16, v17

    :cond_14
    move/from16 v33, v16

    const v16, 0x492493

    and-int v2, v33, v16

    const v3, 0x492492

    move/from16 v16, v12

    const/4 v13, 0x0

    if-eq v2, v3, :cond_15

    const/4 v2, 0x1

    goto :goto_f

    :cond_15
    move v2, v13

    :goto_f
    and-int/lit8 v3, v33, 0x1

    invoke-virtual {v15, v3, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_2e

    if-eqz v4, :cond_16

    const/4 v5, 0x0

    :cond_16
    if-eqz v6, :cond_17

    const/4 v7, 0x0

    :cond_17
    if-eqz v10, :cond_18

    const/4 v3, 0x0

    goto :goto_10

    :cond_18
    move-object v3, v11

    :goto_10
    if-eqz v16, :cond_19

    move v4, v13

    goto :goto_11

    :cond_19
    move/from16 v4, p5

    :goto_11
    if-eqz v14, :cond_1a

    move v6, v13

    goto :goto_12

    :cond_1a
    move/from16 v6, p6

    :goto_12
    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v10, v11, :cond_1b

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->i(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v11, :cond_1c

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->a:Ljava/util/List;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->m:Ljava/lang/String;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v35

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v11, :cond_1d

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->a:Ljava/util/List;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->G:Ljava/lang/String;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v5, :cond_1e

    invoke-static {v5}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e

    const v10, -0x3087d397

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_1e
    const v10, -0x3086eb17

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    new-instance v14, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const/16 v36, 0x0

    const-string v2, "SettingItemView"

    invoke-direct {v14, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v16, 0x1c00000

    and-int v13, v33, v16

    const/high16 v12, 0x800000

    if-ne v13, v12, :cond_1f

    const/4 v12, 0x1

    goto :goto_14

    :cond_1f
    const/4 v12, 0x0

    :goto_14
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_20

    if-ne v13, v11, :cond_21

    :cond_20
    new-instance v13, Lee0;

    const/16 v11, 0xb

    invoke-direct {v13, v8, v11}, Lee0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    move-object/from16 v20, v13

    check-cast v20, Lkotlin/jvm/functions/Function0;

    const/16 v21, 0x1f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v14

    invoke-static/range {v16 .. v21}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v12}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v11, v13, v10, v14}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    if-eqz v7, :cond_22

    invoke-static {v2, v7}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    if-nez v11, :cond_23

    :cond_22
    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v11, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_23
    invoke-interface {v10, v11}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v12, 0x30

    invoke-static {v13, v11, v15, v12}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v11

    iget-wide v12, v15, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v15, v10}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move/from16 p3, v0

    iget-object v0, v15, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v0, :cond_2d

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v0, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_24

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_15

    :cond_24
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_15
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v11, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v13, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v0, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v10, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_25

    const v0, 0x3761bc57

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 p2, v4

    const/4 v4, 0x1

    goto :goto_16

    :cond_25
    const/4 v0, 0x0

    const v10, 0x3761bc58

    invoke-static {v15, v10, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v10

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->t:F

    invoke-static {v10, v12}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const/16 v21, 0x0

    const/16 v22, 0x7fc

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v29, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 p2, v4

    move-object/from16 v20, v29

    const/4 v4, 0x1

    invoke-static/range {v10 .. v22}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v20

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v15, v10}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_16
    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    if-eqz v3, :cond_26

    invoke-static {v2, v3}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    if-nez v11, :cond_27

    :cond_26
    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v11, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_27
    shr-int/lit8 v14, v33, 0x3

    and-int/lit8 v30, v14, 0xe

    const/16 v31, 0x0

    const v32, 0x1fff8

    move-object/from16 v29, v15

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v28, v10

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v32}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v29

    if-eqz v6, :cond_28

    const v10, 0x376afe26

    invoke-static {v15, v10, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v16

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/16 v20, 0x0

    const/16 v21, 0xe

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v10

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v12

    const v10, 0x7f080248

    invoke-static {v10, v15, v0}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v13, Landroidx/compose/ui/graphics/Color;->i:J

    and-int/lit8 v11, v33, 0x70

    const/16 v16, 0xc08

    or-int v16, v16, v11

    const/16 v17, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v10 .. v17}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_17

    :cond_28
    const v10, 0x376f34bb

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_17
    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v11, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v10, v12, v4}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v15, v10}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    if-eqz p2, :cond_2c

    const v10, 0x3770f144

    const-string v11, "privacySettings_dispatchCountryName_text"

    invoke-static {v15, v10, v2, v11}, Ln00;->d(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    iget-object v10, v1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->f:Ljava/lang/String;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    sget-object v13, Landroidx/compose/ui/text/style/TextDirection;->b:Landroidx/compose/ui/text/style/TextDirection$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v27, Landroidx/compose/ui/text/style/TextDirection;->c:I

    const/16 v31, 0x0

    const v32, 0xfeffff

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    move-object/from16 v16, v12

    invoke-static/range {v16 .. v32}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v28

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v31, 0x0

    const v32, 0x1fff8

    move-object/from16 v29, v15

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x0

    invoke-static/range {v10 .. v32}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v29

    iget-object v10, v1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->i:Ljava/lang/String;

    invoke-static {v10}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_29

    if-nez v34, :cond_29

    if-nez v35, :cond_29

    move-object v11, v10

    goto :goto_18

    :cond_29
    move-object/from16 v11, v36

    :goto_18
    if-nez v11, :cond_2a

    const v10, 0x37780d8b

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1b

    :cond_2a
    const v10, 0x37780d8c

    invoke-static {v15, v10, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v10

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v10, v12}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v15, v10}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->o:F

    invoke-static {v10, v12}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    if-eqz p3, :cond_2b

    const v12, 0x7d57c643

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->o:F

    :goto_19
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :cond_2b
    const v12, 0x7d57cb63

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->j:F

    goto :goto_19

    :goto_1a
    invoke-static {v10, v12}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const-string v12, "privacySettings_dispatchCountryFlag_image"

    invoke-static {v10, v12}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v12, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/layout/ContentScale$Companion;->e:Landroidx/compose/ui/layout/ContentScale$Companion$FillWidth$1;

    const/16 v21, 0x180

    const/16 v22, 0x7f8

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v29, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v29

    invoke-static/range {v10 .. v22}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v20

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1b
    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v15, v10}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1c

    :cond_2c
    const v10, 0x37822c1b

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1c
    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    invoke-static {v10, v2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I:I

    invoke-static {v2, v15, v0}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v10

    const/16 v16, 0x38

    const/16 v17, 0x8

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-static/range {v10 .. v17}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v4, v5

    move-object v5, v3

    move-object v3, v4

    move-object v4, v7

    move v7, v6

    move/from16 v6, p2

    goto :goto_1d

    :cond_2d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v36

    :cond_2e
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v6, p5

    move-object v3, v5

    move-object v4, v7

    move-object v5, v11

    move/from16 v7, p6

    :goto_1d
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_2f

    new-instance v0, Lai;

    move-object/from16 v2, p1

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lai;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;II)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2f
    return-void
.end method

.method public static final c(Landroidx/compose/runtime/Composer;I)V
    .locals 8

    const v0, 0x32cdcf2

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    and-int/lit8 v0, p1, 0x1

    invoke-virtual {v5, v0, p0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string p0, "SettingsDividerView"

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/4 v2, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Ln50;

    const/16 v1, 0x19

    invoke-direct {v0, p1, v1}, Ln50;-><init>(II)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public static final d(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const-string v1, "SettingsListView"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, -0x9346462

    move-object/from16 v4, p20

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    or-int/lit8 v3, p21, 0x6

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x10

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    or-int/2addr v3, v4

    move-object/from16 v11, p2

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    const/16 v7, 0x80

    const/16 v8, 0x100

    if-eqz v4, :cond_2

    move v4, v8

    goto :goto_1

    :cond_2
    move v4, v7

    :goto_1
    or-int/2addr v3, v4

    move-object/from16 v15, p3

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    const/16 v9, 0x400

    const/16 v10, 0x800

    if-eqz v4, :cond_3

    move v4, v10

    goto :goto_2

    :cond_3
    move v4, v9

    :goto_2
    or-int/2addr v3, v4

    move-object/from16 v4, p4

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    const/16 v14, 0x2000

    const/16 v16, 0x4000

    if-eqz v13, :cond_4

    move/from16 v13, v16

    goto :goto_3

    :cond_4
    move v13, v14

    :goto_3
    or-int/2addr v3, v13

    move-object/from16 v13, p5

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    const/high16 v18, 0x10000

    const/high16 v19, 0x20000

    if-eqz v17, :cond_5

    move/from16 v17, v19

    goto :goto_4

    :cond_5
    move/from16 v17, v18

    :goto_4
    or-int v3, v3, v17

    move-object/from16 v6, p6

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    const/high16 v20, 0x80000

    const/high16 v21, 0x100000

    if-eqz v17, :cond_6

    move/from16 v17, v21

    goto :goto_5

    :cond_6
    move/from16 v17, v20

    :goto_5
    or-int v3, v3, v17

    move-object/from16 v6, p7

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    const/high16 v22, 0x400000

    const/high16 v23, 0x800000

    if-eqz v17, :cond_7

    move/from16 v17, v23

    goto :goto_6

    :cond_7
    move/from16 v17, v22

    :goto_6
    or-int v3, v3, v17

    move-object/from16 v6, p8

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    const/high16 v24, 0x2000000

    const/high16 v25, 0x4000000

    if-eqz v17, :cond_8

    move/from16 v17, v25

    goto :goto_7

    :cond_8
    move/from16 v17, v24

    :goto_7
    or-int v3, v3, v17

    move-object/from16 v6, p9

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    const/high16 v26, 0x10000000

    const/high16 v27, 0x20000000

    if-eqz v17, :cond_9

    move/from16 v17, v27

    goto :goto_8

    :cond_9
    move/from16 v17, v26

    :goto_8
    or-int v3, v3, v17

    move-object/from16 v6, p10

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x4

    :goto_9
    move-object/from16 v6, p11

    goto :goto_a

    :cond_a
    const/16 v17, 0x2

    goto :goto_9

    :goto_a
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b

    const/16 v5, 0x20

    :cond_b
    or-int v5, v17, v5

    move-object/from16 v6, p12

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    move v7, v8

    :cond_c
    or-int/2addr v5, v7

    move-object/from16 v7, p13

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    move v9, v10

    :cond_d
    or-int/2addr v5, v9

    move-object/from16 v8, p14

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    move/from16 v14, v16

    :cond_e
    or-int/2addr v5, v14

    move-object/from16 v9, p15

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    move/from16 v18, v19

    :cond_f
    or-int v5, v5, v18

    move-object/from16 v10, p16

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    move/from16 v20, v21

    :cond_10
    or-int v5, v5, v20

    move-object/from16 v14, p17

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    move/from16 v22, v23

    :cond_11
    or-int v5, v5, v22

    move-object/from16 v6, p18

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    move/from16 v24, v25

    :cond_12
    or-int v5, v5, v24

    move-object/from16 v6, p19

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    move/from16 v26, v27

    :cond_13
    or-int v16, v5, v26

    const p0, 0x12492493

    and-int v5, v3, p0

    move-object/from16 v17, v0

    const v0, 0x12492492

    if-ne v5, v0, :cond_15

    and-int v5, v16, p0

    if-eq v5, v0, :cond_14

    goto :goto_b

    :cond_14
    const/4 v0, 0x0

    goto :goto_c

    :cond_15
    :goto_b
    const/4 v0, 0x1

    :goto_c
    and-int/lit8 v5, v3, 0x1

    invoke-virtual {v12, v5, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v22, 0x0

    const/16 v23, 0x8

    move-object/from16 v18, v0

    move/from16 v19, v1

    move/from16 v21, v5

    move/from16 v20, v6

    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v6, 0x0

    invoke-static {v1, v5, v12, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v1

    iget-wide v6, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v12, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move/from16 v19, v3

    iget-object v3, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v3, :cond_1e

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v3, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v3, :cond_16

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_d

    :cond_16
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_d
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v6, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-boolean v0, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->c:Z

    const v1, 0x7f1411ed

    invoke-static {v12, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    shl-int/lit8 v1, v19, 0xf

    const/high16 v3, 0x1c00000

    and-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x6c00

    const/16 v14, 0x64

    const/4 v6, 0x0

    const-string v7, "privacySettings_shareApp_view"

    const-string v8, "privacySettings_shareApp_text"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v13, v1

    move/from16 p0, v3

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static/range {v4 .. v14}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-static {v12, v3}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const v5, 0x7f140b1b

    invoke-static {v12, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    shl-int/lit8 v6, v19, 0xc

    and-int v6, v6, p0

    or-int/lit16 v13, v6, 0x6c00

    const/4 v6, 0x0

    const-string v7, "privacySettings_termsOfUse_view"

    const-string v8, "privacySettings_termsOfUse_text"

    move-object v11, v15

    invoke-static/range {v4 .. v14}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    if-eqz v0, :cond_17

    const v4, 0x688744ef

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12, v3}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const v5, 0x7f140654

    invoke-static {v12, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    shl-int/lit8 v6, v19, 0x6

    and-int v6, v6, p0

    or-int/lit16 v13, v6, 0x6c00

    const/16 v14, 0x64

    const/4 v6, 0x0

    const-string v7, "privacySettings_contactPrivacySettings_view"

    const-string v8, "privacySettings_contactPrivacySettings_text"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p5

    invoke-static/range {v4 .. v14}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_10

    :cond_17
    const v4, 0x688f2ab7

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-boolean v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->e:Z

    if-eqz v4, :cond_19

    const v4, 0x688fe533

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v4}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->j(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-boolean v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->i:Z

    if-eqz v4, :cond_18

    const v4, 0x689247e0

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12, v3}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const v5, 0x7f140e62

    invoke-static {v12, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x186c00

    and-int v7, v19, p0

    or-int v13, v7, v6

    const/16 v14, 0x24

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v11, p7

    invoke-static/range {v4 .. v14}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_18
    const v4, 0x689a0935

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12, v3}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const v5, 0x7f140c00

    invoke-static {v12, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    shl-int/lit8 v6, v19, 0x3

    and-int v6, v6, p0

    or-int/lit16 v13, v6, 0x6c00

    const/16 v14, 0x64

    const/4 v6, 0x0

    const-string v7, "privacySettings_settings_view"

    const-string v8, "privacySettings_settings_text"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p6

    invoke-static/range {v4 .. v14}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_e
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_f

    :cond_19
    const v4, 0x68a1d43a

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_f
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    invoke-static {v12, v3}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const v5, 0x7f140c31

    invoke-static {v12, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    shl-int/lit8 v6, v19, 0x9

    and-int v6, v6, p0

    or-int/lit16 v13, v6, 0x6c00

    const/16 v14, 0x64

    const/4 v6, 0x0

    const-string v7, "privacySettings_privacyPolicy_view"

    const-string v8, "privacySettings_privacyPolicy_text"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p4

    invoke-static/range {v4 .. v14}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-static {v12, v3}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const v5, 0x7f140eaf

    invoke-static {v12, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    shl-int/lit8 v6, v16, 0x12

    and-int v6, v6, p0

    or-int/lit16 v13, v6, 0x6c00

    const/4 v6, 0x0

    const-string v7, "privacySettings_notifications_view"

    const-string v8, "privacySettings_notifications_text"

    move-object/from16 v11, p11

    invoke-static/range {v4 .. v14}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-static {v12, v3}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    iget-boolean v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->k:Z

    if-eqz v4, :cond_1a

    const v4, 0x68b010e8

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const v5, 0x7f1402ce

    invoke-static {v12, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    shl-int/lit8 v6, v16, 0xf

    and-int v6, v6, p0

    or-int/lit16 v13, v6, 0x6c00

    const/16 v14, 0x64

    const/4 v6, 0x0

    const-string v7, "privacySettings_accessibility_view"

    const-string v8, "privacySettings_accessibility_text"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p12

    invoke-static/range {v4 .. v14}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-static {v12, v3}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_11

    :cond_1a
    const v4, 0x68b6e63a

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const v5, 0x7f140655

    invoke-static {v12, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    shr-int/lit8 v6, v19, 0x3

    and-int v6, v6, p0

    or-int/lit16 v13, v6, 0x6c00

    const/16 v14, 0x64

    const/4 v6, 0x0

    const-string v7, "privacySettings_needHelp_view"

    const-string v8, "privacySettings_needHelp_text"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p8

    invoke-static/range {v4 .. v14}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-boolean v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->f:Z

    if-eqz v4, :cond_1b

    const v4, 0x68bde914

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12, v3}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const v5, 0x7f140653

    invoke-static {v12, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f140652

    invoke-static {v12, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    shr-int/lit8 v7, v19, 0x6

    and-int v13, v7, p0

    const/16 v14, 0x78

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p9

    invoke-static/range {v4 .. v14}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_1b
    const v4, 0x68c328fa

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    invoke-static {v12, v3}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    const v4, 0x7f1411f5

    invoke-static {v12, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    shl-int/lit8 v6, v16, 0x15

    and-int v6, v6, p0

    const v7, 0x36c00

    or-int v13, v6, v7

    const/16 v14, 0x44

    const/4 v6, 0x0

    const-string v7, "privacySettings_dispatchCountry_view"

    const-string v8, "privacySettings_dispatchCountry_text"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v11, p10

    invoke-static/range {v4 .. v14}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-static {v12, v3}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    if-eqz v0, :cond_1c

    const v0, 0x68cb22fb

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12, v3}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const v0, 0x7f140d80

    invoke-static {v12, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    shl-int/lit8 v0, v16, 0xc

    and-int v0, v0, p0

    or-int/lit16 v13, v0, 0x6c00

    const/16 v14, 0x64

    const/4 v6, 0x0

    const-string v7, "privacySettings_disconnectMyLV_view"

    const-string v8, "privacySettings_disconnectMyLV_text"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p13

    invoke-static/range {v4 .. v14}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_1c
    const v0, 0x68d2291a

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    iget-boolean v0, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->g:Z

    if-eqz v0, :cond_1d

    const v0, 0x68d3151d

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-boolean v5, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->j:Z

    shr-int/lit8 v0, v16, 0x6

    const v6, 0x1ffff80

    and-int v13, v0, v6

    move-object/from16 v6, p14

    move-object/from16 v7, p15

    move-object/from16 v8, p16

    move-object/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p19

    invoke-static/range {v4 .. v13}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->e(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_1d
    const v0, 0x68da13ba

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_14
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v1, v18

    goto :goto_15

    :cond_1e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_1f
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v1, v17

    :goto_15
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_20

    move-object v3, v0

    new-instance v0, Lnb0;

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

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v21, p21

    move-object/from16 v29, v3

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v21}, Lnb0;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    move-object/from16 v3, v29

    iput-object v0, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method

.method public static final e(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 35

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x13f11fe5

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    and-int/lit8 v0, v9, 0x6

    move-object/from16 v10, p0

    if-nez v0, :cond_1

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v9

    goto :goto_1

    :cond_1
    move v0, v9

    :goto_1
    and-int/lit8 v1, v9, 0x30

    move/from16 v2, p1

    if-nez v1, :cond_3

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, v9, 0x180

    move-object/from16 v3, p2

    if-nez v1, :cond_5

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v9, 0xc00

    move-object/from16 v4, p3

    if-nez v1, :cond_7

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x800

    goto :goto_4

    :cond_6
    const/16 v1, 0x400

    :goto_4
    or-int/2addr v0, v1

    :cond_7
    and-int/lit16 v1, v9, 0x6000

    move-object/from16 v5, p4

    if-nez v1, :cond_9

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x4000

    goto :goto_5

    :cond_8
    const/16 v1, 0x2000

    :goto_5
    or-int/2addr v0, v1

    :cond_9
    const/high16 v1, 0x30000

    and-int/2addr v1, v9

    move-object/from16 v6, p5

    if-nez v1, :cond_b

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/high16 v1, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v1, 0x10000

    :goto_6
    or-int/2addr v0, v1

    :cond_b
    const/high16 v1, 0x180000

    and-int/2addr v1, v9

    move-object/from16 v7, p6

    if-nez v1, :cond_d

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/high16 v1, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v1, 0x80000

    :goto_7
    or-int/2addr v0, v1

    :cond_d
    const/high16 v1, 0xc00000

    and-int/2addr v1, v9

    if-nez v1, :cond_f

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/high16 v1, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v1, 0x400000

    :goto_8
    or-int/2addr v0, v1

    :cond_f
    const v1, 0x492493

    and-int/2addr v1, v0

    const v12, 0x492492

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eq v1, v12, :cond_10

    move v1, v13

    goto :goto_9

    :cond_10
    move v1, v14

    :goto_9
    and-int/lit8 v12, v0, 0x1

    invoke-virtual {v15, v12, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v15, v14}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    const v1, 0x7f14057b

    invoke-static {v15, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    and-int/lit8 v12, v0, 0xe

    or-int/lit16 v11, v12, 0x6c00

    shl-int/lit8 v16, v0, 0xf

    const/high16 v33, 0x1c00000

    and-int v16, v16, v33

    or-int v19, v11, v16

    const/16 v20, 0x64

    move v11, v12

    const/4 v12, 0x0

    move/from16 v16, v13

    const-string v13, "privacySettings_changeEnv_view"

    move/from16 v17, v14

    const-string v14, "privacySettings_changeEnv_text"

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move/from16 v21, v16

    const/16 v16, 0x0

    move/from16 v34, v11

    move-object v11, v1

    move/from16 v1, v17

    move-object/from16 v17, v3

    move/from16 v3, v34

    invoke-static/range {v10 .. v20}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v18

    invoke-static {v15, v1}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    or-int/lit8 v21, v3, 0x30

    shl-int/lit8 v10, v0, 0xc

    and-int v10, v10, v33

    or-int v19, v21, v10

    const/16 v20, 0x7c

    const-string v11, "Feature flags Menu"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v17, v4

    invoke-static/range {v10 .. v20}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v18

    invoke-static {v15, v1}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    shl-int/lit8 v4, v0, 0x3

    and-int v4, v4, v33

    or-int v19, v21, v4

    const-string v11, "Book an Experience"

    const/4 v15, 0x0

    move-object/from16 v17, v7

    invoke-static/range {v10 .. v20}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v18

    invoke-static {v15, v1}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    shl-int/lit8 v4, v0, 0x6

    and-int v4, v4, v33

    or-int v19, v21, v4

    const-string v11, "Thank You Page (Test)"

    const/4 v15, 0x0

    move-object/from16 v17, v6

    invoke-static/range {v10 .. v20}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v18

    invoke-static {v15, v1}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v6, "SettingsPreProdItemsView"

    invoke-direct {v4, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v4, v11, v10, v12}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v10, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v12, 0x30

    invoke-static {v11, v10, v15, v12}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v10

    iget-wide v11, v15, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v15, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v14, v15, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v14, :cond_15

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v14, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v14, :cond_11

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_11
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_a
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v10, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v10, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v10}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v4, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    sget-object v10, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/4 v11, 0x1

    invoke-static {v6, v10, v7, v11}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/16 v31, 0x0

    const v32, 0x1fff8

    const-string v10, "UI Test mode (inspectable)"

    move-object/from16 v18, v15

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v29, v18

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x6

    move-object/from16 v28, v4

    move-object v11, v6

    invoke-static/range {v10 .. v32}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v29

    and-int v4, v0, v33

    const/high16 v6, 0x800000

    if-ne v4, v6, :cond_12

    const/4 v13, 0x1

    goto :goto_b

    :cond_12
    move v13, v1

    :goto_b
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v13, :cond_13

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v6, :cond_14

    :cond_13
    new-instance v4, Ly2;

    const/16 v6, 0x1a

    invoke-direct {v4, v8, v6}, Ly2;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object v11, v4

    check-cast v11, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v16, v4, 0xe

    const/16 v17, 0x7c

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v10, v2

    invoke-static/range {v10 .. v17}, Landroidx/compose/material3/SwitchKt;->a(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/Composer;II)V

    const/4 v11, 0x1

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v15, v1}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    const v2, 0x7f141322

    invoke-static {v15, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    shl-int/lit8 v0, v0, 0x9

    and-int v0, v0, v33

    or-int v19, v3, v0

    const/16 v20, 0x7c

    const/4 v13, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v17, v5

    invoke-static/range {v10 .. v20}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v18

    invoke-static {v15, v1}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->c(Landroidx/compose/runtime/Composer;I)V

    goto :goto_c

    :cond_15
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_16
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_c
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_17

    new-instance v0, Lkc;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lkc;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method
