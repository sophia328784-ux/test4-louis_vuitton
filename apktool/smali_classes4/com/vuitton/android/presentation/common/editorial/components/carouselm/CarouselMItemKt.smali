.class public abstract Lcom/vuitton/android/presentation/common/editorial/components/carouselm/CarouselMItemKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/common/editorial/components/carouselm/CarouselMItemKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;ILcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p5

    move/from16 v7, p7

    const-string v1, "CarouselMItem"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x2192104a

    move-object/from16 v5, p6

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    or-int/lit8 v4, v7, 0x6

    and-int/lit8 v5, v7, 0x30

    if-nez v5, :cond_2

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_0

    :cond_1
    const/16 v5, 0x10

    :goto_0
    or-int/2addr v4, v5

    :cond_2
    and-int/lit16 v5, v7, 0x180

    if-nez v5, :cond_4

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x100

    goto :goto_1

    :cond_3
    const/16 v5, 0x80

    :goto_1
    or-int/2addr v4, v5

    :cond_4
    and-int/lit16 v5, v7, 0xc00

    if-nez v5, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x800

    goto :goto_2

    :cond_5
    const/16 v5, 0x400

    :goto_2
    or-int/2addr v4, v5

    :cond_6
    and-int/lit16 v5, v7, 0x6000

    move/from16 v12, p4

    if-nez v5, :cond_8

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x4000

    goto :goto_3

    :cond_7
    const/16 v5, 0x2000

    :goto_3
    or-int/2addr v4, v5

    :cond_8
    const/high16 v5, 0x30000

    and-int/2addr v5, v7

    const/high16 v8, 0x20000

    if-nez v5, :cond_a

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v8

    goto :goto_4

    :cond_9
    const/high16 v5, 0x10000

    :goto_4
    or-int/2addr v4, v5

    :cond_a
    const v5, 0x12493

    and-int/2addr v5, v4

    const v9, 0x12492

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v5, v9, :cond_b

    move v5, v10

    goto :goto_5

    :cond_b
    move v5, v11

    :goto_5
    and-int/lit8 v9, v4, 0x1

    invoke-virtual {v14, v9, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_1d

    new-instance v15, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v15, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v0, 0x70000

    and-int/2addr v0, v4

    if-ne v0, v8, :cond_c

    move v5, v10

    goto :goto_6

    :cond_c
    move v5, v11

    :goto_6
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v5, v9

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v5, :cond_d

    if-ne v9, v13, :cond_e

    :cond_d
    new-instance v9, Lpj;

    invoke-direct {v9, v6, v2, v11}, Lpj;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;I)V

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object/from16 v19, v9

    check-cast v19, Lkotlin/jvm/functions/Function0;

    const/16 v20, 0x1f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    move-object/from16 v31, v15

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v13, :cond_f

    new-instance v9, Ljh;

    const/4 v15, 0x7

    invoke-direct {v9, v15}, Ljh;-><init>(I)V

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v10, v9}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v15, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v9, v15, v14, v11}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v9

    iget-wide v11, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v14, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v10, v14, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    const/16 v32, 0x0

    if-eqz v10, :cond_1c

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_10

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_10
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_7
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v9, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v12, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v9, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v5, v9, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "carousel_asset_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-object v9, v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v10, v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVShape;->c:Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-ne v0, v8, :cond_11

    const/4 v0, 0x1

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v0, v8

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v0, :cond_13

    if-ne v8, v13, :cond_12

    goto :goto_9

    :cond_12
    const/4 v0, 0x1

    goto :goto_a

    :cond_13
    :goto_9
    new-instance v8, Lpj;

    const/4 v0, 0x1

    invoke-direct {v8, v6, v2, v0}, Lpj;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;I)V

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_a
    move-object v13, v8

    check-cast v13, Lkotlin/jvm/functions/Function0;

    const v8, 0xe000

    and-int/2addr v4, v8

    or-int/lit16 v15, v4, 0x180

    const/16 v16, 0x0

    move-object v4, v10

    const v10, 0x3f4ccccd    # 0.8f

    move/from16 v12, p4

    move-object v8, v5

    const/4 v5, 0x0

    invoke-static/range {v8 .. v16}, Lcom/vuitton/android/presentation/common/editorial/components/CarouselAssetKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/AssetUiModel;FLandroidx/compose/ui/graphics/Shape;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    if-eqz v4, :cond_14

    iget-object v8, v4, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;->b:Ljava/lang/String;

    goto :goto_b

    :cond_14
    move-object/from16 v8, v32

    :goto_b
    const/4 v9, 0x2

    if-nez v8, :cond_15

    const v8, 0x1a6310fe

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_d

    :cond_15
    const v10, 0x1a6310ff

    invoke-static {v14, v10, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v15

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v19, 0x0

    const/16 v20, 0x9

    const/16 v16, 0x0

    move/from16 v17, v10

    move/from16 v18, v11

    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "carousel_surtitle_text_"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v21, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    sget-object v12, Lcom/vuitton/android/presentation/common/editorial/components/carouselm/CarouselMItemKt$WhenMappings;->a:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v12, v12, v13

    if-eq v12, v0, :cond_17

    if-ne v12, v9, :cond_16

    const v12, -0x28440fd1

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :cond_16
    const v0, -0x284426ff

    invoke-static {v14, v0, v5}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_17
    const v12, -0x28441bcb

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->n:J

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_c
    const/16 v29, 0x6180

    const v30, 0x1aff8

    move v15, v9

    move-object v9, v10

    move-object/from16 v26, v11

    move-wide v10, v12

    const-wide/16 v12, 0x0

    move-object/from16 v27, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    const-wide/16 v15, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v22, v19

    const-wide/16 v19, 0x0

    move/from16 v23, v22

    const/16 v22, 0x0

    move/from16 v24, v23

    const/16 v23, 0x1

    move/from16 v25, v24

    const/16 v24, 0x0

    move/from16 v28, v25

    const/16 v25, 0x0

    move/from16 v33, v28

    const/16 v28, 0x0

    invoke-static/range {v8 .. v30}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v14, v27

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_d
    if-eqz v4, :cond_18

    iget-object v4, v4, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;->a:Ljava/lang/String;

    move-object v8, v4

    goto :goto_e

    :cond_18
    move-object/from16 v8, v32

    :goto_e
    if-nez v8, :cond_19

    const v1, 0x1a6fa8df

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_10

    :cond_19
    const v4, 0x1a6fa8e0

    invoke-static {v14, v4, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v15

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v19, 0x0

    const/16 v20, 0x9

    const/16 v16, 0x0

    move/from16 v17, v1

    move/from16 v18, v4

    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "carousel_title_text_"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v21, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    sget-object v4, Lcom/vuitton/android/presentation/common/editorial/components/carouselm/CarouselMItemKt$WhenMappings;->a:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v4, v4, v10

    if-eq v4, v0, :cond_1b

    const/4 v15, 0x2

    if-ne v4, v15, :cond_1a

    const v4, -0x71bbbb19

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v10, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_f

    :cond_1a
    const v0, -0x71bbd266

    invoke-static {v14, v0, v5}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_1b
    const v4, -0x71bbc733

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v10, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_f
    const/16 v29, 0x6180

    const v30, 0x1aff8

    const-wide/16 v12, 0x0

    move-object/from16 v27, v14

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    move-object/from16 v26, v1

    invoke-static/range {v8 .. v30}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v14, v27

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v1, v31

    goto :goto_11

    :cond_1c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v32

    :cond_1d
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    :goto_11
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_1e

    new-instance v0, Lxd;

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v7}, Lxd;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;ILcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void
.end method
