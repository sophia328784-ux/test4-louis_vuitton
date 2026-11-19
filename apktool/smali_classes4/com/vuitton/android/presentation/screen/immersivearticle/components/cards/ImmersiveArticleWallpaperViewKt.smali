.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleWallpaperViewKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;",
        "state",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    const-string v2, "ImmersiveArticleWallpaperView"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v3, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x4c7197f2

    move-object/from16 v6, p3

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    iget-object v0, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    or-int v6, p4, v6

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_1

    :cond_2
    const/16 v7, 0x10

    :goto_1
    or-int/2addr v6, v7

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x100

    if-eqz v7, :cond_3

    move v7, v8

    goto :goto_2

    :cond_3
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v6, v7

    and-int/lit16 v7, v6, 0x93

    const/16 v9, 0x92

    const/4 v11, 0x0

    if-eq v7, v9, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    move v7, v11

    :goto_3
    and-int/lit8 v9, v6, 0x1

    invoke-virtual {v12, v9, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_1f

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v9, :cond_5

    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->h:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v7, Landroidx/compose/runtime/MutableState;

    sget-object v13, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v14

    iget-object v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object v10, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v3, v14, v15, v10}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x6

    if-ne v14, v9, :cond_6

    new-instance v14, Lx20;

    invoke-direct {v14, v15}, Lx20;-><init>(I)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v11, v14}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    and-int/lit16 v6, v6, 0x380

    if-ne v6, v8, :cond_7

    const/4 v10, 0x1

    goto :goto_4

    :cond_7
    move v10, v11

    :goto_4
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v10, :cond_8

    if-ne v14, v9, :cond_9

    :cond_8
    new-instance v14, Lna;

    const/4 v10, 0x5

    invoke-direct {v14, v5, v7, v10}, Lna;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object/from16 v20, v14

    check-cast v20, Lkotlin/jvm/functions/Function0;

    const/16 v21, 0x1f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v14, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v14, v11}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    move-object/from16 v16, v9

    iget-wide v8, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v12, v10}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v17, v13

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1e

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_a

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_5
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v14, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v9, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v8, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v8}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v20, v9

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v10, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-nez v1, :cond_b

    const v1, 0x7cd109b6

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v30, v0

    move-object/from16 v33, v3

    move/from16 v32, v6

    move-object/from16 p0, v7

    move-object/from16 p3, v8

    move-object/from16 v34, v9

    move v4, v11

    move-object v1, v13

    move-object v3, v14

    move-object v0, v15

    move-object/from16 v35, v16

    move-object/from16 v31, v17

    move-object/from16 v5, v20

    goto/16 :goto_8

    :cond_b
    const v10, 0x7cd109b7

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v10, v1, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v10, :cond_d

    iget-object v10, v10, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    if-eqz v10, :cond_d

    invoke-static {v10}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    const v10, 0x4705f23e

    invoke-static {v12, v10, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v10

    sget-object v11, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v10, v11}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    iget-object v1, v1, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v11, v8

    sget-object v8, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    move-object/from16 v22, v17

    const/16 v17, 0x186

    const/16 v23, 0x6

    const/16 v18, 0x7f8

    move-object/from16 v24, v9

    const/4 v9, 0x0

    move/from16 v25, v6

    move-object v6, v10

    const/4 v10, 0x0

    move-object/from16 v26, v11

    const/4 v11, 0x0

    move-object/from16 v27, v16

    move-object/from16 v16, v12

    const/4 v12, 0x0

    move-object/from16 v28, v13

    const/4 v13, 0x0

    move-object/from16 v29, v14

    const/4 v14, 0x0

    move-object/from16 v30, v15

    const/4 v15, 0x0

    move-object/from16 p0, v30

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v33, v3

    move-object/from16 p0, v7

    move-object/from16 v5, v20

    move-object/from16 v31, v22

    move-object/from16 v34, v24

    move/from16 v32, v25

    move-object/from16 p3, v26

    move-object/from16 v35, v27

    move-object/from16 v3, v29

    const/4 v4, 0x0

    move-object v7, v1

    move-object/from16 v1, v28

    invoke-static/range {v6 .. v18}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v12, v16

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_c
    move-object/from16 v30, v0

    move-object/from16 v33, v3

    move/from16 v32, v6

    move-object/from16 p0, v7

    move-object/from16 p3, v8

    move-object/from16 v34, v9

    move-object v1, v13

    move-object v3, v14

    move-object v0, v15

    move-object/from16 v35, v16

    move-object/from16 v31, v17

    move-object/from16 v5, v20

    const/4 v4, 0x0

    goto :goto_6

    :cond_d
    move-object/from16 v30, v0

    move-object/from16 v33, v3

    move/from16 v32, v6

    move-object/from16 p0, v7

    move-object/from16 p3, v8

    move-object/from16 v34, v9

    move v4, v11

    move-object v1, v13

    move-object v3, v14

    move-object v0, v15

    move-object/from16 v35, v16

    move-object/from16 v31, v17

    move-object/from16 v5, v20

    :goto_6
    const v6, 0x47097eb0    # 35198.688f

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_7
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_8
    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v6, v7}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v9, 0x6

    invoke-static {v7, v8, v12, v9}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v7

    iget-wide v8, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v12, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    if-eqz v30, :cond_1d

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_e

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_e
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_9
    invoke-static {v12, v7, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12, v9, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v7, p3

    invoke-static {v8, v12, v5, v12, v7}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v8, v34

    invoke-static {v12, v6, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v6, p1

    iget-object v9, v6, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->i:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    if-eqz v9, :cond_f

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->b:Ljava/lang/String;

    if-eqz v9, :cond_f

    invoke-static {v9}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v15

    goto :goto_a

    :cond_f
    const/4 v15, 0x0

    :goto_a
    if-nez v15, :cond_10

    const v9, -0x4b78595a

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_10
    const v9, -0x4b7861d4

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v9, v15, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_b
    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v11, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v13

    iget v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->j:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v14

    iget v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->k:F

    invoke-static {v11, v13, v14}, Landroidx/compose/foundation/layout/PaddingKt;->j(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x7

    move-object/from16 v15, v35

    if-ne v13, v15, :cond_11

    new-instance v13, Lx20;

    invoke-direct {v13, v14}, Lx20;-><init>(I)V

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v4, v13}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    move-object v13, v6

    iget-object v6, v13, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->c:Ljava/lang/String;

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v14

    iget-object v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->d:Landroidx/compose/ui/text/TextStyle;

    sget-object v16, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/style/TextAlign;->e:I

    move-object/from16 v16, v6

    new-instance v6, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v6, v4}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v27, 0x0

    const v28, 0x1fbf8

    move-object/from16 v26, v7

    move-object/from16 v24, v8

    move-wide v8, v9

    move-object v7, v11

    const-wide/16 v10, 0x0

    move-object/from16 v25, v12

    const/4 v12, 0x0

    move-object/from16 v17, v24

    move-object/from16 v24, v14

    const-wide/16 v13, 0x0

    move-object/from16 v35, v15

    const/4 v15, 0x0

    move-object/from16 v19, v17

    const-wide/16 v17, 0x0

    move-object/from16 v20, v19

    const/16 v19, 0x0

    move-object/from16 v21, v20

    const/16 v20, 0x0

    move-object/from16 v22, v21

    const/16 v21, 0x0

    move-object/from16 v23, v22

    const/16 v22, 0x0

    move-object/from16 v36, v23

    const/16 v23, 0x0

    move-object/from16 v37, v26

    const/16 v26, 0x0

    move-object/from16 p3, v16

    move-object/from16 v16, v6

    move-object/from16 v6, p3

    move/from16 p3, v4

    move-object/from16 v39, v35

    move-object/from16 v38, v36

    move-object/from16 v4, v37

    invoke-static/range {v6 .. v28}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v12, v25

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v10, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v11, 0x30

    invoke-static {v10, v6, v12, v11}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v6

    iget-wide v10, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v12, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-eqz v30, :cond_1c

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_12

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_12
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_c
    invoke-static {v12, v6, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12, v11, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v12, v5, v12, v4}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v0, v38

    invoke-static {v12, v7, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;->a:Z

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v3, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    if-nez v0, :cond_14

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;->c:Z

    if-eqz v0, :cond_13

    goto :goto_d

    :cond_13
    const v0, 0x2de4d0a6

    invoke-static {v12, v0, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    const/4 v11, 0x1

    invoke-virtual {v3, v0, v1, v11}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v12, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v1, 0x7

    const/4 v2, 0x0

    goto/16 :goto_14

    :cond_14
    :goto_d
    const v0, 0x2dce2633

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt;->a(Landroidx/compose/runtime/Composer;)Z

    move-result v0

    const v4, 0x7f14143a

    const v5, 0x7f14143b

    if-eqz v0, :cond_16

    const v0, 0x2dce635a

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;->a:Z

    if-eqz v0, :cond_15

    const v0, 0x2dd00330

    const/4 v6, 0x0

    invoke-static {v12, v0, v5, v12, v6}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v0

    :goto_e
    move-object/from16 v13, v31

    goto :goto_f

    :cond_15
    const/4 v6, 0x0

    const v0, 0x2dd218ba

    invoke-static {v12, v0, v4, v12, v6}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :goto_f
    invoke-static {v13, v0}, Lcom/vuitton/android/presentation/utils/AccessibilityUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    const/4 v11, 0x1

    goto :goto_11

    :cond_16
    const/4 v6, 0x0

    const v0, 0x2dd556b4

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :goto_11
    invoke-static {v2, v3, v1, v11}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v14, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/16 v18, 0x6

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v0

    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;->a:Z

    if-eqz v0, :cond_17

    const v0, 0x2ddc6bb8

    const/4 v6, 0x0

    invoke-static {v12, v0, v5, v12, v6}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v0

    :goto_12
    move-object v6, v0

    goto :goto_13

    :cond_17
    const/4 v6, 0x0

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;->c:Z

    if-eqz v0, :cond_18

    const v0, 0x2ddec322

    invoke-static {v12, v0, v4, v12, v6}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_18
    const v0, 0x2de08d5a

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const-string v0, ""

    goto :goto_12

    :goto_13
    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    new-instance v3, Landroidx/compose/ui/text/style/TextAlign;

    move/from16 v4, p3

    invoke-direct {v3, v4}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v27, 0x0

    const v28, 0x1fbf8

    const-wide/16 v10, 0x0

    move-object/from16 v25, v12

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v0

    move-object/from16 v16, v3

    invoke-static/range {v6 .. v28}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v12, v25

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_14
    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v9, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v8, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v6, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v7, 0x0

    const/4 v10, 0x2

    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v2, v2, v1}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;

    move/from16 v0, v32

    const/16 v1, 0x100

    if-ne v0, v1, :cond_19

    const/4 v10, 0x1

    goto :goto_15

    :cond_19
    move v10, v4

    :goto_15
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v10, :cond_1b

    move-object/from16 v15, v39

    if-ne v0, v15, :cond_1a

    goto :goto_16

    :cond_1a
    move-object/from16 v5, p2

    goto :goto_17

    :cond_1b
    :goto_16
    new-instance v0, Lna;

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    const/4 v9, 0x6

    invoke-direct {v0, v5, v1, v9}, Lna;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_17
    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function0;

    sget-object v11, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    const/high16 v13, 0x30000

    const/16 v14, 0xc

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v14}, Lcom/vuitton/android/presentation/compose/components/DownloadIndicatorKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;IILkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;II)V

    const/4 v11, 0x1

    invoke-static {v12, v11, v11, v11}, Lpq0;->x(Landroidx/compose/runtime/GapComposer;ZZZ)V

    goto :goto_18

    :cond_1c
    const/4 v2, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v2

    :cond_1d
    const/4 v2, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v2

    :cond_1e
    const/4 v2, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v2

    :cond_1f
    move-object/from16 v33, v3

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_18
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_20

    new-instance v0, Lrv;

    const/16 v2, 0xd

    move-object/from16 v4, p1

    move/from16 v1, p4

    move-object/from16 v3, v33

    invoke-direct/range {v0 .. v5}, Lrv;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method
