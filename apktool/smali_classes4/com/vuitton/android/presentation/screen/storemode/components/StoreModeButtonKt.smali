.class public abstract Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeButtonKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;JLjava/lang/String;Ljava/lang/String;ZZZZIILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "StoreModeButton-IStmHkI"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v3, v0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x30204ab

    move-object/from16 v2, p12

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    or-int v0, p13, v0

    or-int/lit8 v0, v0, 0x10

    move-object/from16 v10, p3

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_1

    :cond_2
    const/16 v5, 0x80

    :goto_1
    or-int/2addr v0, v5

    move-object/from16 v11, p4

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x800

    goto :goto_2

    :cond_3
    const/16 v5, 0x400

    :goto_2
    or-int/2addr v0, v5

    move/from16 v14, p5

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x4000

    goto :goto_3

    :cond_4
    const/16 v5, 0x2000

    :goto_3
    or-int/2addr v0, v5

    move/from16 v15, p6

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x20000

    goto :goto_4

    :cond_5
    const/high16 v5, 0x10000

    :goto_4
    or-int/2addr v0, v5

    move/from16 v12, p7

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    const/high16 v5, 0x100000

    goto :goto_5

    :cond_6
    const/high16 v5, 0x80000

    :goto_5
    or-int/2addr v0, v5

    move/from16 v13, p8

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_7

    const/high16 v5, 0x800000

    goto :goto_6

    :cond_7
    const/high16 v5, 0x400000

    :goto_6
    or-int/2addr v0, v5

    move-object/from16 v5, p11

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_7

    :cond_8
    move v2, v4

    :goto_7
    const v6, 0x12492493

    and-int/2addr v6, v0

    const v7, 0x12492492

    const/16 p0, 0x1

    const/4 v9, 0x0

    if-ne v6, v7, :cond_a

    and-int/lit8 v6, v2, 0x3

    if-eq v6, v4, :cond_9

    goto :goto_8

    :cond_9
    move v4, v9

    goto :goto_9

    :cond_a
    :goto_8
    move/from16 v4, p0

    :goto_9
    and-int/lit8 v0, v0, 0x1

    invoke-virtual {v8, v0, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, p13, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    move-wide/from16 v6, p1

    goto :goto_b

    :cond_c
    :goto_a
    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    const v0, 0x3e23d70a    # 0.16f

    invoke-static {v0, v6, v7}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v6

    :goto_b
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->D:F

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v4, v9}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    iget-wide v9, v8, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    move/from16 v18, v2

    invoke-static {v8, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v19, v3

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v5, v8, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v5, :cond_10

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v5, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_d

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_d
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_c
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v4, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v10, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v3, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->j(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v8, v6, v7}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v4

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_e

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v4, :cond_f

    :cond_e
    new-instance v5, Lav;

    invoke-direct {v5, v6, v7, v0}, Lav;-><init>(JF)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    invoke-static {v2, v5, v8, v4}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->j(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    move-wide v4, v6

    const-wide/16 v6, 0x0

    const/16 v9, 0xe

    move/from16 v2, p0

    invoke-static/range {v4 .. v9}, Landroidx/compose/material3/ButtonDefaults;->a(JJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ButtonColors;

    move-result-object v3

    move-wide/from16 v20, v4

    new-instance v9, Lj11;

    move-object/from16 v17, p3

    move-object/from16 v16, v11

    move v10, v12

    move v12, v13

    move/from16 v11, p9

    move/from16 v13, p10

    invoke-direct/range {v9 .. v17}, Lj11;-><init>(ZIZIZZLjava/lang/String;Ljava/lang/String;)V

    const v4, -0x7aa27e61

    invoke-static {v4, v9, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    const/high16 v4, 0x30030000

    and-int/lit8 v5, v18, 0xe

    or-int v13, v5, v4

    const/16 v14, 0x1c4

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p11

    move-object v7, v0

    move-object v5, v1

    move-object v12, v8

    move-object v8, v3

    invoke-static/range {v4 .. v14}, Landroidx/compose/material3/ButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v8, v12

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-wide/from16 v4, v20

    goto :goto_d

    :cond_10
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_11
    move-object/from16 v19, v3

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    move-wide/from16 v4, p1

    :goto_d
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance v2, Lk11;

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p13

    move-object/from16 v3, v19

    invoke-direct/range {v2 .. v15}, Lk11;-><init>(Landroidx/compose/ui/Modifier;JLjava/lang/String;Ljava/lang/String;ZZZZIILkotlin/jvm/functions/Function0;I)V

    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method
