.class public abstract Lcom/vuitton/android/presentation/screen/pdp/components/variations/VariationAvailabilityKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/components/variations/VariationAvailabilityIconOrientation;ZLandroidx/compose/runtime/Composer;I)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v3, p2

    const-string v1, "VariationAvailability"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, 0x801819d

    move-object/from16 v4, p3

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int v4, p4, v4

    const/16 v5, 0x30

    or-int/2addr v4, v5

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_1

    :cond_2
    const/16 v6, 0x80

    :goto_1
    or-int/2addr v4, v6

    and-int/lit16 v6, v4, 0x93

    const/16 v7, 0x92

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v6, v7, :cond_3

    move v6, v8

    goto :goto_2

    :cond_3
    move v6, v9

    :goto_2
    and-int/2addr v4, v8

    invoke-virtual {v2, v4, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/components/variations/VariationAvailabilityIconOrientation;->START:Lcom/vuitton/android/presentation/screen/pdp/components/variations/VariationAvailabilityIconOrientation;

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v7, v6, v2, v5}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v5

    iget-wide v6, v2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v2, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v12, v2, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v12, :cond_9

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_4

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_3
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v5, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v7, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v10, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v5, -0x2d5e73b7

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v13, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v14, 0x0

    const/16 v15, 0xb

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v3, :cond_5

    const v6, 0x7a68671e

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->e(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVColorDotIconConfigs;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/atoms/LVColorDotIconConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;

    :goto_4
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_5
    const v6, 0x7a686b9c

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->e(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVColorDotIconConfigs;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/atoms/LVColorDotIconConfigs;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;

    goto :goto_4

    :goto_5
    const/4 v7, 0x0

    invoke-static {v6, v5, v7, v2, v9}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVColorDotIconKt;->a(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/Composer;I)V

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-eqz v3, :cond_6

    const v5, 0x7f14105a

    goto :goto_6

    :cond_6
    const v5, 0x7f14105d

    :goto_6
    invoke-static {v2, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v25, 0x0

    const v26, 0x1fffa

    move-object v12, v4

    move-object v4, v5

    const/4 v5, 0x0

    move v13, v8

    move v14, v9

    const-wide/16 v8, 0x0

    move-object/from16 v22, v6

    move-wide/from16 v30, v10

    move v11, v7

    move-wide/from16 v6, v30

    const/4 v10, 0x0

    move/from16 v16, v11

    move-object v15, v12

    const-wide/16 v11, 0x0

    move/from16 v17, v13

    const/4 v13, 0x0

    move/from16 v18, v14

    const/4 v14, 0x0

    move-object/from16 v19, v15

    move/from16 v20, v16

    const-wide/16 v15, 0x0

    move/from16 v21, v17

    const/16 v17, 0x0

    move/from16 v23, v18

    const/16 v18, 0x0

    move-object/from16 v24, v19

    const/16 v19, 0x0

    move/from16 v27, v20

    const/16 v20, 0x0

    move/from16 v28, v21

    const/16 v21, 0x0

    move-object/from16 v29, v24

    const/16 v24, 0x0

    move-object/from16 v27, v0

    move/from16 v0, v23

    move-object/from16 v23, v2

    move-object/from16 v2, v29

    invoke-static/range {v4 .. v26}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v4, v23

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/components/variations/VariationAvailabilityIconOrientation;->END:Lcom/vuitton/android/presentation/screen/pdp/components/variations/VariationAvailabilityIconOrientation;

    if-ne v2, v5, :cond_8

    const v5, -0x2d52fa77

    invoke-static {v4, v5, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v6

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v9, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v10, 0x0

    const/16 v11, 0xb

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v3, :cond_7

    const v5, 0x7a68c5de

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->e(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVColorDotIconConfigs;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/LVColorDotIconConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;

    :goto_7
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v11, 0x0

    goto :goto_8

    :cond_7
    const v5, 0x7a68ca5c

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->e(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVColorDotIconConfigs;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/LVColorDotIconConfigs;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;

    goto :goto_7

    :goto_8
    invoke-static {v5, v1, v11, v4, v0}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVColorDotIconKt;->a(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/Composer;I)V

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_9
    const/4 v13, 0x1

    goto :goto_a

    :cond_8
    const v1, -0x2d4f12b7

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :goto_a
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_9
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_a
    move-object/from16 v27, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v2, p1

    :goto_b
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_b

    new-instance v0, Lrg;

    const/16 v5, 0xc

    move/from16 v4, p4

    move-object/from16 v1, v27

    invoke-direct/range {v0 .. v5}, Lrg;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;ZII)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method
