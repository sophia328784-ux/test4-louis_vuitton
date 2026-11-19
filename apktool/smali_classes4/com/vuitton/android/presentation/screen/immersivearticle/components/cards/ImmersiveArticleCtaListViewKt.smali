.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCtaListViewKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    const-string v1, "ImmersiveArticleCtaListView"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x768daf69

    move-object/from16 v7, p5

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_0

    :cond_1
    const/16 v6, 0x10

    :goto_0
    or-int v6, p6, v6

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x100

    goto :goto_1

    :cond_2
    const/16 v7, 0x80

    :goto_1
    or-int/2addr v6, v7

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x800

    goto :goto_2

    :cond_3
    const/16 v7, 0x400

    :goto_2
    or-int/2addr v6, v7

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x4000

    if-eqz v7, :cond_4

    move v7, v8

    goto :goto_3

    :cond_4
    const/16 v7, 0x2000

    :goto_3
    or-int/2addr v6, v7

    and-int/lit16 v7, v6, 0x2493

    const/16 v10, 0x2492

    const/4 v12, 0x0

    if-eq v7, v10, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    move v7, v12

    :goto_4
    and-int/lit8 v10, v6, 0x1

    invoke-virtual {v9, v10, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_1a

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;->c:Ljava/util/List;

    iget-object v10, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_1b

    move-object v1, v0

    new-instance v0, Li30;

    const/4 v7, 0x0

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Li30;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;ZZLkotlin/jvm/functions/Function1;II)V

    :goto_5
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_6
    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->a:Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-static {v3}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    if-nez v3, :cond_8

    const v3, 0x9dfc11a

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v13, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_8
    const v13, 0x9dfb57a

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v13, v3, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_7
    sget-object v3, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v13, v14, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v13

    iget v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v14

    iget v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    invoke-static {v3, v13, v14}, Landroidx/compose/foundation/layout/PaddingKt;->j(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v14, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v13, v14, v9, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v13

    iget-wide v14, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v9, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x0

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v11, v9, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v11, :cond_19

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_9

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_8
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v13, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v15, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v4, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v3, -0x1a46ace0

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v3, v7

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v12

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v19, v4, 0x1

    if-ltz v4, :cond_17

    check-cast v11, Lkotlin/Pair;

    if-eqz p3, :cond_a

    const v13, 0x46b4d77f

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_10

    :cond_a
    const v13, 0x46b63c7b

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    if-eqz v10, :cond_b

    iget-object v14, v10, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->a:Ljava/lang/String;

    if-eqz v14, :cond_b

    invoke-static {v14}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v14

    goto :goto_a

    :cond_b
    move-object/from16 v14, p0

    :goto_a
    if-nez v14, :cond_c

    const v14, -0xe3c19bb

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v14

    iget-object v14, v14, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    iget-wide v14, v14, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->a:J

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_b
    move-wide/from16 v21, v14

    goto :goto_c

    :cond_c
    const v15, -0xe3c236b

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v14, v14, Landroidx/compose/ui/graphics/Color;->a:J

    goto :goto_b

    :goto_c
    if-eqz v10, :cond_d

    iget-object v14, v10, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->b:Ljava/lang/String;

    if-eqz v14, :cond_d

    invoke-static {v14}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v14

    goto :goto_d

    :cond_d
    move-object/from16 v14, p0

    :goto_d
    if-nez v14, :cond_e

    const v14, -0xe3c097e

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v14

    iget-object v14, v14, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    iget-wide v14, v14, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->d:J

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_e
    move-wide/from16 v23, v14

    goto :goto_f

    :cond_e
    const v15, -0xe3c1274

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v14, v14, Landroidx/compose/ui/graphics/Color;->a:J

    goto :goto_e

    :goto_f
    const/16 v28, 0x0

    const/16 v29, 0x1ff6

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v13

    invoke-static/range {v20 .. v29}, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->a(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;JJLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/PaddingValuesImpl;FI)Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    move-result-object v13

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v1, v14}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v14

    iget-object v15, v11, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v15, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    instance-of v15, v15, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$PushNotification;

    if-eqz v15, :cond_10

    const v15, 0x46be4b6f

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz p2, :cond_f

    const v15, 0x7f1406e4

    goto :goto_11

    :cond_f
    const v15, 0x7f1406e0

    :goto_11
    invoke-static {v9, v15}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_10
    const v15, 0x46c3e4b3

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-object v15, v11, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    :goto_12
    iget-object v11, v11, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v11, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    instance-of v11, v11, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$PushNotification;

    if-eqz v11, :cond_12

    const v11, 0x46c6d226

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz p2, :cond_11

    const v11, 0x46c79690

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->R:I

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_11
    const v11, 0x46c91196

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->Q:I

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_14

    :cond_12
    const v11, 0x46cb1e67    # 25999.201f

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v11, p0

    :goto_14
    const v16, 0xe000

    and-int v12, v6, v16

    if-ne v12, v8, :cond_13

    const/4 v12, 0x1

    goto :goto_15

    :cond_13
    const/4 v12, 0x0

    :goto_15
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v16

    or-int v12, v12, v16

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v12, :cond_14

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v12, :cond_15

    :cond_14
    new-instance v8, Lis;

    const/4 v12, 0x4

    invoke-direct {v8, v4, v12, v5}, Lis;-><init>(IILkotlin/jvm/functions/Function1;)V

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object v12, v7

    const/4 v7, 0x6

    move-object/from16 v18, v10

    move-object v10, v14

    move-object v14, v15

    move-object v15, v8

    const/16 v8, 0x1f0

    move-object/from16 v20, v12

    move-object v12, v11

    move-object v11, v13

    const/4 v13, 0x0

    const/16 v21, 0x4000

    const/16 v16, 0x0

    const/16 v22, 0x0

    const/16 v17, 0x0

    move-object/from16 v23, v18

    const/16 v18, 0x0

    move/from16 v30, v22

    move-object/from16 v22, v0

    move/from16 v0, v30

    invoke-static/range {v7 .. v18}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-static/range {v20 .. v20}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/List;)I

    move-result v7

    if-ge v4, v7, :cond_16

    const v4, 0x46cdc542

    invoke-static {v9, v4, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v4

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v4, v7, v9, v0}, Lcj;->x(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;FLandroidx/compose/runtime/GapComposer;Z)V

    goto :goto_16

    :cond_16
    const v4, 0x46cf532c

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_16
    move v12, v0

    move/from16 v4, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v0, v22

    move-object/from16 v10, v23

    goto/16 :goto_9

    :cond_17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw p0

    :cond_18
    move-object/from16 v22, v0

    move v0, v12

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_17

    :cond_19
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p0

    :cond_1a
    move-object/from16 v22, v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_17
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_1b

    new-instance v0, Li30;

    const/4 v7, 0x1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p6

    move-object/from16 v1, v22

    invoke-direct/range {v0 .. v7}, Li30;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;ZZLkotlin/jvm/functions/Function1;II)V

    goto/16 :goto_5

    :cond_1b
    return-void
.end method
