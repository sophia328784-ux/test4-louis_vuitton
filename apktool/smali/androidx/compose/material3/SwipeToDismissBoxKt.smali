.class public abstract Landroidx/compose/material3/SwipeToDismissBoxKt;
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
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x42fa0000    # 125.0f

    sput v0, Landroidx/compose/material3/SwipeToDismissBoxKt;->a:F

    return-void
.end method

.method public static final a(Landroidx/compose/material3/SwipeToDismissBoxState;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v4, p3

    move-object/from16 v7, p6

    move/from16 v8, p8

    iget-object v3, v1, Landroidx/compose/material3/SwipeToDismissBoxState;->a:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    const-string v5, "SwipeToDismissBox"

    if-eqz v0, :cond_0

    invoke-static {v0, v5}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v6, -0x2c325226

    move-object/from16 v9, p7

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    iget-object v6, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v9, v8, 0x6

    if-nez v9, :cond_2

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    :goto_0
    or-int/2addr v9, v8

    goto :goto_1

    :cond_2
    move v9, v8

    :goto_1
    and-int/lit8 v10, v8, 0x30

    if-nez v10, :cond_4

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x20

    goto :goto_2

    :cond_3
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v9, v10

    :cond_4
    and-int/lit16 v10, v8, 0x180

    if-nez v10, :cond_6

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x100

    goto :goto_3

    :cond_5
    const/16 v10, 0x80

    :goto_3
    or-int/2addr v9, v10

    :cond_6
    and-int/lit16 v10, v8, 0xc00

    const/4 v15, 0x1

    if-nez v10, :cond_8

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x800

    goto :goto_4

    :cond_7
    const/16 v10, 0x400

    :goto_4
    or-int/2addr v9, v10

    :cond_8
    and-int/lit16 v10, v8, 0x6000

    if-nez v10, :cond_a

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x4000

    goto :goto_5

    :cond_9
    const/16 v10, 0x2000

    :goto_5
    or-int/2addr v9, v10

    :cond_a
    const/high16 v10, 0x1b0000

    or-int/2addr v9, v10

    const/high16 v10, 0xc00000

    and-int/2addr v10, v8

    if-nez v10, :cond_c

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/high16 v10, 0x800000

    goto :goto_6

    :cond_b
    const/high16 v10, 0x400000

    :goto_6
    or-int/2addr v9, v10

    :cond_c
    const v10, 0x492493

    and-int/2addr v10, v9

    const v14, 0x492492

    if-eq v10, v14, :cond_d

    const/4 v10, 0x1

    goto :goto_7

    :cond_d
    const/4 v10, 0x0

    :goto_7
    and-int/lit8 v14, v9, 0x1

    invoke-virtual {v12, v14, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v10, v14, :cond_e

    new-instance v10, Ll01;

    const/16 v11, 0x16

    invoke-direct {v10, v11}, Ll01;-><init>(I)V

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v10, Lkotlin/jvm/functions/Function1;

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v11, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v13, v3, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->h:Landroidx/compose/runtime/MutableState;

    check-cast v13, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v13}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/material3/SwipeToDismissBoxValue;

    sget-object v15, Landroidx/compose/material3/SwipeToDismissBoxValue;->Settled:Landroidx/compose/material3/SwipeToDismissBoxValue;

    if-ne v13, v15, :cond_f

    const/4 v15, 0x1

    goto :goto_8

    :cond_f
    const/4 v15, 0x0

    :goto_8
    iget-object v13, v1, Landroidx/compose/material3/SwipeToDismissBoxState;->b:Lkotlin/jvm/functions/Function1;

    move-object/from16 p4, v11

    const/4 v11, 0x0

    if-eqz v13, :cond_11

    const v13, 0x171a04b1

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v13, Landroidx/compose/foundation/gestures/AnchoredDraggableDefaults;->a:Landroidx/compose/animation/core/TweenSpec;

    move v13, v9

    iget-object v9, v1, Landroidx/compose/material3/SwipeToDismissBoxState;->a:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    move-object/from16 v16, v10

    iget-object v10, v1, Landroidx/compose/material3/SwipeToDismissBoxState;->b:Lkotlin/jvm/functions/Function1;

    if-eqz v10, :cond_10

    sget v17, Landroidx/compose/foundation/gestures/AnchoredDraggableDefaults;->d:I

    shl-int/lit8 v17, v17, 0x9

    move-object/from16 v18, v14

    const/4 v14, 0x4

    move-object/from16 v19, v11

    const/4 v11, 0x0

    move-object/from16 v8, p4

    move-object/from16 v20, v6

    move v6, v13

    move/from16 v13, v17

    move-object/from16 v21, v18

    const/16 v7, 0x800

    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/gestures/AnchoredDraggableDefaults;->a(Landroidx/compose/foundation/gestures/AnchoredDraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/TweenSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    move-result-object v11

    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :cond_10
    move-object/from16 v19, v11

    const-string v0, "positionalThreshold"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v19

    :cond_11
    move-object/from16 v8, p4

    move-object/from16 v20, v6

    move v6, v9

    move-object/from16 v16, v10

    move-object/from16 v19, v11

    move-object/from16 v21, v14

    const/16 v7, 0x800

    const/4 v9, 0x0

    const v10, -0x33d65a5d    # -4.4471948E7f

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_9
    invoke-static {v0, v3, v8, v15, v11}, Landroidx/compose/foundation/gestures/AnchoredDraggableKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/TargetedFlingBehavior;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->G()I

    move-result v11

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v12, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v20, :cond_24

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_12

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_12
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_a
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v10, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v13, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    iget-boolean v7, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v7, :cond_13

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v17, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_b

    :cond_13
    move-object/from16 v17, v0

    :goto_b
    invoke-static {v11, v12, v11, v13}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_14
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v9, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v9, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v9, v7}, Landroidx/compose/foundation/layout/BoxScopeInstance;->j(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    shl-int/lit8 v9, v6, 0x6

    and-int/lit16 v9, v9, 0x1c00

    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    move/from16 v18, v9

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    move-object/from16 v22, v3

    move-object/from16 p4, v8

    const/4 v3, 0x0

    invoke-static {v11, v9, v12, v3}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v8

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->G()I

    move-result v3

    move-object/from16 p5, v9

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v12, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-eqz v20, :cond_23

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v23, v11

    iget-boolean v11, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_15

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_15
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_c
    invoke-static {v12, v8, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12, v9, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v8, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v8, :cond_16

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    :cond_16
    invoke-static {v3, v12, v3, v13}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_17
    invoke-static {v12, v7, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v3, v18, 0x6

    and-int/lit8 v3, v3, 0x70

    or-int/lit8 v3, v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v7, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-interface {v2, v7, v12, v3}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    and-int/lit16 v5, v6, 0x1c00

    const/16 v8, 0x800

    if-ne v5, v8, :cond_18

    const/4 v9, 0x1

    goto :goto_d

    :cond_18
    const/4 v9, 0x0

    :goto_d
    const v5, 0xe000

    and-int/2addr v5, v6

    const/16 v8, 0x4000

    if-ne v5, v8, :cond_19

    const/4 v5, 0x1

    goto :goto_e

    :cond_19
    const/4 v5, 0x0

    :goto_e
    or-int/2addr v5, v9

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_1a

    move-object/from16 v5, v21

    if-ne v8, v5, :cond_1b

    goto :goto_f

    :cond_1a
    move-object/from16 v5, v21

    :goto_f
    new-instance v8, Lz3;

    const/16 v9, 0xd

    invoke-direct {v8, v1, v4, v9}, Lz3;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object/from16 v11, p4

    move-object/from16 v9, v22

    invoke-static {v3, v9, v11, v8}, Landroidx/compose/material3/internal/DraggableAnchorsKt;->a(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;Landroidx/compose/foundation/gestures/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    shr-int/lit8 v8, v6, 0xc

    and-int/lit16 v8, v8, 0x1c00

    move-object/from16 v2, p5

    move-object/from16 v11, v23

    const/4 v4, 0x0

    invoke-static {v11, v2, v12, v4}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->G()I

    move-result v11

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v12, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v20, :cond_22

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    move/from16 p4, v6

    iget-boolean v6, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_1c

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_1c
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_10
    invoke-static {v12, v2, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12, v4, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v2, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v2, :cond_1d

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1d
    invoke-static {v11, v12, v11, v13}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_1e
    invoke-static {v12, v3, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v8, 0x6

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p6

    invoke-virtual {v2, v7, v12, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-object v0, v9, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->h:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/SwipeToDismissBoxValue;

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v4, 0x380000

    and-int v4, p4, v4

    const/high16 v6, 0x100000

    if-ne v4, v6, :cond_1f

    move v15, v11

    goto :goto_11

    :cond_1f
    const/4 v15, 0x0

    :goto_11
    or-int/2addr v3, v15

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_21

    if-ne v4, v5, :cond_20

    goto :goto_12

    :cond_20
    move-object/from16 v10, v16

    goto :goto_13

    :cond_21
    :goto_12
    new-instance v4, Landroidx/compose/material3/SwipeToDismissBoxKt$SwipeToDismissBox$3$1;

    move-object/from16 v10, v16

    move-object/from16 v3, v19

    invoke-direct {v4, v1, v10, v3}, Landroidx/compose/material3/SwipeToDismissBoxKt$SwipeToDismissBox$3$1;-><init>(Landroidx/compose/material3/SwipeToDismissBoxState;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_13
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v10, v4, v12}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    move-object v6, v10

    move v5, v11

    goto :goto_14

    :cond_22
    move-object/from16 v3, v19

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_23
    move-object/from16 v3, v19

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_24
    move-object/from16 v3, v19

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_25
    move-object/from16 v17, v0

    move-object v2, v7

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v5, p4

    move-object/from16 v6, p5

    :goto_14
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_26

    new-instance v0, Lzv;

    move/from16 v4, p3

    move/from16 v8, p8

    move-object v7, v2

    move-object/from16 v3, v17

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v8}, Lzv;-><init>(Landroidx/compose/material3/SwipeToDismissBoxState;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_26
    return-void
.end method
