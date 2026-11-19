.class public abstract Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideTrackListKt;
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
.method public static final a(ZZZJJJFFLandroidx/compose/runtime/Composer;I)V
    .locals 23

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    const v0, 0x584d0ca0

    move-object/from16 v12, p11

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    iget-object v12, v0, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x4

    goto :goto_0

    :cond_0
    const/4 v13, 0x2

    :goto_0
    or-int v13, p12, v13

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v15

    if-eqz v15, :cond_1

    const/16 v15, 0x20

    goto :goto_1

    :cond_1
    const/16 v15, 0x10

    :goto_1
    or-int/2addr v13, v15

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v15, 0x100

    goto :goto_2

    :cond_2
    const/16 v15, 0x80

    :goto_2
    or-int/2addr v13, v15

    invoke-virtual {v0, v4, v5}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v15

    if-eqz v15, :cond_3

    const/16 v15, 0x800

    goto :goto_3

    :cond_3
    const/16 v15, 0x400

    :goto_3
    or-int/2addr v13, v15

    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v15

    if-eqz v15, :cond_4

    const/16 v15, 0x4000

    goto :goto_4

    :cond_4
    const/16 v15, 0x2000

    :goto_4
    or-int/2addr v13, v15

    invoke-virtual {v0, v8, v9}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v15

    if-eqz v15, :cond_5

    const/high16 v15, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v15, 0x10000

    :goto_5
    or-int/2addr v13, v15

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v15

    if-eqz v15, :cond_6

    const/high16 v15, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v15, 0x80000

    :goto_6
    or-int/2addr v13, v15

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v15

    if-eqz v15, :cond_7

    const/high16 v15, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v15, 0x400000

    :goto_7
    or-int/2addr v13, v15

    const v15, 0x492493

    and-int/2addr v15, v13

    const v14, 0x492492

    const/16 v16, 0x1

    const/4 v1, 0x0

    if-eq v15, v14, :cond_8

    move/from16 v14, v16

    goto :goto_8

    :cond_8
    move v14, v1

    :goto_8
    and-int/lit8 v13, v13, 0x1

    invoke-virtual {v0, v13, v14}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v13

    if-eqz v13, :cond_e

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v13, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v14, "AudioGuideTimeline-ya7-Xgw"

    invoke-direct {v13, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v15

    iget v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/16 v21, 0x0

    const/16 v22, 0xb

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v13

    move/from16 v20, v15

    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-static {v13, v10}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v13

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v13, v15}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v13

    sget-object v17, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v15, v1}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    iget-wide v1, v0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v0, v13}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v19, v1

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v20, 0x0

    if-eqz v12, :cond_d

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v3, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v3, :cond_9

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_9
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v15, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v19, v12

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v13, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v13, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v13, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v8, v13}, Landroidx/compose/foundation/layout/BoxScopeInstance;->j(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v4, 0x0

    invoke-static {v9, v13, v0, v4}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v5

    iget-wide v6, v0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v0, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-eqz v19, :cond_c

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v8, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_a

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_a
    invoke-static {v0, v5, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v6, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v0, v10, v0, v2}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v7, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    move/from16 v4, v16

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1, v3, v4}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v11}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    xor-int/lit8 v3, p0, 0x1

    new-instance v4, Lg;

    move-wide/from16 v6, p5

    const/4 v5, 0x2

    invoke-direct {v4, v6, v7, v5}, Lg;-><init>(JI)V

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v0, v5}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-virtual {v2, v1, v3}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    invoke-virtual {v2, v1, v4, v8}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v11}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    xor-int/lit8 v4, p1, 0x1

    new-instance v9, Lg;

    const/4 v10, 0x3

    invoke-direct {v9, v6, v7, v10}, Lg;-><init>(JI)V

    invoke-static {v1, v4, v9, v0, v5}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->i:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz p2, :cond_b

    const v2, -0x5badc2a7

    invoke-static {v0, v2, v5, v14}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-wide/from16 v8, p3

    invoke-static {v2, v8, v9, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-wide/from16 v12, p7

    goto :goto_b

    :cond_b
    move-wide/from16 v8, p3

    const v2, -0x5bac0b53

    invoke-static {v0, v2, v14}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-wide/from16 v12, p7

    invoke-static {v2, v12, v13, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->c:F

    invoke-static {v2, v4, v8, v9, v3}, Landroidx/compose/foundation/BorderKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_b
    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :cond_c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v20

    :cond_d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v20

    :cond_e
    move-wide v12, v8

    move-wide v8, v4

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_f

    new-instance v0, Lfb;

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v10, p9

    move-wide v4, v8

    move-wide v8, v12

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lfb;-><init>(ZZZJJJFFI)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x29620967

    move-object/from16 v3, p4

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    iget-object v0, v10, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p5, v3

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v3, v6

    move/from16 v6, p2

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x100

    goto :goto_2

    :cond_2
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v3, v8

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x800

    goto :goto_3

    :cond_3
    const/16 v8, 0x400

    :goto_3
    or-int/2addr v3, v8

    and-int/lit16 v8, v3, 0x493

    const/16 v11, 0x492

    if-eq v8, v11, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    and-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_1a

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->d:F

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    iget-object v14, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->f:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    iget-object v15, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->m:Ljava/util/List;

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->l:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;

    invoke-static {v14, v10}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideExtKt;->a(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    move-result-object v14

    move/from16 v16, v11

    const-string v11, "AudioGuideTrackList"

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v12}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v18

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v22, 0x0

    const/16 v23, 0x8

    move/from16 v20, v5

    move/from16 v19, v7

    move/from16 v21, v12

    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    const/16 v13, 0xd

    move-object/from16 v19, v15

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_5

    if-ne v12, v15, :cond_6

    :cond_5
    new-instance v12, Lc1;

    invoke-direct {v12, v1, v13}, Lc1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x0

    invoke-static {v5, v7, v12}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v18, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v12, v13, v10, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v12

    iget-wide v6, v10, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v10, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v28, 0x0

    if-eqz v0, :cond_19

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v29, v0

    iget-boolean v0, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_7

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_5
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v12, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v7, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move/from16 v21, v8

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v5, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move/from16 v30, v3

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v1, 0x30

    invoke-static {v3, v5, v10, v1}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v1

    iget-wide v2, v10, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v10, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v29, :cond_18

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v5, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_8

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_6
    invoke-static {v10, v1, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v3, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v10, v7, v10, v6}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "audioGuide_totalTracks_text"

    invoke-static {v10, v4, v8, v11, v0}, Ln00;->f(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_9

    new-instance v1, Lu5;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lu5;-><init>(I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x0

    invoke-static {v0, v7, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    iget-object v5, v9, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;->a:Ljava/lang/String;

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    move/from16 v18, v7

    iget-wide v7, v14, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->b:J

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v26, 0x0

    const v27, 0x1fff8

    move-object v2, v9

    move-object/from16 v24, v10

    const/4 v3, 0x2

    const-wide/16 v9, 0x0

    move-object v4, v11

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v20, v14

    const/4 v14, 0x0

    move-object/from16 v22, v15

    const/4 v15, 0x0

    move/from16 v23, v16

    const/16 v31, 0x1

    const-wide/16 v16, 0x0

    move/from16 v32, v18

    const/16 v18, 0x0

    move-object/from16 v33, v19

    const/16 v19, 0x0

    move-object/from16 v34, v20

    const/16 v20, 0x0

    move/from16 v35, v21

    const/16 v21, 0x0

    move-object/from16 v36, v22

    const/16 v22, 0x0

    const/16 v37, 0x10

    const/16 v25, 0x0

    move/from16 v1, v23

    move-object/from16 v23, v0

    move v0, v3

    move-object v3, v2

    move v2, v1

    move-object v1, v4

    move-object/from16 v4, v34

    move-object/from16 v39, v36

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v10, v24

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v0}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->h:F

    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->b:I

    const/4 v5, 0x0

    invoke-static {v0, v10, v5}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    iget-wide v8, v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->b:J

    const/16 v11, 0x38

    const/4 v12, 0x0

    const/4 v6, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v12}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    const-string v0, "audioGuide_totalDuration_text"

    invoke-static {v1, v0}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;->b:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    iget-wide v7, v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->b:J

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v23, v0

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v10, v24

    const/4 v0, 0x1

    invoke-static {v10, v0, v1}, Lo60;->f(Landroidx/compose/runtime/GapComposer;ZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v10, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const v0, -0x3cdffaa8

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v15, v33

    check-cast v15, Ljava/lang/Iterable;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v18, v3, 0x1

    if-ltz v3, :cond_16

    move-object v11, v5

    check-cast v11, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    if-lez v3, :cond_a

    const v5, -0x5a4369e2

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-wide v7, v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->d:J

    move-object/from16 v24, v10

    const/4 v10, 0x0

    move v5, v2

    move-object/from16 v9, v24

    move/from16 v6, v35

    invoke-static/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideTrackListKt;->c(FFJLandroidx/compose/runtime/Composer;I)V

    move v14, v5

    move-object v10, v9

    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_8
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_a
    move v14, v2

    const/4 v7, 0x0

    const v2, -0x5a3fbf68

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :goto_9
    invoke-static {v1, v2}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/foundation/layout/IntrinsicSize;->Min:Landroidx/compose/foundation/layout/IntrinsicSize;

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/IntrinsicKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/IntrinsicSize;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v8, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v6, v8, v10, v7}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-wide v7, v10, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v10, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v29, :cond_15

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_b

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_a
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v6, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-nez v3, :cond_c

    const/4 v5, 0x1

    goto :goto_b

    :cond_c
    const/4 v5, 0x0

    :goto_b
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v6

    const/16 v31, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_d

    const/4 v6, 0x1

    goto :goto_c

    :cond_d
    const/4 v6, 0x0

    :goto_c
    iget-object v7, v11, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    move-object/from16 v8, p1

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, v11, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->g:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;->DONE:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;

    if-ne v7, v9, :cond_e

    goto :goto_d

    :cond_e
    const/4 v7, 0x0

    goto :goto_e

    :cond_f
    :goto_d
    const/4 v7, 0x1

    :goto_e
    iget-wide v8, v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->a:J

    move-object/from16 v24, v10

    move-object v12, v11

    iget-wide v10, v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->d:J

    move-object/from16 v13, p0

    move/from16 p4, v3

    iget-wide v2, v13, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->e:J

    const/16 v17, 0x0

    move-wide v15, v2

    move-object v3, v12

    move-wide v12, v15

    move-object/from16 v2, p1

    move-object/from16 v16, v24

    move/from16 v15, v35

    invoke-static/range {v5 .. v17}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideTrackListKt;->a(ZZZJJJFFLandroidx/compose/runtime/Composer;I)V

    move-object/from16 v10, v16

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move/from16 v6, p4

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v7

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v13, v39

    if-nez v7, :cond_11

    if-ne v8, v13, :cond_10

    goto :goto_f

    :cond_10
    const/4 v7, 0x0

    goto :goto_10

    :cond_11
    :goto_f
    new-instance v8, Lhb;

    const/4 v7, 0x0

    invoke-direct {v8, v6, v7}, Lhb;-><init>(II)V

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_10
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v7, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    move/from16 v15, v30

    and-int/lit16 v6, v15, 0x1c00

    const/16 v8, 0x800

    if-ne v6, v8, :cond_12

    const/4 v12, 0x1

    goto :goto_11

    :cond_12
    const/4 v12, 0x0

    :goto_11
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v6, v12

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_14

    if-ne v9, v13, :cond_13

    goto :goto_12

    :cond_13
    move-object/from16 v6, p3

    const/16 v11, 0x10

    goto :goto_13

    :cond_14
    :goto_12
    new-instance v9, Ll0;

    move-object/from16 v6, p3

    const/16 v11, 0x10

    invoke-direct {v9, v6, v3, v11}, Ll0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_13
    check-cast v9, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v12, v15, 0x3

    and-int/lit16 v12, v12, 0x1c00

    move-object v6, v3

    move/from16 v38, v8

    move/from16 v37, v11

    move/from16 v8, p2

    move-object v11, v10

    move-object v10, v9

    move-object v9, v4

    invoke-static/range {v5 .. v12}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideTrackItemKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;ZZLcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v34, v9

    move-object v10, v11

    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v39, v13

    move v2, v14

    move/from16 v30, v15

    move/from16 v3, v18

    move-object/from16 v4, v34

    goto/16 :goto_7

    :cond_15
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v28

    :cond_16
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v28

    :cond_17
    move-object/from16 v2, p1

    const/4 v3, 0x1

    const/4 v7, 0x0

    invoke-static {v10, v7, v1}, Lo60;->f(Landroidx/compose/runtime/GapComposer;ZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    invoke-static {v0, v1, v10, v3}, Lcj;->x(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;FLandroidx/compose/runtime/GapComposer;Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_14

    :cond_18
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v28

    :cond_19
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v28

    :cond_1a
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_14
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_1b

    new-instance v0, Li4;

    const/4 v6, 0x4

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Li4;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLkotlin/Function;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method

.method public static final c(FFJLandroidx/compose/runtime/Composer;I)V
    .locals 17

    move/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    const v0, -0x5be03630

    move-object/from16 v5, p4

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int v6, p5, v6

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x20

    goto :goto_1

    :cond_1
    const/16 v7, 0x10

    :goto_1
    or-int/2addr v6, v7

    invoke-virtual {v0, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x100

    goto :goto_2

    :cond_2
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v6, v7

    and-int/lit16 v7, v6, 0x93

    const/16 v8, 0x92

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v7, v8, :cond_3

    move v7, v10

    goto :goto_3

    :cond_3
    move v7, v9

    :goto_3
    and-int/2addr v6, v10

    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v6, "SpacerRowWithTimeline-pOWnNvE"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v8, v11}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v12, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v11, v12, v0, v9}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v11

    iget-wide v12, v0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v0, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->B()V

    const/16 p4, 0x0

    iget-boolean v15, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_4

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_4
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v11, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v13, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v12, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v12}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v8, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v8, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v1}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v7, v9}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    move-object/from16 v16, v10

    iget-wide v9, v0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v0, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v5, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_5

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_5
    invoke-static {v0, v7, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v10, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9, v0, v13, v0, v12}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v5, v16

    invoke-static {v0, v8, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v2}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v5, v3, v4, v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_6
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p4

    :cond_7
    const/16 p4, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p4

    :cond_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_9

    new-instance v0, Lgb;

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lgb;-><init>(FFJI)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method
