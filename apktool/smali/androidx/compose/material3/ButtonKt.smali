.class public abstract Landroidx/compose/material3/ButtonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "material3"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 29

    move-object/from16 v0, p1

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    const-string v1, "Button"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x4e1540b0

    move-object/from16 v3, p8

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, v9, 0x6

    move-object/from16 v11, p0

    if-nez v3, :cond_2

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v9

    goto :goto_1

    :cond_2
    move v3, v9

    :goto_1
    and-int/lit8 v5, v10, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v9, 0x30

    if-nez v6, :cond_5

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :cond_5
    :goto_3
    and-int/lit8 v6, v10, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move/from16 v12, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v12, v9, 0x180

    if-nez v12, :cond_6

    move/from16 v12, p2

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x100

    goto :goto_4

    :cond_8
    const/16 v13, 0x80

    :goto_4
    or-int/2addr v3, v13

    :goto_5
    and-int/lit16 v13, v9, 0xc00

    if-nez v13, :cond_b

    and-int/lit8 v13, v10, 0x8

    if-nez v13, :cond_9

    move-object/from16 v13, p3

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/16 v14, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v13, p3

    :cond_a
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v3, v14

    goto :goto_7

    :cond_b
    move-object/from16 v13, p3

    :goto_7
    and-int/lit16 v14, v9, 0x6000

    if-nez v14, :cond_e

    and-int/lit8 v14, v10, 0x10

    if-nez v14, :cond_c

    move-object/from16 v14, p4

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v14, p4

    :cond_d
    const/16 v15, 0x2000

    :goto_8
    or-int/2addr v3, v15

    goto :goto_9

    :cond_e
    move-object/from16 v14, p4

    :goto_9
    const/high16 v15, 0x30000

    and-int/2addr v15, v9

    if-nez v15, :cond_11

    and-int/lit8 v15, v10, 0x20

    if-nez v15, :cond_f

    move-object/from16 v15, p5

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v15, p5

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v3, v3, v16

    goto :goto_b

    :cond_11
    move-object/from16 v15, p5

    :goto_b
    and-int/lit8 v16, v10, 0x40

    const/4 v7, 0x0

    const/high16 v17, 0x180000

    if-eqz v16, :cond_12

    or-int v3, v3, v17

    goto :goto_d

    :cond_12
    and-int v16, v9, v17

    if-nez v16, :cond_14

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v3, v3, v16

    :cond_14
    :goto_d
    and-int/lit16 v4, v10, 0x80

    const/high16 v16, 0xc00000

    if-eqz v4, :cond_15

    or-int v3, v3, v16

    move-object/from16 v7, p6

    goto :goto_f

    :cond_15
    and-int v16, v9, v16

    move-object/from16 v7, p6

    if-nez v16, :cond_17

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v17, 0x400000

    :goto_e
    or-int v3, v3, v17

    :cond_17
    :goto_f
    move-object/from16 v17, v0

    and-int/lit16 v0, v10, 0x100

    const/high16 v18, 0x6000000

    if-eqz v0, :cond_18

    or-int v3, v3, v18

    goto :goto_11

    :cond_18
    and-int v0, v9, v18

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/high16 v0, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v0, 0x2000000

    :goto_10
    or-int/2addr v3, v0

    :cond_1a
    :goto_11
    const/high16 v0, 0x30000000

    and-int/2addr v0, v9

    if-nez v0, :cond_1c

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/high16 v0, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v0, 0x10000000

    :goto_12
    or-int/2addr v3, v0

    :cond_1c
    const v0, 0x12492493

    and-int/2addr v0, v3

    move/from16 v18, v4

    const v4, 0x12492492

    move/from16 v19, v5

    const/4 v5, 0x0

    const/16 v20, 0x1

    if-eq v0, v4, :cond_1d

    move/from16 v0, v20

    goto :goto_13

    :cond_1d
    move v0, v5

    :goto_13
    and-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v9, 0x1

    const v4, -0x70001

    const v21, -0xe001

    if-eqz v0, :cond_22

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_15

    :cond_1e
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v0, v10, 0x8

    if-eqz v0, :cond_1f

    and-int/lit16 v3, v3, -0x1c01

    :cond_1f
    and-int/lit8 v0, v10, 0x10

    if-eqz v0, :cond_20

    and-int v3, v3, v21

    :cond_20
    and-int/lit8 v0, v10, 0x20

    if-eqz v0, :cond_21

    and-int/2addr v3, v4

    :cond_21
    move-object v0, v14

    move-object/from16 v1, v17

    :goto_14
    move-object v14, v13

    move v13, v12

    goto :goto_18

    :cond_22
    :goto_15
    if-eqz v19, :cond_23

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_16

    :cond_23
    move-object/from16 v0, v17

    :goto_16
    if-eqz v6, :cond_24

    move/from16 v12, v20

    :cond_24
    and-int/lit8 v1, v10, 0x8

    if-eqz v1, :cond_25

    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/material3/tokens/ButtonSmallTokens;->b:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ShapesKt;->a(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    and-int/lit16 v3, v3, -0x1c01

    move-object v13, v1

    :cond_25
    and-int/lit8 v1, v10, 0x10

    if-eqz v1, :cond_26

    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/material3/ButtonDefaults;->b(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;

    move-result-object v1

    and-int v3, v3, v21

    move-object v14, v1

    :cond_26
    and-int/lit8 v1, v10, 0x20

    if-eqz v1, :cond_27

    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget v25, Landroidx/compose/material3/tokens/FilledButtonTokens;->f:F

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v21, Landroidx/compose/material3/ButtonElevation;

    const/16 v27, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v21 .. v27}, Landroidx/compose/material3/ButtonElevation;-><init>(FFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    and-int v1, v3, v4

    move v3, v1

    goto :goto_17

    :cond_27
    move-object/from16 v21, v15

    :goto_17
    if-eqz v18, :cond_28

    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-object v7, v1

    :cond_28
    move-object v1, v0

    move-object v0, v14

    move-object/from16 v15, v21

    goto :goto_14

    :goto_18
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v4, 0x64d5e04b

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v6, :cond_29

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_29
    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-eqz v13, :cond_2a

    move-object/from16 p2, v6

    iget-wide v5, v0, Landroidx/compose/material3/ButtonColors;->a:J

    goto :goto_19

    :cond_2a
    move-object/from16 p2, v6

    iget-wide v5, v0, Landroidx/compose/material3/ButtonColors;->c:J

    :goto_19
    move-wide/from16 p3, v5

    if-eqz v13, :cond_2b

    iget-wide v5, v0, Landroidx/compose/material3/ButtonColors;->b:J

    goto :goto_1a

    :cond_2b
    iget-wide v5, v0, Landroidx/compose/material3/ButtonColors;->d:J

    :goto_1a
    if-nez v15, :cond_2c

    const v12, 0x64d8ada6

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v9, p2

    move-object/from16 p5, v0

    move-object/from16 v21, v4

    move/from16 v25, v13

    move-object/from16 v26, v15

    const/4 v0, 0x0

    goto/16 :goto_20

    :cond_2c
    const v12, -0x1dc77645

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v12, v3, 0x6

    and-int/lit8 v12, v12, 0xe

    move-object/from16 p5, v0

    shr-int/lit8 v0, v3, 0x9

    and-int/lit16 v0, v0, 0x380

    or-int/2addr v0, v12

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v9, p2

    if-ne v12, v9, :cond_2d

    new-instance v12, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v12}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2d
    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v17, :cond_2e

    if-ne v10, v9, :cond_2f

    :cond_2e
    new-instance v10, Landroidx/compose/material3/ButtonElevation$animateElevation$1$1;

    const/4 v11, 0x0

    invoke-direct {v10, v4, v12, v11}, Landroidx/compose/material3/ButtonElevation$animateElevation$1$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2f
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v4, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/interaction/Interaction;

    if-nez v13, :cond_30

    iget v11, v15, Landroidx/compose/material3/ButtonElevation;->e:F

    goto :goto_1b

    :cond_30
    instance-of v11, v10, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz v11, :cond_31

    iget v11, v15, Landroidx/compose/material3/ButtonElevation;->b:F

    goto :goto_1b

    :cond_31
    instance-of v11, v10, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v11, :cond_32

    iget v11, v15, Landroidx/compose/material3/ButtonElevation;->d:F

    goto :goto_1b

    :cond_32
    instance-of v11, v10, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v11, :cond_33

    iget v11, v15, Landroidx/compose/material3/ButtonElevation;->c:F

    goto :goto_1b

    :cond_33
    iget v11, v15, Landroidx/compose/material3/ButtonElevation;->a:F

    :goto_1b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v9, :cond_34

    new-instance v21, Landroidx/compose/animation/core/Animatable;

    new-instance v12, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v12, v11}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    sget-object v23, Landroidx/compose/animation/core/VectorConvertersKt;->c:Landroidx/compose/animation/core/TwoWayConverter;

    const/16 v26, 0xc

    const/16 v27, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v12

    invoke-direct/range {v21 .. v27}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v12, v21

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_34
    check-cast v12, Landroidx/compose/animation/core/Animatable;

    move-object/from16 v21, v4

    new-instance v4, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v4, v11}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v17

    or-int v16, v16, v17

    and-int/lit8 v17, v0, 0xe

    move/from16 v24, v11

    xor-int/lit8 v11, v17, 0x6

    move-object/from16 v23, v12

    const/4 v12, 0x4

    if-le v11, v12, :cond_35

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v11

    if-nez v11, :cond_36

    :cond_35
    and-int/lit8 v11, v0, 0x6

    if-ne v11, v12, :cond_37

    :cond_36
    move/from16 v11, v20

    goto :goto_1c

    :cond_37
    const/4 v11, 0x0

    :goto_1c
    or-int v11, v16, v11

    and-int/lit16 v12, v0, 0x380

    xor-int/lit16 v12, v12, 0x180

    move/from16 p2, v11

    const/16 v11, 0x100

    if-le v12, v11, :cond_38

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3a

    :cond_38
    and-int/lit16 v0, v0, 0x180

    if-ne v0, v11, :cond_39

    goto :goto_1d

    :cond_39
    const/16 v20, 0x0

    :cond_3a
    :goto_1d
    or-int v0, p2, v20

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v0, v11

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v0, :cond_3c

    if-ne v11, v9, :cond_3b

    goto :goto_1e

    :cond_3b
    move/from16 v25, v13

    move-object/from16 v26, v15

    move-object/from16 v12, v23

    goto :goto_1f

    :cond_3c
    :goto_1e
    new-instance v22, Landroidx/compose/material3/ButtonElevation$animateElevation$2$1;

    const/16 v28, 0x0

    move-object/from16 v27, v10

    move/from16 v25, v13

    move-object/from16 v26, v15

    invoke-direct/range {v22 .. v28}, Landroidx/compose/material3/ButtonElevation$animateElevation$2$1;-><init>(Landroidx/compose/animation/core/Animatable;FZLandroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1f
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v4, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, v12, Landroidx/compose/animation/core/Animatable;->c:Landroidx/compose/animation/core/AnimationState;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_20
    if-eqz v0, :cond_3d

    iget-object v0, v0, Landroidx/compose/animation/core/AnimationState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    iget v0, v0, Landroidx/compose/ui/unit/Dp;->b:F

    :goto_21
    move/from16 v20, v0

    goto :goto_22

    :cond_3d
    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v0, 0x0

    goto :goto_21

    :goto_22
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_3e

    new-instance v0, Ljh;

    const/4 v12, 0x4

    invoke-direct {v0, v12}, Ljh;-><init>(I)V

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3e
    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x0

    invoke-static {v1, v12, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    new-instance v0, Landroidx/compose/material3/ButtonKt$Button$2;

    invoke-direct {v0, v5, v6, v7, v8}, Landroidx/compose/material3/ButtonKt$Button$2;-><init>(JLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;)V

    const v4, -0x1fed37a5

    invoke-static {v4, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v22

    and-int/lit16 v0, v3, 0x1f8e

    const/high16 v4, 0xe000000

    shl-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v4

    or-int v24, v0, v3

    move/from16 v13, v25

    const/16 v25, 0x40

    const/16 v19, 0x0

    move-object/from16 v11, p0

    move-wide/from16 v15, p3

    move-object/from16 v23, v2

    move-wide/from16 v17, v5

    invoke-static/range {v11 .. v25}, Landroidx/compose/material3/SurfaceKt;->c(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move/from16 v25, v13

    move-object/from16 v5, p5

    move-object v2, v1

    move-object v4, v14

    move/from16 v3, v25

    move-object/from16 v6, v26

    goto :goto_23

    :cond_3f
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->D()V

    move v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v2, v17

    :goto_23
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_40

    new-instance v0, Lv5;

    move-object/from16 v1, p0

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lv5;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;II)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_40
    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 20

    move-object/from16 v0, p1

    move/from16 v8, p8

    const-string v1, "TextButton"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x3f43489d

    move-object/from16 v3, p7

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, v8, 0x6

    move-object/from16 v9, p0

    if-nez v3, :cond_2

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v8

    goto :goto_1

    :cond_2
    move v3, v8

    :goto_1
    and-int/lit8 v4, p9, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v8, 0x30

    if-nez v5, :cond_5

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_5
    :goto_3
    or-int/lit16 v3, v3, 0x180

    and-int/lit16 v5, v8, 0xc00

    if-nez v5, :cond_8

    and-int/lit8 v5, p9, 0x8

    if-nez v5, :cond_6

    move-object/from16 v5, p3

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x800

    goto :goto_4

    :cond_6
    move-object/from16 v5, p3

    :cond_7
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v3, v6

    goto :goto_5

    :cond_8
    move-object/from16 v5, p3

    :goto_5
    and-int/lit16 v6, v8, 0x6000

    if-nez v6, :cond_b

    and-int/lit8 v6, p9, 0x10

    if-nez v6, :cond_9

    move-object/from16 v6, p4

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x4000

    goto :goto_6

    :cond_9
    move-object/from16 v6, p4

    :cond_a
    const/16 v7, 0x2000

    :goto_6
    or-int/2addr v3, v7

    goto :goto_7

    :cond_b
    move-object/from16 v6, p4

    :goto_7
    and-int/lit8 v7, p9, 0x20

    const/4 v10, 0x0

    const/high16 v11, 0x30000

    if-eqz v7, :cond_c

    or-int/2addr v3, v11

    goto :goto_9

    :cond_c
    and-int v7, v8, v11

    if-nez v7, :cond_e

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/high16 v7, 0x20000

    goto :goto_8

    :cond_d
    const/high16 v7, 0x10000

    :goto_8
    or-int/2addr v3, v7

    :cond_e
    :goto_9
    and-int/lit8 v7, p9, 0x40

    const/high16 v11, 0x180000

    if-eqz v7, :cond_f

    or-int/2addr v3, v11

    goto :goto_b

    :cond_f
    and-int v7, v8, v11

    if-nez v7, :cond_11

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/high16 v7, 0x100000

    goto :goto_a

    :cond_10
    const/high16 v7, 0x80000

    :goto_a
    or-int/2addr v3, v7

    :cond_11
    :goto_b
    const/high16 v7, 0x6c00000

    or-int/2addr v3, v7

    const/high16 v7, 0x30000000

    and-int/2addr v7, v8

    if-nez v7, :cond_13

    move-object/from16 v7, p6

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/high16 v10, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v10, 0x10000000

    :goto_c
    or-int/2addr v3, v10

    goto :goto_d

    :cond_13
    move-object/from16 v7, p6

    :goto_d
    const v10, 0x12492493

    and-int/2addr v10, v3

    const v11, 0x12492492

    const/4 v12, 0x1

    if-eq v10, v11, :cond_14

    move v10, v12

    goto :goto_e

    :cond_14
    const/4 v10, 0x0

    :goto_e
    and-int/lit8 v11, v3, 0x1

    invoke-virtual {v2, v11, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v10, v8, 0x1

    const v11, -0xe001

    if-eqz v10, :cond_18

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v10

    if-eqz v10, :cond_15

    goto :goto_f

    :cond_15
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v1, p9, 0x8

    if-eqz v1, :cond_16

    and-int/lit16 v3, v3, -0x1c01

    :cond_16
    and-int/lit8 v1, p9, 0x10

    if-eqz v1, :cond_17

    and-int/2addr v3, v11

    :cond_17
    move/from16 v11, p2

    move-object/from16 v15, p5

    move-object v10, v0

    move-object v12, v5

    move-object v13, v6

    goto :goto_11

    :cond_18
    :goto_f
    if-eqz v4, :cond_19

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_19
    and-int/lit8 v1, p9, 0x8

    if-eqz v1, :cond_1a

    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/material3/tokens/ButtonSmallTokens;->b:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ShapesKt;->a(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    and-int/lit16 v3, v3, -0x1c01

    goto :goto_10

    :cond_1a
    move-object v1, v5

    :goto_10
    and-int/lit8 v4, p9, 0x10

    if-eqz v4, :cond_1b

    sget-object v4, Landroidx/compose/material3/ButtonDefaults;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/material3/ButtonDefaults;->c(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;

    move-result-object v4

    and-int/2addr v3, v11

    move-object v6, v4

    :cond_1b
    sget-object v4, Landroidx/compose/material3/ButtonDefaults;->b:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-object v10, v0

    move-object v15, v4

    move-object v13, v6

    move v11, v12

    move-object v12, v1

    :goto_11
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7ffffffe

    and-int v18, v3, v0

    const/16 v19, 0x0

    const/4 v14, 0x0

    move-object/from16 v17, v2

    move-object/from16 v16, v7

    invoke-static/range {v9 .. v19}, Landroidx/compose/material3/ButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v2, v10

    move v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v15

    goto :goto_12

    :cond_1c
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v3, p2

    move-object v2, v0

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p5

    :goto_12
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_1d

    new-instance v0, Lbg;

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v7, p6

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lbg;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;III)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1d
    return-void
.end method
