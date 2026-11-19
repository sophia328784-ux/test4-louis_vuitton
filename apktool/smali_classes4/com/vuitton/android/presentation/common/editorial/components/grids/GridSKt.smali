.class public abstract Lcom/vuitton/android/presentation/common/editorial/components/grids/GridSKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;FLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v11, p11

    const-string v7, "GridS-f8-ukHw"

    if-eqz v0, :cond_0

    invoke-static {v0, v7}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x3df21bbd

    move-object/from16 v2, p10

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    iget-object v10, v14, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v0, v11, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v11

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_1
    and-int/lit8 v2, v11, 0x30

    if-nez v2, :cond_4

    move-object/from16 v2, p1

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_2

    :cond_3
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    goto :goto_3

    :cond_4
    move-object/from16 v2, p1

    :goto_3
    and-int/lit16 v3, v11, 0x180

    if-nez v3, :cond_6

    move-object/from16 v3, p2

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x100

    goto :goto_4

    :cond_5
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v0, v4

    goto :goto_5

    :cond_6
    move-object/from16 v3, p2

    :goto_5
    and-int/lit16 v4, v11, 0xc00

    if-nez v4, :cond_8

    move-object/from16 v4, p3

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/16 v13, 0x800

    goto :goto_6

    :cond_7
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v0, v13

    goto :goto_7

    :cond_8
    move-object/from16 v4, p3

    :goto_7
    and-int/lit16 v13, v11, 0x6000

    if-nez v13, :cond_a

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x4000

    goto :goto_8

    :cond_9
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v0, v13

    :cond_a
    const/high16 v13, 0x30000

    and-int/2addr v13, v11

    if-nez v13, :cond_c

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    if-eqz v13, :cond_b

    const/high16 v13, 0x20000

    goto :goto_9

    :cond_b
    const/high16 v13, 0x10000

    :goto_9
    or-int/2addr v0, v13

    :cond_c
    const/high16 v13, 0x180000

    and-int/2addr v13, v11

    if-nez v13, :cond_f

    if-nez p6, :cond_d

    const/4 v13, -0x1

    goto :goto_a

    :cond_d
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    :goto_a
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v13

    if-eqz v13, :cond_e

    const/high16 v13, 0x100000

    goto :goto_b

    :cond_e
    const/high16 v13, 0x80000

    :goto_b
    or-int/2addr v0, v13

    :cond_f
    const/high16 v13, 0xc00000

    and-int/2addr v13, v11

    if-nez v13, :cond_11

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v13

    if-eqz v13, :cond_10

    const/high16 v13, 0x800000

    goto :goto_c

    :cond_10
    const/high16 v13, 0x400000

    :goto_c
    or-int/2addr v0, v13

    :cond_11
    const/high16 v13, 0x6000000

    and-int/2addr v13, v11

    if-nez v13, :cond_13

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/high16 v13, 0x4000000

    goto :goto_d

    :cond_12
    const/high16 v13, 0x2000000

    :goto_d
    or-int/2addr v0, v13

    :cond_13
    const/high16 v13, 0x30000000

    and-int/2addr v13, v11

    if-nez v13, :cond_15

    move-object/from16 v13, p9

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const/high16 v16, 0x20000000

    goto :goto_e

    :cond_14
    const/high16 v16, 0x10000000

    :goto_e
    or-int v0, v0, v16

    goto :goto_f

    :cond_15
    move-object/from16 v13, p9

    :goto_f
    const v16, 0x12492493

    and-int v2, v0, v16

    const v12, 0x12492492

    if-eq v2, v12, :cond_16

    const/4 v2, 0x1

    goto :goto_10

    :cond_16
    const/4 v2, 0x0

    :goto_10
    and-int/lit8 v12, v0, 0x1

    invoke-virtual {v14, v12, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_2b

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    move/from16 v17, v2

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v17, :cond_17

    if-ne v12, v2, :cond_18

    :cond_17
    move-object v12, v5

    check-cast v12, Ljava/lang/Iterable;

    const/16 v4, 0x14

    invoke-static {v12, v4}, Lkotlin/collections/CollectionsKt;->q0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v12, Ljava/util/List;

    if-nez v6, :cond_1a

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v15, 0x6

    if-lt v4, v15, :cond_19

    goto :goto_11

    :cond_19
    const/4 v4, 0x0

    goto :goto_12

    :cond_1a
    :goto_11
    const/4 v4, 0x1

    :goto_12
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    move/from16 v19, v0

    const/16 v0, 0x8

    const/16 v20, 0x0

    if-lt v15, v0, :cond_1b

    goto :goto_13

    :cond_1b
    move-object/from16 v13, v20

    :goto_13
    if-nez v4, :cond_1c

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_2c

    new-instance v0, Lz00;

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v12}, Lz00;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;FLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;II)V

    :goto_14
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_1c
    move-object v8, v1

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v3

    const/high16 v4, 0x1c00000

    and-int v4, v19, v4

    const/high16 v5, 0x800000

    if-ne v4, v5, :cond_1d

    const/4 v4, 0x1

    goto :goto_15

    :cond_1d
    const/4 v4, 0x0

    :goto_15
    or-int/2addr v3, v4

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1e

    if-ne v4, v2, :cond_1f

    :cond_1e
    sub-float v0, v0, p7

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    const v1, 0x40466666    # 3.1f

    div-float/2addr v0, v1

    new-instance v4, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v4, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    check-cast v4, Landroidx/compose/ui/unit/Dp;

    iget v9, v4, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v11, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v9

    add-float v15, v0, v11

    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v3, 0x0

    invoke-static {v0, v1, v14, v3}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v0

    iget-wide v4, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v14, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v17, v2

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v10, :cond_2a

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v3, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v3, :cond_20

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_16

    :cond_20
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_16
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v4, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v21, v2

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v5, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_21

    const v5, -0x4cbb6e4d

    invoke-static {v14, v5, v7}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    move-object/from16 v22, v0

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    move-object/from16 v23, v4

    const/4 v4, 0x0

    move-object/from16 v24, v3

    move v3, v0

    move-object v0, v5

    const/16 v5, 0xa

    move-object/from16 v25, v2

    const/4 v2, 0x0

    move-object/from16 v30, v1

    move-object/from16 v16, v7

    move-object/from16 v32, v17

    move/from16 v6, v19

    move-object/from16 v26, v21

    move-object/from16 v28, v22

    move-object/from16 v29, v23

    move-object/from16 v27, v24

    move-object/from16 v31, v25

    const/4 v7, 0x0

    move/from16 v1, p7

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v33

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v38, 0x7

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v37, v0

    invoke-static/range {v33 .. v38}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    shr-int/lit8 v2, v6, 0xf

    and-int/lit8 v2, v2, 0x70

    and-int/lit16 v3, v6, 0x380

    or-int/2addr v2, v3

    shl-int/lit8 v3, v6, 0x6

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v2, v3

    shl-int/lit8 v3, v6, 0x3

    const v4, 0xe000

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    move-object/from16 p0, v8

    move v4, v9

    move-object/from16 p10, v10

    move v5, v11

    move-object v3, v12

    move-object/from16 v11, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v9, p6

    move-object v8, v0

    move v0, v15

    move v15, v2

    const/4 v2, 0x2

    invoke-static/range {v8 .. v15}, Lcom/vuitton/android/presentation/common/editorial/components/header/HeaderKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_17

    :cond_21
    move-object/from16 v28, v0

    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v4

    move-object/from16 v16, v7

    move-object/from16 p0, v8

    move v4, v9

    move-object/from16 p10, v10

    move v5, v11

    move-object v3, v12

    move v0, v15

    move-object/from16 v32, v17

    move/from16 v6, v19

    move-object/from16 v26, v21

    const/4 v2, 0x2

    const/4 v7, 0x0

    move/from16 v1, p7

    const v8, -0x4cb4d50b

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_17
    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v9, v16

    invoke-static {v9, v8}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v10, v7}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    iget-wide v11, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v14, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    if-eqz p10, :cond_29

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_22

    move-object/from16 v13, v26

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    :goto_18
    move-object/from16 v13, v27

    goto :goto_19

    :cond_22
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    goto :goto_18

    :goto_19
    invoke-static {v14, v10, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v10, v28

    invoke-static {v14, v12, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v10, v29

    move-object/from16 v12, v30

    invoke-static {v11, v14, v10, v14, v12}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v10, v31

    invoke-static {v14, v8, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/16 v8, 0xa

    const/4 v10, 0x0

    if-eqz p5, :cond_25

    const v3, 0x600ec1ab

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v9}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    new-instance v0, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;

    invoke-direct {v0, v2}, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;-><init>(I)V

    invoke-static {v10}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v12

    invoke-static {v5}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v13

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v1, v10, v2, v10, v8}, Landroidx/compose/foundation/layout/PaddingKt;->e(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v11

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v2

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_23

    move-object/from16 v15, v32

    if-ne v3, v15, :cond_24

    :cond_23
    new-instance v3, La10;

    invoke-direct {v3, v4, v7}, La10;-><init>(FI)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object/from16 v17, v3

    check-cast v17, Lkotlin/jvm/functions/Function1;

    const/high16 v19, 0x30000

    const/4 v10, 0x0

    move-object/from16 v18, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v8, v0

    invoke-static/range {v8 .. v19}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->a(Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v14, v18

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v6, p8

    const/4 v2, 0x1

    goto :goto_1d

    :cond_25
    move-object/from16 v15, v32

    const v11, 0x601a577f

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v11, v9}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    new-instance v0, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;

    invoke-direct {v0, v2}, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;-><init>(I)V

    invoke-static {v10}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v12

    invoke-static {v5}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v13

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v1, v10, v2, v10, v8}, Landroidx/compose/foundation/layout/PaddingKt;->e(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v11

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v5

    or-int/2addr v2, v5

    const/high16 v5, 0xe000000

    and-int/2addr v5, v6

    const/high16 v6, 0x4000000

    if-ne v5, v6, :cond_26

    const/4 v5, 0x1

    goto :goto_1a

    :cond_26
    move v5, v7

    :goto_1a
    or-int/2addr v2, v5

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_28

    if-ne v5, v15, :cond_27

    goto :goto_1b

    :cond_27
    move-object/from16 v6, p8

    const/4 v2, 0x1

    goto :goto_1c

    :cond_28
    :goto_1b
    new-instance v5, Ls5;

    move-object/from16 v6, p8

    const/4 v2, 0x1

    invoke-direct {v5, v3, v4, v6, v2}, Ls5;-><init>(Ljava/lang/Object;FLkotlin/Function;I)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1c
    move-object/from16 v17, v5

    check-cast v17, Lkotlin/jvm/functions/Function1;

    const/high16 v19, 0x30000

    const/4 v10, 0x0

    move-object/from16 v18, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v8, v0

    invoke-static/range {v8 .. v19}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->a(Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v14, v18

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1d
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1e

    :cond_29
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v20

    :cond_2a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v20

    :cond_2b
    move-object/from16 p0, v1

    move v1, v8

    move-object v6, v9

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_2c

    new-instance v0, Lz00;

    const/4 v12, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    move/from16 v11, p11

    move v8, v1

    move-object v9, v6

    move-object/from16 v1, p0

    move/from16 v6, p5

    invoke-direct/range {v0 .. v12}, Lz00;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;FLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;II)V

    goto/16 :goto_14

    :cond_2c
    return-void
.end method
