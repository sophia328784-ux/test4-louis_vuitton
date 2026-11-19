.class public abstract Lcom/vuitton/android/presentation/common/editorial/components/carousell/CarouselLMultipleKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroidx/compose/foundation/shape/RoundedCornerShape;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    const-string v1, "CarouselLItem"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v10, v0

    const v0, 0x2beaf3ff

    move-object/from16 v2, p9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int v2, p10, v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_1

    :cond_2
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v2, v3

    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x100

    goto :goto_2

    :cond_3
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v2, v4

    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x800

    goto :goto_3

    :cond_4
    const/16 v5, 0x400

    :goto_3
    or-int/2addr v2, v5

    move-object/from16 v5, p4

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x4000

    goto :goto_4

    :cond_5
    const/16 v7, 0x2000

    :goto_4
    or-int/2addr v2, v7

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    const/high16 v8, 0x20000

    if-eqz v7, :cond_6

    move v7, v8

    goto :goto_5

    :cond_6
    const/high16 v7, 0x10000

    :goto_5
    or-int/2addr v2, v7

    move-object/from16 v7, p6

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/high16 v11, 0x100000

    goto :goto_6

    :cond_7
    const/high16 v11, 0x80000

    :goto_6
    or-int/2addr v2, v11

    move/from16 v11, p7

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_8

    const/high16 v12, 0x800000

    goto :goto_7

    :cond_8
    const/high16 v12, 0x400000

    :goto_7
    or-int/2addr v2, v12

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    const/high16 v13, 0x4000000

    if-eqz v12, :cond_9

    move v12, v13

    goto :goto_8

    :cond_9
    const/high16 v12, 0x2000000

    :goto_8
    or-int/2addr v2, v12

    const v12, 0x2492493

    and-int/2addr v12, v2

    const v14, 0x2492492

    const/4 v15, 0x0

    if-eq v12, v14, :cond_a

    const/4 v12, 0x1

    goto :goto_9

    :cond_a
    move v12, v15

    :goto_9
    and-int/lit8 v14, v2, 0x1

    invoke-virtual {v0, v14, v12}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v12

    if-eqz v12, :cond_15

    sget-object v12, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v12, 0xe000000

    and-int/2addr v12, v2

    if-ne v12, v13, :cond_b

    const/4 v14, 0x1

    goto :goto_a

    :cond_b
    move v14, v15

    :goto_a
    const/high16 v16, 0x70000

    and-int v11, v2, v16

    if-eq v11, v8, :cond_c

    move/from16 v16, v15

    goto :goto_b

    :cond_c
    const/16 v16, 0x1

    :goto_b
    or-int v14, v14, v16

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v14, :cond_d

    if-ne v13, v8, :cond_e

    :cond_d
    new-instance v13, Llj;

    invoke-direct {v13, v9, v6, v15}, Llj;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;I)V

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object v14, v13

    check-cast v14, Lkotlin/jvm/functions/Function0;

    move v13, v15

    const/16 v15, 0x1f

    move/from16 v17, v11

    const/4 v11, 0x0

    move/from16 v18, v12

    const/4 v12, 0x0

    move/from16 v19, v13

    const/4 v13, 0x0

    move/from16 v20, v2

    move/from16 v22, v17

    move/from16 v21, v18

    move/from16 v2, v19

    invoke-static/range {v10 .. v15}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v13, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v12, v13, v0, v2}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v12

    iget-wide v13, v0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v0, v11}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v2, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v2, :cond_f

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_c
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v12, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v14, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v11, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move/from16 v2, v21

    const/high16 v11, 0x4000000

    if-ne v2, v11, :cond_10

    const/4 v15, 0x1

    :goto_d
    move/from16 v2, v22

    const/high16 v11, 0x20000

    goto :goto_e

    :cond_10
    const/4 v15, 0x0

    goto :goto_d

    :goto_e
    if-eq v2, v11, :cond_11

    const/16 v19, 0x0

    goto :goto_f

    :cond_11
    const/16 v19, 0x1

    :goto_f
    or-int v2, v15, v19

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v2, :cond_13

    if-ne v11, v8, :cond_12

    goto :goto_10

    :cond_12
    const/4 v2, 0x1

    goto :goto_11

    :cond_13
    :goto_10
    new-instance v11, Llj;

    const/4 v2, 0x1

    invoke-direct {v11, v9, v6, v2}, Llj;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;I)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_11
    move-object/from16 v16, v11

    check-cast v16, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v8, v20, 0x3

    and-int/lit8 v8, v8, 0x70

    or-int/lit16 v8, v8, 0x180

    shr-int/lit8 v11, v20, 0x9

    and-int/lit16 v12, v11, 0x1c00

    or-int/2addr v8, v12

    const v12, 0xe000

    and-int/2addr v11, v12

    or-int v18, v8, v11

    const/16 v19, 0x1

    const/4 v11, 0x0

    const v13, 0x3f2aaaab

    move/from16 v15, p7

    move-object/from16 v17, v0

    move-object v12, v3

    move-object v14, v7

    invoke-static/range {v11 .. v19}, Lcom/vuitton/android/presentation/common/editorial/components/CarouselAssetKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/AssetUiModel;FLandroidx/compose/ui/graphics/Shape;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v12, v17

    new-instance v13, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v13, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    const/16 v17, 0x0

    const/16 v18, 0xb

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v0

    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v13

    shr-int/lit8 v0, v20, 0x6

    and-int/lit16 v0, v0, 0x3f0

    shl-int/lit8 v1, v20, 0x6

    and-int/lit16 v1, v1, 0x1c00

    or-int v11, v0, v1

    move-object/from16 v14, p1

    move-object v15, v4

    move-object/from16 v16, v5

    invoke-static/range {v11 .. v16}, Lcom/vuitton/android/presentation/common/editorial/components/carousell/CarouselLItemTitlesKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_14
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_15
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_12
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_16

    new-instance v0, Lmj;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object v1, v10

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lmj;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroidx/compose/foundation/shape/RoundedCornerShape;ZLkotlin/jvm/functions/Function1;I)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    const-string v1, "CarouselLMultiple"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x32f829e4

    move-object/from16 v4, p8

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    and-int/lit8 v3, v9, 0x6

    if-nez v3, :cond_2

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

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
    and-int/lit8 v10, v9, 0x30

    if-nez v10, :cond_4

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x20

    goto :goto_2

    :cond_3
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v3, v10

    :cond_4
    and-int/lit16 v10, v9, 0x180

    if-nez v10, :cond_6

    move-object/from16 v10, p2

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v12, 0x100

    goto :goto_3

    :cond_5
    const/16 v12, 0x80

    :goto_3
    or-int/2addr v3, v12

    goto :goto_4

    :cond_6
    move-object/from16 v10, p2

    :goto_4
    and-int/lit16 v12, v9, 0xc00

    if-nez v12, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x800

    goto :goto_5

    :cond_7
    const/16 v12, 0x400

    :goto_5
    or-int/2addr v3, v12

    :cond_8
    and-int/lit16 v12, v9, 0x6000

    if-nez v12, :cond_a

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x4000

    goto :goto_6

    :cond_9
    const/16 v12, 0x2000

    :goto_6
    or-int/2addr v3, v12

    :cond_a
    const/high16 v12, 0x30000

    and-int/2addr v12, v9

    const/high16 v13, 0x20000

    if-nez v12, :cond_c

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_b

    move v12, v13

    goto :goto_7

    :cond_b
    const/high16 v12, 0x10000

    :goto_7
    or-int/2addr v3, v12

    :cond_c
    const/high16 v12, 0x180000

    and-int/2addr v12, v9

    if-nez v12, :cond_e

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/high16 v12, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v12, 0x80000

    :goto_8
    or-int/2addr v3, v12

    :cond_e
    const/high16 v12, 0xc00000

    and-int/2addr v12, v9

    const/high16 v14, 0x800000

    if-nez v12, :cond_10

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    move v12, v14

    goto :goto_9

    :cond_f
    const/high16 v12, 0x400000

    :goto_9
    or-int/2addr v3, v12

    :cond_10
    const v12, 0x492493

    and-int/2addr v12, v3

    const v15, 0x492492

    const/4 v4, 0x0

    if-eq v12, v15, :cond_11

    const/4 v12, 0x1

    goto :goto_a

    :cond_11
    move v12, v4

    :goto_a
    and-int/lit8 v15, v3, 0x1

    invoke-virtual {v11, v15, v12}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v12

    if-eqz v12, :cond_19

    sget-object v12, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v12, 0x3

    invoke-static {v4, v11, v12}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/high16 v16, 0x70000

    and-int v4, v3, v16

    if-ne v4, v13, :cond_12

    const/4 v4, 0x1

    goto :goto_b

    :cond_12
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v4, v13

    const/high16 v13, 0x1c00000

    and-int/2addr v13, v3

    if-ne v13, v14, :cond_13

    const/4 v13, 0x1

    goto :goto_c

    :cond_13
    const/4 v13, 0x0

    :goto_c
    or-int/2addr v4, v13

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x0

    if-nez v4, :cond_14

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v13, v4, :cond_15

    :cond_14
    new-instance v13, Lcom/vuitton/android/presentation/common/editorial/components/carousell/CarouselLMultipleKt$CarouselLMultiple$1$1;

    invoke-direct {v13, v6, v12, v8, v14}, Lcom/vuitton/android/presentation/common/editorial/components/carousell/CarouselLMultipleKt$CarouselLMultiple$1$1;-><init>(ZLandroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v15, v13}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v13, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v15, 0x0

    invoke-static {v4, v13, v11, v15}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    move-object v13, v14

    iget-wide v14, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    move-object/from16 v16, v13

    invoke-static {v11, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v21, v0

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v6, v11, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v6, :cond_18

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_16

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_d

    :cond_16
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_d
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v4, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v15, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v0, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v13, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-nez v2, :cond_17

    const v0, 0x5a667a94

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v0, v12

    goto :goto_e

    :cond_17
    const v0, 0x5a667a95

    invoke-static {v11, v0, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v6, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    invoke-virtual {v6, v0, v4}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v6, 0x0

    const/4 v13, 0x2

    invoke-static {v0, v4, v6, v13}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v22

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/16 v27, 0x7

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v26, v0

    invoke-static/range {v22 .. v27}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v14, v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;->a:Ljava/lang/String;

    iget-object v15, v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;->b:Ljava/lang/String;

    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x70

    move-object v10, v12

    move-object v12, v0

    move-object v0, v10

    move-object/from16 v13, p3

    move v10, v4

    invoke-static/range {v10 .. v15}, Lcom/vuitton/android/presentation/common/editorial/components/carousell/CarouselLGlobalTitlesKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_e
    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v15, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->d:F

    new-instance v4, Ljj;

    move-object/from16 v6, p3

    invoke-direct {v4, v6, v5, v7}, Ljj;-><init>(Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;)V

    const v12, -0x33de23a

    invoke-static {v12, v4, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v17

    and-int/lit16 v3, v3, 0x380

    const v4, 0xc06c06

    or-int v19, v3, v4

    const/16 v20, 0x0

    const/4 v13, 0x1

    const v14, 0x3ea8f5c3    # 0.33f

    move-object/from16 v12, p2

    move/from16 v16, v1

    move-object/from16 v18, v11

    move-object v11, v0

    invoke-static/range {v10 .. v20}, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;IFFFLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v11, v18

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_f

    :cond_18
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16

    :cond_19
    move-object/from16 v6, p3

    move-object/from16 v21, v0

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_f
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_1a

    new-instance v0, Lkj;

    move-object/from16 v3, p2

    move-object v4, v6

    move-object/from16 v1, v21

    move/from16 v6, p5

    invoke-direct/range {v0 .. v9}, Lkj;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1a
    return-void
.end method
