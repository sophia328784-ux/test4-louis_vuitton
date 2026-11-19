.class public abstract Landroidx/compose/material3/TextFieldKt;
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


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v11, p10

    move-object/from16 v1, p11

    move-object/from16 v9, p12

    move-object/from16 v13, p13

    move/from16 v10, p15

    move/from16 v12, p16

    const-string v14, "TextFieldLayout"

    if-eqz v0, :cond_0

    invoke-static {v0, v14}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v15, -0x40c2260f

    move-object/from16 v16, v14

    move-object/from16 v14, p14

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    iget-object v15, v14, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v17, v10, 0x6

    move-object/from16 p0, v15

    if-nez v17, :cond_2

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x4

    goto :goto_0

    :cond_1
    const/16 v17, 0x2

    :goto_0
    or-int v17, v10, v17

    goto :goto_1

    :cond_2
    move/from16 v17, v10

    :goto_1
    and-int/lit8 v18, v10, 0x30

    const/16 v19, 0x10

    const/16 v20, 0x20

    if-nez v18, :cond_4

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    move/from16 v18, v20

    goto :goto_2

    :cond_3
    move/from16 v18, v19

    :goto_2
    or-int v17, v17, v18

    :cond_4
    and-int/lit16 v15, v10, 0x180

    const/16 v21, 0x80

    const/16 v22, 0x100

    if-nez v15, :cond_6

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    move/from16 v15, v22

    goto :goto_3

    :cond_5
    move/from16 v15, v21

    :goto_3
    or-int v17, v17, v15

    :cond_6
    and-int/lit16 v15, v10, 0xc00

    const/16 v23, 0x400

    move/from16 v24, v15

    if-nez v24, :cond_8

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    const/16 v24, 0x800

    goto :goto_4

    :cond_7
    move/from16 v24, v23

    :goto_4
    or-int v17, v17, v24

    :cond_8
    and-int/lit16 v15, v10, 0x6000

    if-nez v15, :cond_a

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/16 v15, 0x4000

    goto :goto_5

    :cond_9
    const/16 v15, 0x2000

    :goto_5
    or-int v17, v17, v15

    :cond_a
    const/high16 v15, 0x30000

    and-int/2addr v15, v10

    if-nez v15, :cond_c

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/high16 v15, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v15, 0x10000

    :goto_6
    or-int v17, v17, v15

    :cond_c
    const/high16 v15, 0x180000

    and-int/2addr v15, v10

    if-nez v15, :cond_e

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/high16 v15, 0x100000

    goto :goto_7

    :cond_d
    const/high16 v15, 0x80000

    :goto_7
    or-int v17, v17, v15

    :cond_e
    const/high16 v15, 0xc00000

    and-int/2addr v15, v10

    if-nez v15, :cond_10

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    const/high16 v15, 0x800000

    goto :goto_8

    :cond_f
    const/high16 v15, 0x400000

    :goto_8
    or-int v17, v17, v15

    :cond_10
    const/high16 v15, 0x6000000

    and-int/2addr v15, v10

    if-nez v15, :cond_12

    move/from16 v15, p8

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v25

    if-eqz v25, :cond_11

    const/high16 v25, 0x4000000

    goto :goto_9

    :cond_11
    const/high16 v25, 0x2000000

    :goto_9
    or-int v17, v17, v25

    goto :goto_a

    :cond_12
    move/from16 v15, p8

    :goto_a
    const/high16 v25, 0x30000000

    and-int v25, p15, v25

    move-object/from16 v10, p9

    if-nez v25, :cond_14

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    const/high16 v27, 0x20000000

    goto :goto_b

    :cond_13
    const/high16 v27, 0x10000000

    :goto_b
    or-int v17, v17, v27

    :cond_14
    and-int/lit8 v27, v12, 0x6

    if-nez v27, :cond_17

    and-int/lit8 v27, v12, 0x8

    if-nez v27, :cond_15

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v27

    goto :goto_c

    :cond_15
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    :goto_c
    if-eqz v27, :cond_16

    const/16 v27, 0x4

    goto :goto_d

    :cond_16
    const/16 v27, 0x2

    :goto_d
    or-int v27, v12, v27

    goto :goto_e

    :cond_17
    move/from16 v27, v12

    :goto_e
    and-int/lit8 v28, v12, 0x30

    if-nez v28, :cond_19

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_18

    move/from16 v19, v20

    :cond_18
    or-int v27, v27, v19

    :cond_19
    and-int/lit16 v10, v12, 0x180

    if-nez v10, :cond_1b

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    move/from16 v21, v22

    :cond_1a
    or-int v27, v27, v21

    :cond_1b
    and-int/lit16 v10, v12, 0xc00

    if-nez v10, :cond_1d

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/16 v23, 0x800

    :cond_1c
    or-int v27, v27, v23

    :cond_1d
    move/from16 v10, v27

    const v19, 0x12492493

    and-int v9, v17, v19

    const v12, 0x12492492

    if-ne v9, v12, :cond_1f

    and-int/lit16 v9, v10, 0x493

    const/16 v12, 0x492

    if-eq v9, v12, :cond_1e

    goto :goto_f

    :cond_1e
    const/4 v9, 0x0

    goto :goto_10

    :cond_1f
    :goto_f
    const/4 v9, 0x1

    :goto_10
    and-int/lit8 v12, v17, 0x1

    invoke-virtual {v14, v12, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_57

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v14}, Landroidx/compose/material3/internal/TextFieldImplKt;->e(Landroidx/compose/runtime/Composer;)F

    move-result v9

    const/high16 v12, 0xe000000

    and-int v12, v17, v12

    const/high16 v15, 0x4000000

    if-ne v12, v15, :cond_20

    const/4 v12, 0x1

    goto :goto_11

    :cond_20
    const/4 v12, 0x0

    :goto_11
    const/high16 v15, 0x70000000

    and-int v15, v17, v15

    move/from16 v21, v12

    const/high16 v12, 0x20000000

    if-ne v15, v12, :cond_21

    const/4 v12, 0x1

    goto :goto_12

    :cond_21
    const/4 v12, 0x0

    :goto_12
    or-int v12, v21, v12

    and-int/lit8 v15, v10, 0xe

    move/from16 v21, v12

    const/4 v12, 0x4

    if-eq v15, v12, :cond_23

    and-int/lit8 v22, v10, 0x8

    if-eqz v22, :cond_22

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_22

    goto :goto_13

    :cond_22
    const/16 v22, 0x0

    goto :goto_14

    :cond_23
    :goto_13
    const/16 v22, 0x1

    :goto_14
    or-int v21, v21, v22

    and-int/lit16 v12, v10, 0x1c00

    move/from16 v22, v10

    const/16 v10, 0x800

    if-ne v12, v10, :cond_24

    const/4 v10, 0x1

    goto :goto_15

    :cond_24
    const/4 v10, 0x0

    :goto_15
    or-int v10, v21, v10

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v12

    or-int/2addr v10, v12

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    move/from16 v21, v15

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v10, :cond_25

    if-ne v12, v15, :cond_26

    :cond_25
    move-object v10, v14

    move v14, v9

    goto :goto_16

    :cond_26
    move-object v2, v14

    move-object/from16 v18, v15

    move-object/from16 v3, v16

    const/4 v4, 0x0

    move-object/from16 v16, p0

    goto :goto_17

    :goto_16
    new-instance v9, Landroidx/compose/material3/TextFieldMeasurePolicy;

    move-object v12, v15

    const/4 v15, 0x0

    move-object v2, v10

    move-object/from16 v18, v12

    move-object/from16 v3, v16

    const/4 v4, 0x0

    move-object/from16 v16, p0

    move/from16 v10, p8

    move-object v12, v11

    move-object/from16 v11, p9

    invoke-direct/range {v9 .. v15}, Landroidx/compose/material3/TextFieldMeasurePolicy;-><init>(ZLandroidx/compose/material3/TextFieldLabelPosition;Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/foundation/layout/PaddingValues;FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v12, v9

    :goto_17
    check-cast v12, Landroidx/compose/material3/TextFieldMeasurePolicy;

    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->G()I

    move-result v10

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v2, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move-object/from16 v24, v0

    if-eqz v16, :cond_56

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    const/16 p0, 0x0

    iget-boolean v0, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_27

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_18

    :cond_27
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_18
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v12, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v14, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    iget-boolean v11, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v11, :cond_28

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_29

    :cond_28
    invoke-static {v10, v2, v10, v14}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_29
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v15, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v10, v22, 0x3

    and-int/lit8 v10, v10, 0xe

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_2e

    const v10, -0x5623b6a6

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v11, "Leading"

    invoke-static {v10, v11}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v11, Landroidx/compose/material3/InteractiveComponentSizeKt;->a:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    sget-object v11, Landroidx/compose/material3/MinimumInteractiveModifier;->b:Landroidx/compose/material3/MinimumInteractiveModifier;

    invoke-interface {v10, v11}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    const/4 v15, 0x0

    invoke-static {v11, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->G()I

    move-result v15

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    invoke-static {v2, v10}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    if-eqz v16, :cond_2d

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v7, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_2a

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_19

    :cond_2a
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_19
    invoke-static {v2, v11, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v1, :cond_2b

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    :cond_2b
    invoke-static {v15, v2, v15, v14}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_2c
    invoke-static {v2, v10, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v1, v17, 0xc

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :cond_2d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p0

    :cond_2e
    const/4 v15, 0x0

    const v1, -0x561ff5a6

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1a
    if-eqz v6, :cond_33

    const v1, -0x561f4ec8

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v7, "Trailing"

    invoke-static {v1, v7}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v7, Landroidx/compose/material3/InteractiveComponentSizeKt;->a:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    sget-object v7, Landroidx/compose/material3/MinimumInteractiveModifier;->b:Landroidx/compose/material3/MinimumInteractiveModifier;

    invoke-interface {v1, v7}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    const/4 v15, 0x0

    invoke-static {v7, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->G()I

    move-result v10

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v2, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v16, :cond_32

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_2f

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1b

    :cond_2f
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1b
    invoke-static {v2, v7, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v11, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v7, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v7, :cond_30

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_31

    :cond_30
    invoke-static {v10, v2, v10, v14}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_31
    invoke-static {v2, v1, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v1, v17, 0xf

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1c

    :cond_32
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p0

    :cond_33
    const/4 v15, 0x0

    const v1, -0x561b8646

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1c
    invoke-static {v13, v9}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    invoke-static {v13, v9}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v7

    invoke-static {v2}, Landroidx/compose/material3/internal/TextFieldImplKt;->f(Landroidx/compose/runtime/Composer;)F

    move-result v9

    const/4 v10, 0x0

    if-eqz v5, :cond_34

    sub-float/2addr v1, v9

    sget-object v11, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    cmpg-float v11, v1, v10

    if-gez v11, :cond_34

    move v1, v10

    :cond_34
    move/from16 v26, v1

    if-eqz v6, :cond_35

    sub-float/2addr v7, v9

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    cmpg-float v1, v7, v10

    if-gez v1, :cond_35

    move v7, v10

    :cond_35
    const/4 v1, 0x3

    if-eqz p6, :cond_3a

    const v9, -0x560fad7b

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v11, "Prefix"

    invoke-static {v9, v11}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget v11, Landroidx/compose/material3/internal/TextFieldImplKt;->f:F

    const/4 v15, 0x2

    invoke-static {v9, v11, v10, v15}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    move-object/from16 v11, p0

    invoke-static {v9, v11, v1}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v25

    sget v28, Landroidx/compose/material3/internal/TextFieldImplKt;->e:F

    const/16 v29, 0x0

    const/16 v30, 0xa

    const/16 v27, 0x0

    invoke-static/range {v25 .. v30}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v11, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v15, 0x0

    invoke-static {v11, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->G()I

    move-result v15

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    invoke-static {v2, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    if-eqz v16, :cond_39

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_36

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1d

    :cond_36
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1d
    invoke-static {v2, v11, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v1, :cond_37

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    :cond_37
    invoke-static {v15, v2, v15, v14}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_38
    invoke-static {v2, v9, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v1, v17, 0x12

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v9, p6

    invoke-interface {v9, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1e

    :cond_39
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v11, 0x0

    throw v11

    :cond_3a
    move-object/from16 v9, p6

    const/4 v15, 0x0

    const v1, -0x560aad66

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1e
    if-eqz p7, :cond_3f

    const v1, -0x560a0479

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v10, "Suffix"

    invoke-static {v1, v10}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget v10, Landroidx/compose/material3/internal/TextFieldImplKt;->f:F

    const/4 v11, 0x0

    const/4 v15, 0x2

    invoke-static {v1, v10, v11, v15}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static {v1, v11, v10}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v27

    sget v28, Landroidx/compose/material3/internal/TextFieldImplKt;->e:F

    const/16 v31, 0x0

    const/16 v32, 0xa

    const/16 v29, 0x0

    move/from16 v30, v7

    invoke-static/range {v27 .. v32}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move/from16 v28, v30

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v15, 0x0

    invoke-static {v7, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->G()I

    move-result v10

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v2, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v16, :cond_3e

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_3b

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1f

    :cond_3b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1f
    invoke-static {v2, v7, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v11, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v7, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v7, :cond_3c

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3d

    :cond_3c
    invoke-static {v10, v2, v10, v14}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_3d
    invoke-static {v2, v1, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v1, v17, 0x15

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v7, p7

    invoke-interface {v7, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_20

    :cond_3e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v11, 0x0

    throw v11

    :cond_3f
    move/from16 v28, v7

    const/4 v15, 0x0

    move-object/from16 v7, p7

    const v1, -0x56050be6

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_20
    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/16 v29, 0x0

    const/16 v30, 0xa

    const/16 v27, 0x0

    move-object/from16 v25, v1

    invoke-static/range {v25 .. v30}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz p2, :cond_49

    const v10, -0x55fd6b81

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v11, "Label"

    invoke-static {v10, v11}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    move/from16 v11, v21

    const/4 v15, 0x4

    if-eq v11, v15, :cond_42

    and-int/lit8 v11, v22, 0x8

    if-eqz v11, :cond_40

    move-object/from16 v11, p10

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_41

    goto :goto_21

    :cond_40
    move-object/from16 v11, p10

    :cond_41
    const/4 v15, 0x0

    goto :goto_22

    :cond_42
    move-object/from16 v11, p10

    :goto_21
    const/4 v15, 0x1

    :goto_22
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v15, :cond_43

    move-object/from16 v15, v18

    if-ne v5, v15, :cond_44

    :cond_43
    new-instance v5, Lbk0;

    const/4 v15, 0x1

    invoke-direct {v5, v11, v15}, Lbk0;-><init>(Landroidx/compose/material3/internal/FloatProducer;I)V

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_44
    check-cast v5, Lkotlin/jvm/functions/Function0;

    new-instance v15, Lkv0;

    const/4 v6, 0x5

    invoke-direct {v15, v5, v6}, Lkv0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-static {v10, v15}, Landroidx/compose/ui/layout/LayoutModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v10, 0x3

    invoke-static {v5, v6, v10}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-interface {v5, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v15, 0x0

    invoke-static {v5, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->G()I

    move-result v6

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v2, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v16, :cond_48

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_45

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_23

    :cond_45
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_23
    invoke-static {v2, v5, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v10, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v5, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v5, :cond_46

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    :cond_46
    invoke-static {v6, v2, v6, v14}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_47
    invoke-static {v2, v1, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v1, v17, 0x6

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v5, p2

    invoke-interface {v5, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v6, 0x0

    goto :goto_24

    :cond_48
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v6, 0x0

    throw v6

    :cond_49
    move-object/from16 v5, p2

    move-object/from16 v11, p10

    const/4 v6, 0x0

    const/4 v15, 0x0

    const v1, -0x55f764a6

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_24
    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget v10, Landroidx/compose/material3/internal/TextFieldImplKt;->f:F

    const/4 v5, 0x0

    const/4 v15, 0x2

    invoke-static {v1, v10, v5, v15}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v10, 0x3

    invoke-static {v1, v6, v10}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v34

    if-nez v9, :cond_4a

    move/from16 v35, v26

    goto :goto_25

    :cond_4a
    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v35, 0x0

    :goto_25
    if-nez v7, :cond_4b

    move/from16 v37, v28

    goto :goto_26

    :cond_4b
    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v37, 0x0

    :goto_26
    const/16 v38, 0x0

    const/16 v39, 0xa

    const/16 v36, 0x0

    invoke-static/range {v34 .. v39}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz p3, :cond_4c

    const v5, -0x55f1bf65

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v6, "Hint"

    invoke-static {v5, v6}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-interface {v5, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    shr-int/lit8 v6, v17, 0x6

    and-int/lit8 v6, v6, 0x70

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v10, p3

    invoke-interface {v10, v5, v2, v6}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_27

    :cond_4c
    move-object/from16 v10, p3

    const/4 v15, 0x0

    const v5, -0x55f05ac6

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_27
    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v6, "TextField"

    invoke-static {v5, v6}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-interface {v5, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v15, 0x1

    invoke-static {v5, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->G()I

    move-result v15

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v2, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v16, :cond_55

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_4d

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_28

    :cond_4d
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_28
    invoke-static {v2, v6, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v7, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v6, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v6, :cond_4e

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f

    :cond_4e
    invoke-static {v15, v2, v15, v14}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_4f
    invoke-static {v2, v1, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/16 v33, 0x3

    shr-int/lit8 v1, v17, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v6, p1

    invoke-interface {v6, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v9, p12

    if-eqz v9, :cond_54

    const v1, -0x55ec8f7b

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v3, "Supporting"

    invoke-static {v1, v3}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget v3, Landroidx/compose/material3/internal/TextFieldImplKt;->h:F

    const/4 v7, 0x0

    const/4 v15, 0x2

    invoke-static {v1, v3, v7, v15}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v3, 0x3

    const/4 v7, 0x0

    invoke-static {v1, v7, v3}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget v3, Landroidx/compose/material3/TextFieldDefaults;->a:I

    invoke-static {}, Landroidx/compose/material3/TextFieldDefaults;->a()Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v15, 0x0

    invoke-static {v5, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->G()I

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v2, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v16, :cond_53

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_50

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_29

    :cond_50
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_29
    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v7, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v0, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v0, :cond_51

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    :cond_51
    invoke-static {v5, v2, v5, v14}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_52
    invoke-static {v2, v1, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v22, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2a

    :cond_53
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v7, 0x0

    throw v7

    :cond_54
    const/4 v1, 0x1

    const/4 v15, 0x0

    const v0, -0x55e69f26

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2a
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2b

    :cond_55
    const/4 v7, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v7

    :cond_56
    const/4 v7, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v7

    :cond_57
    move-object/from16 v9, p12

    move-object/from16 v24, v0

    move-object v6, v2

    move-object v10, v4

    move-object v2, v14

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_58

    move-object v1, v0

    new-instance v0, La31;

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v12, p11

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v40, v1

    move-object v2, v6

    move-object v4, v10

    move-object v14, v13

    move-object/from16 v1, v24

    move-object/from16 v6, p5

    move-object/from16 v10, p9

    move-object v13, v9

    move/from16 v9, p8

    invoke-direct/range {v0 .. v16}, La31;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;II)V

    move-object/from16 v1, v40

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_58
    return-void
.end method
