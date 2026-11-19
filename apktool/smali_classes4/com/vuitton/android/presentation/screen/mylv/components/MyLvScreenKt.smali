.class public abstract Lcom/vuitton/android/presentation/screen/mylv/components/MyLvScreenKt;
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
.method public static final a(IILandroidx/compose/ui/Modifier;ZIILkotlin/jvm/functions/Function0;ZLjava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V
    .locals 38

    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v7, p6

    move/from16 v10, p10

    move/from16 v11, p11

    const-string v3, "FeatureRow"

    if-eqz v0, :cond_0

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v4, 0x3df9bb14

    move-object/from16 v5, p9

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    iget-object v5, v4, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v6, v10, 0x6

    if-nez v6, :cond_2

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v10

    goto :goto_1

    :cond_2
    move v6, v10

    :goto_1
    and-int/lit8 v8, v10, 0x30

    if-nez v8, :cond_4

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x20

    goto :goto_2

    :cond_3
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v6, v8

    :cond_4
    and-int/lit16 v8, v10, 0x180

    if-nez v8, :cond_6

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x100

    goto :goto_3

    :cond_5
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v6, v8

    :cond_6
    and-int/lit8 v8, v11, 0x8

    if-eqz v8, :cond_8

    or-int/lit16 v6, v6, 0xc00

    :cond_7
    move/from16 v9, p3

    goto :goto_5

    :cond_8
    and-int/lit16 v9, v10, 0xc00

    if-nez v9, :cond_7

    move/from16 v9, p3

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x800

    goto :goto_4

    :cond_9
    const/16 v12, 0x400

    :goto_4
    or-int/2addr v6, v12

    :goto_5
    and-int/lit8 v12, v11, 0x10

    if-eqz v12, :cond_b

    or-int/lit16 v6, v6, 0x6000

    :cond_a
    move/from16 v13, p4

    goto :goto_7

    :cond_b
    and-int/lit16 v13, v10, 0x6000

    if-nez v13, :cond_a

    move/from16 v13, p4

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v14

    if-eqz v14, :cond_c

    const/16 v14, 0x4000

    goto :goto_6

    :cond_c
    const/16 v14, 0x2000

    :goto_6
    or-int/2addr v6, v14

    :goto_7
    and-int/lit8 v14, v11, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_e

    or-int/2addr v6, v15

    :cond_d
    move/from16 v15, p5

    goto :goto_9

    :cond_e
    and-int/2addr v15, v10

    if-nez v15, :cond_d

    move/from16 v15, p5

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x20000

    goto :goto_8

    :cond_f
    const/high16 v16, 0x10000

    :goto_8
    or-int v6, v6, v16

    :goto_9
    const/high16 v16, 0x180000

    and-int v16, v10, v16

    move-object/from16 v17, v5

    if-nez v16, :cond_11

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x100000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x80000

    :goto_a
    or-int v6, v6, v16

    :cond_11
    and-int/lit16 v5, v11, 0x80

    const/high16 v16, 0xc00000

    if-eqz v5, :cond_13

    or-int v6, v6, v16

    :cond_12
    move/from16 v16, v5

    move/from16 v5, p7

    goto :goto_c

    :cond_13
    and-int v16, v10, v16

    if-nez v16, :cond_12

    move/from16 v16, v5

    move/from16 v5, p7

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v18

    if-eqz v18, :cond_14

    const/high16 v18, 0x800000

    goto :goto_b

    :cond_14
    const/high16 v18, 0x400000

    :goto_b
    or-int v6, v6, v18

    :goto_c
    and-int/lit16 v5, v11, 0x100

    const/high16 v18, 0x6000000

    if-eqz v5, :cond_16

    or-int v6, v6, v18

    :cond_15
    move/from16 v18, v5

    move-object/from16 v5, p8

    goto :goto_e

    :cond_16
    and-int v18, v10, v18

    if-nez v18, :cond_15

    move/from16 v18, v5

    move-object/from16 v5, p8

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    const/high16 v19, 0x4000000

    goto :goto_d

    :cond_17
    const/high16 v19, 0x2000000

    :goto_d
    or-int v6, v6, v19

    :goto_e
    const v19, 0x2492493

    and-int v5, v6, v19

    move/from16 p9, v6

    const v6, 0x2492492

    const/4 v13, 0x0

    if-eq v5, v6, :cond_18

    const/4 v5, 0x1

    goto :goto_f

    :cond_18
    move v5, v13

    :goto_f
    and-int/lit8 v6, p9, 0x1

    invoke-virtual {v4, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_29

    if-eqz v8, :cond_19

    const/4 v9, 0x1

    :cond_19
    if-eqz v12, :cond_1a

    move v5, v13

    goto :goto_10

    :cond_1a
    move/from16 v5, p4

    :goto_10
    if-eqz v14, :cond_1b

    move v6, v13

    goto :goto_11

    :cond_1b
    move v6, v15

    :goto_11
    if-eqz v16, :cond_1c

    const/4 v8, 0x1

    goto :goto_12

    :cond_1c
    move/from16 v8, p7

    :goto_12
    if-eqz v18, :cond_1d

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_13

    :cond_1d
    move-object/from16 v12, p8

    :goto_13
    sget-object v14, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v9, :cond_28

    const v14, 0x287748ad

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v0, v14}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v20

    const/high16 v15, 0x380000

    and-int v15, p9, v15

    const/high16 v14, 0x100000

    if-ne v15, v14, :cond_1e

    const/4 v14, 0x1

    goto :goto_14

    :cond_1e
    move v14, v13

    :goto_14
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_1f

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v15, v14, :cond_20

    :cond_1f
    new-instance v15, Lee0;

    invoke-direct {v15, v7, v13}, Lee0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    move-object/from16 v24, v15

    check-cast v24, Lkotlin/jvm/functions/Function0;

    const/16 v25, 0x1f

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v14

    sget-object v15, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v15, v13}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    move-object/from16 p4, v14

    iget-wide v13, v4, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    move-object/from16 v35, v0

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v16, 0x0

    if-eqz v17, :cond_27

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    move/from16 p4, v8

    iget-boolean v8, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_21

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_15

    :cond_21
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_15
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v15, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v14, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v13, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v13}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move/from16 v36, v9

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v4, v0, v9, v3, v10}, Ln00;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v11, 0x0

    move-object/from16 p5, v12

    const/4 v12, 0x1

    invoke-static {v0, v11, v10, v12}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v12, 0x30

    invoke-static {v11, v10, v4, v12}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v10

    iget-wide v11, v4, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v4, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v17, :cond_26

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    move/from16 v37, v5

    iget-boolean v5, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_22

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_16

    :cond_22
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_16
    invoke-static {v4, v10, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v12, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v4, v14, v4, v13}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v4, v0, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v0, p9, 0xe

    invoke-static {v1, v4, v0}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v12

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/vuitton/android/designkit/ui/theme/IconSize;->c:F

    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v5, "account_item_image"

    invoke-static {v0, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    const/4 v0, 0x1

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x38

    move-object/from16 v17, v4

    move-wide v15, v7

    const/4 v5, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move v4, v0

    move-object/from16 v0, p5

    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    move-object/from16 v7, v17

    move/from16 v8, v18

    invoke-static {v7, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    new-instance v13, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v13, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v14, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v17, 0x0

    const/16 v18, 0xe

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const-string v13, "account_itemTitle_text"

    invoke-static {v11, v13}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v33, 0x0

    const v34, 0x1fff8

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    move-object/from16 v31, v7

    move-object/from16 v30, v9

    invoke-static/range {v12 .. v34}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v11, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-virtual {v11, v9, v10, v4}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v7, v9}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    const v9, -0x3ab86873

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/16 v17, 0x0

    const/16 v18, 0x7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v16, v7

    invoke-static/range {v12 .. v18}, Lcom/vuitton/android/designkit/components/components/LVNotificationIconKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_17

    :cond_23
    const v9, -0x3ab78737

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_17
    if-lt v6, v4, :cond_24

    const v9, -0x3ab66ae3

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    move/from16 v10, v37

    invoke-static {v10, v6, v9, v7}, Lcom/vuitton/android/presentation/helper/PluralStringResourceHelperKt;->a(II[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const-string v11, "account_itemCounter_text"

    invoke-static {v3, v11}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    const/16 v33, 0x0

    const v34, 0x1fff8

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    move-object/from16 v31, v7

    move-object/from16 v30, v9

    invoke-static/range {v12 .. v34}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_18

    :cond_24
    move/from16 v10, v37

    const v9, -0x3aaeee37

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_18
    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v11, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v12, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/4 v15, 0x0

    const/16 v16, 0xe

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    invoke-static {v3, v9}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const-string v9, "account_item_button"

    invoke-static {v3, v9}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I:I

    invoke-static {v3, v7, v5}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v12

    const-wide/16 v15, 0x0

    const/16 v19, 0x8

    const/4 v13, 0x0

    move-object/from16 v17, v7

    move/from16 v18, v8

    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-eqz p4, :cond_25

    const v3, 0x289aedb2

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    const/16 v17, 0x0

    const/16 v18, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v7

    invoke-static/range {v12 .. v18}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :cond_25
    const v3, 0x289c470e

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_19
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :cond_26
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16

    :cond_27
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16

    :cond_28
    move-object/from16 v35, v0

    move-object v7, v4

    move v10, v5

    move/from16 p4, v8

    move/from16 v36, v9

    move-object v0, v12

    move v5, v13

    const v3, 0x289c5e4e

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1a
    move/from16 v8, p4

    move-object v9, v0

    move v5, v10

    move/from16 v4, v36

    goto :goto_1b

    :cond_29
    move-object/from16 v35, v0

    move-object v7, v4

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v5, p4

    move/from16 v8, p7

    move v4, v9

    move v6, v15

    move-object/from16 v9, p8

    :goto_1b
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_2a

    new-instance v0, Lfe0;

    move-object/from16 v7, p6

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v3, v35

    invoke-direct/range {v0 .. v11}, Lfe0;-><init>(IILandroidx/compose/ui/Modifier;ZIILkotlin/jvm/functions/Function0;ZLjava/lang/Boolean;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2a
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object/from16 v0, p8

    move-object/from16 v15, p14

    move-object/from16 v2, p15

    move-object/from16 v10, p16

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x74912e88

    move-object/from16 v4, p17

    invoke-static {v2, v10, v4, v3}, La;->c(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    iget-object v3, v11, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int v4, p18, v4

    move-object/from16 v14, p1

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x10

    const/16 v9, 0x20

    if-eqz v7, :cond_1

    move v7, v9

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    or-int/2addr v4, v7

    move-object/from16 v7, p2

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    const/16 v16, 0x80

    const/16 v17, 0x100

    if-eqz v12, :cond_2

    move/from16 v12, v17

    goto :goto_2

    :cond_2
    move/from16 v12, v16

    :goto_2
    or-int/2addr v4, v12

    move-object/from16 v12, p3

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    const/16 v19, 0x400

    const/16 v20, 0x800

    if-eqz v18, :cond_3

    move/from16 v18, v20

    goto :goto_3

    :cond_3
    move/from16 v18, v19

    :goto_3
    or-int v4, v4, v18

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    const/16 v21, 0x2000

    if-eqz v18, :cond_4

    const/16 v18, 0x4000

    goto :goto_4

    :cond_4
    move/from16 v18, v21

    :goto_4
    or-int v4, v4, v18

    move-object/from16 v13, p5

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    const/high16 v23, 0x10000

    const/high16 v24, 0x20000

    if-eqz v22, :cond_5

    move/from16 v22, v24

    goto :goto_5

    :cond_5
    move/from16 v22, v23

    :goto_5
    or-int v4, v4, v22

    move-object/from16 v27, v3

    move-object/from16 v3, p6

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    const/high16 v25, 0x80000

    const/high16 v26, 0x100000

    if-eqz v22, :cond_6

    move/from16 v22, v26

    goto :goto_6

    :cond_6
    move/from16 v22, v25

    :goto_6
    or-int v4, v4, v22

    move-object/from16 v3, p7

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    const/high16 v22, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v22, 0x400000

    :goto_7
    or-int v4, v4, v22

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    const/high16 v22, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v22, 0x2000000

    :goto_8
    or-int v4, v4, v22

    move-object/from16 v13, p9

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    const/high16 v22, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v22, 0x10000000

    :goto_9
    or-int v28, v4, v22

    move-object/from16 v4, p10

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    :goto_a
    move-object/from16 v3, p11

    goto :goto_b

    :cond_a
    const/4 v6, 0x2

    goto :goto_a

    :goto_b
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    move v8, v9

    :cond_b
    or-int/2addr v6, v8

    move-object/from16 v8, p12

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    move/from16 v16, v17

    :cond_c
    or-int v6, v6, v16

    move-object/from16 v9, p13

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v19, v20

    :cond_d
    or-int v6, v6, v19

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v21, 0x4000

    :cond_e
    or-int v6, v6, v21

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    move/from16 v23, v24

    :cond_f
    or-int v6, v6, v23

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    move/from16 v25, v26

    :cond_10
    or-int v29, v6, v25

    const v6, 0x12492493

    and-int v6, v28, v6

    const v2, 0x12492492

    if-ne v6, v2, :cond_12

    const v2, 0x92493

    and-int v2, v29, v2

    const v6, 0x92492

    if-eq v2, v6, :cond_11

    goto :goto_c

    :cond_11
    const/4 v2, 0x0

    goto :goto_d

    :cond_12
    :goto_c
    const/4 v2, 0x1

    :goto_d
    and-int/lit8 v6, v28, 0x1

    invoke-virtual {v11, v6, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v6, "MyLvScreen"

    invoke-direct {v2, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v11}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v3

    const/16 v4, 0xe

    const/4 v7, 0x0

    invoke-static {v2, v3, v7, v4}, Landroidx/compose/foundation/ScrollKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v3, v4, v11, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v8

    iget-wide v9, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v11, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v31, 0x0

    if-eqz v27, :cond_25

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    move/from16 v16, v7

    iget-boolean v7, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_13

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_13
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_e
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v8, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v9, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v9, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v2, v14, v6}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    move-object/from16 v16, v7

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v2, v7}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v11, v2}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v2, v7}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    move-object/from16 v32, v14

    const/4 v14, 0x0

    move-object/from16 v17, v6

    const/4 v6, 0x2

    invoke-static {v2, v7, v14, v6}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->f:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->h:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    iget-object v14, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->i:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    move-object/from16 v19, v8

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->g:Ljava/lang/String;

    move-object/from16 v20, v9

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->o:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    shr-int/lit8 v21, v29, 0x6

    const v23, 0xe000

    and-int v21, v21, v23

    move-object/from16 v36, v6

    move-object/from16 v33, v13

    move-object/from16 v37, v16

    move-object/from16 v13, v17

    move-object/from16 v34, v19

    move-object/from16 v35, v20

    move/from16 v12, v21

    move-object v6, v2

    move-object v2, v10

    move-object/from16 v10, p16

    invoke-static/range {v6 .. v12}, Lcom/vuitton/android/presentation/screen/account/editavatar/components/UserAvatarSectionKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->l:Ljava/util/List;

    if-eqz v6, :cond_14

    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    move-object/from16 v17, v6

    goto :goto_f

    :cond_14
    move-object/from16 v17, v31

    :goto_f
    if-nez v17, :cond_15

    const v6, -0x7c0a354c

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_15
    const v6, -0x7c0a354b

    invoke-static {v11, v6, v13}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v6

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v11, v6}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    iget-boolean v6, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->m:Z

    iget-boolean v7, v14, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->k:Z

    iget-boolean v8, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->p:Z

    const/high16 v9, 0xe000000

    and-int v9, v28, v9

    const/high16 v10, 0x4000000

    if-ne v9, v10, :cond_16

    const/4 v9, 0x1

    goto :goto_10

    :cond_16
    const/4 v9, 0x0

    :goto_10
    and-int v10, v28, v23

    const/16 v12, 0x4000

    if-ne v10, v12, :cond_17

    const/4 v10, 0x1

    goto :goto_11

    :cond_17
    const/4 v10, 0x0

    :goto_11
    or-int/2addr v9, v10

    and-int v10, v29, v23

    if-ne v10, v12, :cond_18

    const/4 v10, 0x1

    goto :goto_12

    :cond_18
    const/4 v10, 0x0

    :goto_12
    or-int/2addr v9, v10

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_19

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v10, v9, :cond_1a

    :cond_19
    new-instance v10, Ljx;

    const/16 v9, 0x14

    invoke-direct {v10, v0, v5, v15, v9}, Ljx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object/from16 v22, v10

    check-cast v22, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v9, v29, 0x6

    const/high16 v10, 0x1c00000

    and-int v25, v9, v10

    const/16 v26, 0x21

    const/16 v16, 0x0

    const/16 v21, 0x0

    move-object/from16 v23, p15

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v24, v11

    invoke-static/range {v16 .. v26}, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentWidgetKt;->c(Landroidx/compose/ui/Modifier;Ljava/util/List;ZZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v11, v6}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v4, v11, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    iget-wide v8, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v11, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    if-eqz v27, :cond_24

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_1b

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    :goto_14
    move-object/from16 v2, v37

    goto :goto_15

    :cond_1b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    goto :goto_14

    :goto_15
    invoke-static {v11, v3, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v2, v34

    invoke-static {v11, v8, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v2, v33

    move-object/from16 v3, v35

    invoke-static {v4, v11, v2, v11, v3}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v2, v32

    invoke-static {v11, v6, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->J0:I

    iget-boolean v3, v14, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->e:Z

    iget-boolean v4, v14, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->l:Z

    if-eqz v3, :cond_1c

    move-object/from16 v3, v36

    iget v6, v3, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->d:I

    if-lez v6, :cond_1d

    const/16 v19, 0x1

    goto :goto_16

    :cond_1c
    move-object/from16 v3, v36

    :cond_1d
    move/from16 v19, v7

    :goto_16
    const-string v6, "account_exclusiveOffer_view"

    invoke-static {v13, v6}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    shl-int/lit8 v6, v29, 0xf

    const/high16 v30, 0x380000

    and-int v26, v6, v30

    const/16 v27, 0x1b0

    const v17, 0x7f140d59

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, p11

    move/from16 v16, v2

    move-object/from16 v25, v11

    invoke-static/range {v16 .. v27}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvScreenKt;->a(IILandroidx/compose/ui/Modifier;ZIILkotlin/jvm/functions/Function0;ZLjava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->E0:I

    iget v6, v3, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->b:I

    const-string v8, "account_myOrders_view"

    invoke-static {v13, v8}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    shr-int/lit8 v8, v28, 0x3

    and-int v26, v8, v30

    const/16 v27, 0x188

    const v17, 0x7f140d58

    const/16 v19, 0x0

    const v20, 0x7f120027

    move-object/from16 v22, p7

    move/from16 v16, v2

    move/from16 v21, v6

    invoke-static/range {v16 .. v27}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvScreenKt;->a(IILandroidx/compose/ui/Modifier;ZIILkotlin/jvm/functions/Function0;ZLjava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->Q:I

    iget-boolean v6, v14, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->j:Z

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->k:Ljava/lang/Boolean;

    const-string v9, "account_inbox_view"

    invoke-static {v13, v9}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    shl-int/lit8 v9, v28, 0x9

    and-int v26, v9, v30

    const/16 v27, 0xb0

    const v17, 0x7f140d8b

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, p3

    move/from16 v16, v2

    move/from16 v19, v6

    move-object/from16 v24, v8

    invoke-static/range {v16 .. v27}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvScreenKt;->a(IILandroidx/compose/ui/Modifier;ZIILkotlin/jvm/functions/Function0;ZLjava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->h:I

    iget-boolean v6, v14, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->d:Z

    iget v8, v3, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a:I

    const-string v9, "account_myCareServices_view"

    invoke-static {v13, v9}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    and-int v26, v28, v30

    const/16 v27, 0x180

    const v17, 0x7f140caf

    const v20, 0x7f120026

    const/16 v24, 0x0

    move-object/from16 v22, p6

    move/from16 v16, v2

    move/from16 v19, v6

    move/from16 v21, v8

    invoke-static/range {v16 .. v27}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvScreenKt;->a(IILandroidx/compose/ui/Modifier;ZIILkotlin/jvm/functions/Function0;ZLjava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I0:I

    if-nez v4, :cond_1f

    iget v6, v3, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->f:I

    if-lez v6, :cond_1e

    goto :goto_17

    :cond_1e
    move/from16 v19, v7

    goto :goto_18

    :cond_1f
    :goto_17
    const/16 v19, 0x1

    :goto_18
    iget v6, v3, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->f:I

    const-string v8, "account_myExperiences_view"

    invoke-static {v13, v8}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    shl-int/lit8 v8, v28, 0x3

    and-int v26, v8, v30

    const/16 v27, 0x180

    const v17, 0x7f140454

    const v20, 0x7f120004

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, p5

    move/from16 v16, v2

    move/from16 v21, v6

    invoke-static/range {v16 .. v27}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvScreenKt;->a(IILandroidx/compose/ui/Modifier;ZIILkotlin/jvm/functions/Function0;ZLjava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I0:I

    iget-boolean v6, v14, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->b:Z

    if-nez v6, :cond_20

    iget v6, v3, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->e:I

    if-lez v6, :cond_21

    :cond_20
    if-nez v4, :cond_21

    move v4, v7

    const/4 v5, 0x1

    goto :goto_19

    :cond_21
    move v4, v7

    move v5, v4

    :goto_19
    iget v7, v3, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->e:I

    const-string v6, "account_myAppointments_view"

    invoke-static {v13, v6}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    shl-int/lit8 v8, v28, 0x6

    and-int v12, v8, v30

    move-object/from16 v17, v13

    const/16 v13, 0x180

    move-object/from16 v36, v3

    const v3, 0x7f140d5b

    move v8, v4

    move-object v4, v6

    const v6, 0x7f120024

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v16, v8

    move-object/from16 v1, v17

    move-object/from16 v11, v25

    move-object/from16 v0, v36

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v13}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvScreenKt;->a(IILandroidx/compose/ui/Modifier;ZIILkotlin/jvm/functions/Function0;ZLjava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->J0:I

    iget-boolean v3, v14, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->f:Z

    if-nez v3, :cond_23

    iget v3, v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->c:I

    if-lez v3, :cond_22

    goto :goto_1a

    :cond_22
    move/from16 v19, v16

    goto :goto_1b

    :cond_23
    :goto_1a
    const/16 v19, 0x1

    :goto_1b
    iget v0, v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->c:I

    const-string v3, "account_myCertificates_view"

    invoke-static {v1, v3}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    shr-int/lit8 v3, v28, 0x9

    and-int v26, v3, v30

    const/16 v27, 0x180

    const v17, 0x7f140ca8

    const v20, 0x7f120025

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, p9

    move/from16 v21, v0

    move/from16 v16, v2

    invoke-static/range {v16 .. v27}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvScreenKt;->a(IILandroidx/compose/ui/Modifier;ZIILkotlin/jvm/functions/Function0;ZLjava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->y:I

    const-string v2, "account_myInfo_view"

    invoke-static {v1, v2}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    shl-int/lit8 v2, v28, 0xf

    and-int v26, v2, v30

    const/16 v27, 0x1b8

    const v17, 0x7f140dcc

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, p1

    move/from16 v16, v0

    invoke-static/range {v16 .. v27}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvScreenKt;->a(IILandroidx/compose/ui/Modifier;ZIILkotlin/jvm/functions/Function0;ZLjava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->Y0:I

    iget-boolean v2, v14, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->c:Z

    const-string v3, "account_myAddressBook_view"

    invoke-static {v1, v3}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    shl-int/lit8 v3, v28, 0xc

    and-int v26, v3, v30

    const/16 v27, 0x1b0

    const v17, 0x7f140d56

    move-object/from16 v22, p2

    move/from16 v16, v0

    move/from16 v19, v2

    invoke-static/range {v16 .. v27}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvScreenKt;->a(IILandroidx/compose/ui/Modifier;ZIILkotlin/jvm/functions/Function0;ZLjava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->k:I

    iget-boolean v2, v14, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->h:Z

    const-string v3, "account_myIcons_view"

    invoke-static {v1, v3}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    shl-int/lit8 v3, v29, 0x9

    and-int v26, v3, v30

    const v17, 0x7f140d57

    move-object/from16 v22, p13

    move/from16 v16, v0

    move/from16 v19, v2

    invoke-static/range {v16 .. v27}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvScreenKt;->a(IILandroidx/compose/ui/Modifier;ZIILkotlin/jvm/functions/Function0;ZLjava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->d:I

    const-string v2, "account_connectivity_view"

    invoke-static {v1, v2}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    shl-int/lit8 v2, v29, 0x12

    and-int v26, v2, v30

    const/16 v27, 0x1b8

    const v17, 0x7f141310

    const/16 v19, 0x0

    move-object/from16 v22, p10

    move/from16 v16, v0

    invoke-static/range {v16 .. v27}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvScreenKt;->a(IILandroidx/compose/ui/Modifier;ZIILkotlin/jvm/functions/Function0;ZLjava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->x:I

    const-string v2, "account_settings_view"

    invoke-static {v1, v2}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    shl-int/lit8 v2, v29, 0xc

    and-int v2, v2, v30

    const/high16 v3, 0xc00000

    or-int v26, v2, v3

    const/16 v27, 0x138

    const v17, 0x7f140c00

    move-object/from16 v22, p12

    move/from16 v16, v0

    invoke-static/range {v16 .. v27}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvScreenKt;->a(IILandroidx/compose/ui/Modifier;ZIILkotlin/jvm/functions/Function0;ZLjava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v11, v25

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSizeKt;->a(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;Landroidx/compose/foundation/layout/AndroidWindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1c

    :cond_24
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v31

    :cond_25
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v31

    :cond_26
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_27

    move-object v1, v0

    new-instance v0, Lde0;

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

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p18

    move-object/from16 v38, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v18}, Lde0;-><init>(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    move-object/from16 v1, v38

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_27
    return-void
.end method
