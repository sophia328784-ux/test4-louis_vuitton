.class public abstract Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/BottomScrollIndicationKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;ZJFFLandroidx/compose/runtime/Composer;I)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v1, p4

    move/from16 v5, p5

    const-string v6, "BottomScrollIndication-T042LqI"

    if-eqz v0, :cond_0

    invoke-static {v0, v6}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v7, 0x27db481

    move-object/from16 v8, p6

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    iget-object v7, v11, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    or-int/lit8 v8, p7, 0x6

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x20

    goto :goto_0

    :cond_1
    const/16 v9, 0x10

    :goto_0
    or-int/2addr v8, v9

    invoke-virtual {v11, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x100

    goto :goto_1

    :cond_2
    const/16 v9, 0x80

    :goto_1
    or-int/2addr v8, v9

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v9

    const/16 v10, 0x800

    if-eqz v9, :cond_3

    move v9, v10

    goto :goto_2

    :cond_3
    const/16 v9, 0x400

    :goto_2
    or-int/2addr v8, v9

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x4000

    goto :goto_3

    :cond_4
    const/16 v9, 0x2000

    :goto_3
    or-int/2addr v8, v9

    and-int/lit16 v9, v8, 0x2493

    const/16 v12, 0x2492

    if-eq v9, v12, :cond_5

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    and-int/lit8 v12, v8, 0x1

    invoke-virtual {v11, v12, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_11

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v9, 0x7f1402f0

    invoke-static {v11, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    and-int/lit16 v12, v8, 0x1c00

    if-ne v12, v10, :cond_6

    const/4 v10, 0x1

    goto :goto_5

    :cond_6
    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    const/high16 v15, 0x3f800000    # 1.0f

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v10, :cond_7

    if-ne v12, v13, :cond_8

    :cond_7
    const/4 v10, 0x0

    invoke-static {v1, v10, v10, v5, v15}, Lcom/vuitton/android/presentation/utils/MathUtilsKt;->a(FFFFF)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v10

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-static {v3, v4, v14, v15}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v12

    if-eqz v12, :cond_9

    sget-object v12, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderStyle;->LIGHT_BACKGROUND:Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderStyle;

    :goto_6
    move-object/from16 v26, v12

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_9
    sget-object v12, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderStyle;->DARK_BACKGROUND:Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderStyle;

    goto :goto_6

    :goto_7
    invoke-static {v0, v12}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v14

    iget v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->m:F

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v15

    iget v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v12, v14, v15}, Landroidx/compose/foundation/layout/PaddingKt;->j(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v14, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    move-object/from16 p6, v0

    iget-wide v0, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    invoke-static {v11, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v17, 0x0

    if-eqz v7, :cond_10

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    move/from16 v18, v0

    iget-boolean v0, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_a

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_8
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v14, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v1, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v12, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-nez p1, :cond_d

    const v4, 0x14e65209

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    const/16 v13, 0x30

    invoke-static {v12, v4, v11, v13}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    iget-wide v12, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v11, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    if-eqz v7, :cond_c

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v7, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_b

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_9
    invoke-static {v11, v4, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v13, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12, v11, v2, v11, v1}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v11, v9, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/text/style/TextAlign;->e:I

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    const v2, 0x7f141015

    invoke-static {v11, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v13, v0}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    and-int/lit16 v0, v8, 0x380

    const/16 v24, 0x0

    const v25, 0x1fbfa

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move v2, v10

    move-object v12, v11

    const-wide/16 v10, 0x0

    move-object/from16 v22, v12

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v20, v19

    const/16 v19, 0x0

    move/from16 v21, v20

    const/16 v20, 0x0

    move/from16 v23, v0

    move-object/from16 v21, v1

    move-object v0, v6

    const/4 v1, 0x1

    move-wide/from16 v5, p2

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v12, v22

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v5, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v10, 0x0

    move-object/from16 v11, v22

    move-object/from16 v9, v26

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderStyle;ZLandroidx/compose/runtime/Composer;II)V

    move-object v12, v11

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v17

    :cond_d
    move-object v0, v6

    move-object v12, v11

    const/4 v1, 0x1

    const/4 v15, 0x0

    const v2, 0x14f05939    # 2.4268999E-26f

    invoke-static {v12, v2, v0}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_e

    if-ne v3, v13, :cond_f

    :cond_e
    new-instance v3, La4;

    const/16 v2, 0x13

    invoke-direct {v3, v9, v2}, La4;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v15, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const/4 v13, 0x0

    const/4 v14, 0x6

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v14}, Lcom/vuitton/android/presentation/compose/components/ProgressViewKt;->a(Landroidx/compose/ui/Modifier;JZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_a
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v1, p6

    goto :goto_b

    :cond_10
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v17

    :cond_11
    move-object v12, v11

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    :goto_b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_12

    new-instance v0, Lbh;

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lbh;-><init>(Landroidx/compose/ui/Modifier;ZJFFI)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method
