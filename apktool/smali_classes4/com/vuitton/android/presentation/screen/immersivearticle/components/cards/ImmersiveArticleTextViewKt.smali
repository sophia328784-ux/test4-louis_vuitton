.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleTextViewKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleTextViewKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u00a8\u0006\u0003\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/unit/Dp;",
        "height",
        "width",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;ZLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Lcom/vuitton/android/presentation/screen/immersivearticle/components/NextSectionProductTabs;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->p:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleDisclaimerUiModel;

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->o:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->l:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->m:Ljava/util/List;

    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->g:Ljava/lang/String;

    iget-object v10, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->n:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    const-string v11, "ImmersiveArticleTextView"

    if-eqz v0, :cond_0

    invoke-static {v0, v11}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v12, 0x31cc8dac

    move-object/from16 v13, p6

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    iget-object v12, v15, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/16 v13, 0x20

    goto :goto_0

    :cond_1
    const/16 v13, 0x10

    :goto_0
    or-int v13, p7, v13

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_2

    const/16 v14, 0x100

    goto :goto_1

    :cond_2
    const/16 v14, 0x80

    :goto_1
    or-int/2addr v13, v14

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v14

    if-eqz v14, :cond_3

    const/16 v14, 0x800

    goto :goto_2

    :cond_3
    const/16 v14, 0x400

    :goto_2
    or-int/2addr v13, v14

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/16 v14, 0x4000

    goto :goto_3

    :cond_4
    const/16 v14, 0x2000

    :goto_3
    or-int/2addr v13, v14

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/high16 v14, 0x20000

    goto :goto_4

    :cond_5
    const/high16 v14, 0x10000

    :goto_4
    or-int v36, v13, v14

    const v13, 0x12493

    and-int v13, v36, v13

    const v14, 0x12492

    const/4 v3, 0x0

    if-eq v13, v14, :cond_6

    const/4 v13, 0x1

    goto :goto_5

    :cond_6
    move v13, v3

    :goto_5
    and-int/lit8 v14, v36, 0x1

    invoke-virtual {v15, v14, v13}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v13

    if-eqz v13, :cond_45

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/16 v37, 0x0

    if-eqz v10, :cond_7

    iget-object v13, v10, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->a:Ljava/lang/String;

    if-eqz v13, :cond_7

    invoke-static {v13}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v13

    goto :goto_6

    :cond_7
    move-object/from16 v13, v37

    :goto_6
    if-nez v13, :cond_8

    const v13, -0xf1ff483

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_8
    const v14, -0xf1fffa7    # -5.546005E29f

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v13, v13, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_7
    sget-object v3, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v13, v14, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v26, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    move-object/from16 v38, v0

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    invoke-static {v15, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v39, v8

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v12, :cond_44

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v40, v9

    iget-boolean v9, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_9

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_8
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v13, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v0, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v0, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v27, v12

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v3, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/Density;

    move-object/from16 v16, v13

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v41, v1

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v6, 0x0

    if-ne v13, v1, :cond_a

    new-instance v13, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v13, v6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v13}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v13, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_b

    new-instance v6, Landroidx/compose/ui/unit/Dp;

    move-object/from16 v17, v13

    const/4 v13, 0x0

    invoke-direct {v6, v13}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_9

    :cond_b
    move-object/from16 v17, v13

    :goto_9
    check-cast v6, Landroidx/compose/runtime/MutableState;

    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v7, :cond_e

    move-object/from16 v18, v14

    iget-object v14, v7, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v14, :cond_d

    iget-object v14, v14, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    if-eqz v14, :cond_d

    invoke-static {v14}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v42, v4

    const/4 v4, 0x1

    if-ne v14, v4, :cond_c

    const v4, -0x4b2e0900    # -3.9109E-7f

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/Dp;

    iget v4, v4, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/unit/Dp;

    iget v14, v14, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {v13, v14, v4}, Landroidx/compose/foundation/layout/SizeKt;->p(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v7, v7, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v14, v7, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v32, v15

    sget-object v15, Landroidx/compose/ui/layout/ContentScale$Companion;->h:Landroidx/compose/ui/layout/ContentScale$Companion$FillBounds$1;

    const/16 v24, 0x180

    const/16 v25, 0x7f8

    move-object/from16 v7, v16

    const/16 v16, 0x0

    move-object/from16 v19, v17

    const/16 v17, 0x0

    move-object/from16 v20, v18

    const/16 v18, 0x0

    move-object/from16 v21, v19

    const/16 v19, 0x0

    move-object/from16 v22, v20

    const/16 v20, 0x0

    move-object/from16 v23, v21

    const/16 v21, 0x0

    move-object/from16 v29, v22

    const/16 v22, 0x0

    move-object/from16 v43, v13

    move-object v13, v4

    move-object/from16 v4, v29

    move-object/from16 v29, v12

    move-object/from16 v12, v43

    move-object/from16 v43, v10

    move-object/from16 v10, v23

    move-object/from16 v23, v32

    invoke-static/range {v13 .. v25}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v23

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_d

    :cond_c
    :goto_a
    move-object/from16 v43, v10

    move-object/from16 v29, v12

    move-object v12, v13

    move-object/from16 v7, v16

    move-object/from16 v10, v17

    move-object/from16 v4, v18

    :goto_b
    const/4 v14, 0x0

    goto :goto_c

    :cond_d
    move-object/from16 v42, v4

    goto :goto_a

    :cond_e
    move-object/from16 v42, v4

    move-object/from16 v43, v10

    move-object/from16 v29, v12

    move-object v12, v13

    move-object v4, v14

    move-object/from16 v7, v16

    move-object/from16 v10, v17

    goto :goto_b

    :goto_c
    const v13, -0x4b2993d0

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_d
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v11, v13}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v16, :cond_10

    if-ne v13, v1, :cond_f

    goto :goto_e

    :cond_f
    move-object/from16 v44, v1

    goto :goto_f

    :cond_10
    :goto_e
    new-instance v13, Lu30;

    move-object/from16 v44, v1

    const/4 v1, 0x0

    invoke-direct {v13, v3, v10, v6, v1}, Lu30;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_f
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v13}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleTextViewKt$WhenMappings;->a:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v3, v6

    const/4 v10, 0x2

    const/4 v13, 0x1

    if-eq v6, v13, :cond_14

    if-ne v6, v10, :cond_13

    const v6, -0x4b1d307d

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz v5, :cond_11

    iget-boolean v6, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/components/NextSectionProductTabs;->a:Z

    if-eqz v6, :cond_11

    const v6, -0x4b1c0a98

    invoke-static {v15, v6, v11}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v18

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/16 v23, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v22, v6

    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v13, 0x0

    invoke-static {v6, v12, v13, v10}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_11
    const v6, -0x4b17c6b1

    invoke-static {v15, v6, v11}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v18

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_12

    const v6, -0x4b14c00e

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    move/from16 v22, v6

    goto :goto_11

    :cond_12
    const/4 v14, 0x0

    const v6, -0x4b12c08e

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :goto_11
    const/16 v23, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v13, 0x0

    invoke-static {v6, v12, v13, v10}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_13
    const/4 v14, 0x0

    const v0, -0x7e4b7702

    invoke-static {v15, v0, v14}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_14
    const/4 v14, 0x0

    const v6, -0x4b221bbe

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->k:F

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v13

    iget v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v12, v13, v6}, Landroidx/compose/foundation/layout/PaddingKt;->j(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    invoke-interface {v1, v6}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->k:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleAlignmentUiModel;

    sget-object v12, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleTextViewKt$WhenMappings;->c:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v12, v6

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-eq v6, v13, :cond_19

    if-eq v6, v10, :cond_17

    if-ne v6, v12, :cond_16

    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    sget-object v13, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v6, v13, :cond_15

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->p:Landroidx/compose/ui/BiasAlignment$Horizontal;

    goto :goto_14

    :cond_15
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    goto :goto_14

    :cond_16
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_17
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    sget-object v13, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v6, v13, :cond_18

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    goto :goto_14

    :cond_18
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->p:Landroidx/compose/ui/BiasAlignment$Horizontal;

    goto :goto_14

    :cond_19
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    :goto_14
    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    const/4 v14, 0x0

    invoke-static {v13, v6, v15, v14}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v6

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v15, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v27, :cond_43

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_1a

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_15

    :cond_1a
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_15
    invoke-static {v15, v6, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v15, v14, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v15, v4, v15, v0}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v0, v29

    invoke-static {v15, v1, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->e:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const v0, -0x5697579c

    invoke-static {v15, v0, v11}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v18

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v23, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v22, v0

    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v14

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleTextViewKt;->b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;)I

    move-result v0

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;->HANLEY_PRO:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    if-ne v1, v4, :cond_1b

    const v1, -0x5691dcbd

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v23, Landroidx/compose/ui/text/font/FontWeight;->g:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v33, 0x0

    const v34, 0xfffffb

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    move-object/from16 v18, v1

    invoke-static/range {v18 .. v34}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_16
    move-object/from16 v31, v1

    goto :goto_17

    :cond_1b
    const/4 v4, 0x0

    const v1, -0x568f0b62

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_16

    :goto_17
    move-object/from16 v1, v43

    if-eqz v43, :cond_1c

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->b:Ljava/lang/String;

    if-eqz v4, :cond_1c

    invoke-static {v4}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    goto :goto_18

    :cond_1c
    move-object/from16 v4, v37

    :goto_18
    if-nez v4, :cond_1d

    const v4, 0x689026d5

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :cond_1d
    const/4 v8, 0x0

    const v6, 0x68901b73

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v6, v4, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_19
    new-instance v4, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v4, v0}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v34, 0x6000

    const v35, 0x1bbf8

    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x2

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x0

    move-object/from16 v23, v4

    move-object/from16 v32, v15

    move-wide v15, v6

    invoke-static/range {v13 .. v35}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v32

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :cond_1e
    move-object/from16 v1, v43

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const v4, -0x568a9b86

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1a
    if-eqz v1, :cond_1f

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->b:Ljava/lang/String;

    if-eqz v1, :cond_1f

    invoke-static {v1}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    goto :goto_1b

    :cond_1f
    move-object/from16 v1, v37

    :goto_1b
    if-nez v1, :cond_20

    const v1, 0x68903b36

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1c

    :cond_20
    const/4 v14, 0x0

    const v4, 0x689032bc

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v6, v1, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_1c
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->c:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    const v1, -0x5686fc6e

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v13, 0x1

    if-eq v1, v13, :cond_23

    if-ne v1, v10, :cond_22

    const v1, -0x56813e5a

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_21

    const v1, -0x56803357

    invoke-static {v15, v1, v11}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v16

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v21, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v1

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1d

    :cond_21
    const/4 v14, 0x0

    const v1, -0x567dee55

    invoke-static {v15, v1, v14, v11}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v16

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v21, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    :goto_1d
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1e

    :cond_22
    const/4 v14, 0x0

    const v0, 0x689054cd

    invoke-static {v15, v0, v14}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_23
    const/4 v14, 0x0

    const v1, -0x5684904f

    invoke-static {v15, v1, v11}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v16

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v21, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v1

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1e
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v4, v44

    if-ne v3, v4, :cond_24

    new-instance v3, Lx20;

    const/4 v8, 0x3

    invoke-direct {v3, v8}, Lx20;-><init>(I)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v14, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleTextViewKt;->b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;)I

    move-result v3

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;->HANLEY_PRO:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    if-ne v8, v9, :cond_25

    const v8, -0x56772218

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->e:Landroidx/compose/ui/text/TextStyle;

    sget-object v9, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v21, Landroidx/compose/ui/text/font/FontWeight;->g:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v31, 0x0

    const v32, 0xfffffb

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    move-object/from16 v16, v8

    invoke-static/range {v16 .. v32}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v8

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1f
    move-object/from16 v31, v8

    goto :goto_20

    :cond_25
    const/4 v14, 0x0

    const v8, -0x5674641d

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->e:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1f

    :goto_20
    new-instance v8, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v8, v3}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v34, 0x0

    const v35, 0x1fbf8

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x0

    move-object v14, v1

    move-object/from16 v23, v8

    move-object/from16 v32, v15

    move-wide v15, v6

    invoke-static/range {v13 .. v35}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v32

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_21

    :cond_26
    move-object/from16 v4, v44

    const/4 v14, 0x0

    const v1, -0x567202a6

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_21
    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2a

    const v1, -0x5670973f

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleTextViewKt;->b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;)I

    move-result v1

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->j:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleTypeUiModel;

    sget-object v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleTypeUiModel;->CITATION:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleTypeUiModel;

    if-ne v3, v8, :cond_29

    const v3, -0x566d2343

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->h:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    sget-object v8, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleTextViewKt$WhenMappings;->b:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v8, v3

    const/4 v8, 0x1

    if-eq v3, v8, :cond_28

    if-eq v3, v10, :cond_27

    const v3, 0x689145f0

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->d:Landroidx/compose/ui/text/TextStyle;

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_22

    :cond_27
    const/4 v14, 0x0

    const v3, 0x68913c51

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v3, Lcom/vuitton/android/presentation/compose/theme/LVImmersiveArticleTextStyle;->a:Landroidx/compose/ui/text/TextStyle;

    goto :goto_22

    :cond_28
    const/4 v14, 0x0

    const v3, 0x68912ef6

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v3, Lcom/vuitton/android/presentation/compose/theme/LVImmersiveArticleTextStyle;->b:Landroidx/compose/ui/text/TextStyle;

    :goto_22
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_23
    move-object/from16 v31, v3

    goto :goto_24

    :cond_29
    const/4 v14, 0x0

    const v3, -0x56678e7a

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->g:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_23

    :goto_24
    new-instance v3, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v3, v1}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v34, 0x0

    const v35, 0x1fbfa

    const/4 v14, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x0

    move-object/from16 v23, v3

    move-object/from16 v32, v15

    move-wide v15, v6

    invoke-static/range {v13 .. v35}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v32

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_25

    :cond_2a
    const/4 v14, 0x0

    const v1, -0x56653846

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_25
    move-object/from16 v8, v39

    check-cast v8, Ljava/util/Collection;

    invoke-static {v8}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v1

    const/high16 v3, 0x70000

    if-eqz v1, :cond_39

    const v1, -0x56635e6f

    invoke-static {v15, v1, v11}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    invoke-static {v1, v6}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v15, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v8, v39

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-ltz v6, :cond_37

    check-cast v7, Lkotlin/Pair;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    move-object/from16 v10, v42

    if-eqz v42, :cond_2b

    iget-object v12, v10, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->a:Ljava/lang/String;

    if-eqz v12, :cond_2b

    invoke-static {v12}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v12

    goto :goto_27

    :cond_2b
    move-object/from16 v12, v37

    :goto_27
    if-nez v12, :cond_2c

    const v12, -0x55d23078

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    iget-wide v12, v12, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->a:J

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_28
    move-wide/from16 v17, v12

    goto :goto_29

    :cond_2c
    const/4 v14, 0x0

    const v13, -0x55d23e08

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v12, v12, Landroidx/compose/ui/graphics/Color;->a:J

    goto :goto_28

    :goto_29
    if-eqz v10, :cond_2d

    iget-object v12, v10, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->b:Ljava/lang/String;

    if-eqz v12, :cond_2d

    invoke-static {v12}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v12

    goto :goto_2a

    :cond_2d
    move-object/from16 v12, v37

    :goto_2a
    if-nez v12, :cond_2e

    const v12, -0x55d21bbb

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    iget-wide v12, v12, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->d:J

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2b
    move-wide/from16 v19, v12

    goto :goto_2c

    :cond_2e
    const/4 v14, 0x0

    const v13, -0x55d22891

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v12, v12, Landroidx/compose/ui/graphics/Color;->a:J

    goto :goto_2b

    :goto_2c
    const/16 v24, 0x0

    const/16 v25, 0x1ff6

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v9

    invoke-static/range {v16 .. v25}, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->a(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;JJLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/PaddingValuesImpl;FI)Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    move-result-object v17

    invoke-static {v11, v0}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    iget-object v9, v7, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v9, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    instance-of v9, v9, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$PushNotification;

    if-eqz v9, :cond_30

    const v9, -0x646dbb74

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz p2, :cond_2f

    const v9, 0x7f1406e4

    goto :goto_2d

    :cond_2f
    const v9, 0x7f1406e0

    :goto_2d
    invoke-static {v15, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2e
    move-object/from16 v20, v9

    goto :goto_2f

    :cond_30
    const/4 v14, 0x0

    const v9, -0x64671100

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-object v9, v7, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    goto :goto_2e

    :goto_2f
    iget-object v9, v7, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v9, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    instance-of v9, v9, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$PushNotification;

    if-eqz v9, :cond_32

    const v9, -0x646384ad

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz p2, :cond_31

    const v9, -0x6462a523

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->R:I

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_30

    :cond_31
    const/4 v14, 0x0

    const v9, -0x6460ec1d

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->Q:I

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_30
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v18, v9

    goto :goto_31

    :cond_32
    const/4 v14, 0x0

    const v9, -0x645e653c

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v18, v37

    :goto_31
    and-int v9, v36, v3

    const/high16 v12, 0x20000

    if-ne v9, v12, :cond_33

    const/4 v9, 0x1

    goto :goto_32

    :cond_33
    const/4 v9, 0x0

    :goto_32
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v9, v12

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v9, :cond_35

    if-ne v12, v4, :cond_34

    goto :goto_33

    :cond_34
    move-object/from16 v9, p5

    goto :goto_34

    :cond_35
    :goto_33
    new-instance v12, Lt30;

    move-object/from16 v9, p5

    const/4 v13, 0x1

    invoke-direct {v12, v9, v7, v13}, Lt30;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_34
    move-object/from16 v21, v12

    check-cast v21, Lkotlin/jvm/functions/Function0;

    const/4 v13, 0x6

    const/16 v14, 0x1f0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v13 .. v24}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-static/range {v39 .. v39}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/List;)I

    move-result v7

    if-ge v6, v7, :cond_36

    const v6, -0x645ae0a8

    invoke-static {v15, v6, v11}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v6

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v14, 0x0

    invoke-static {v6, v7, v15, v14}, Lcj;->x(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;FLandroidx/compose/runtime/GapComposer;Z)V

    goto :goto_35

    :cond_36
    const/4 v14, 0x0

    const v6, -0x64584837

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_35
    move v6, v8

    move-object/from16 v42, v10

    goto/16 :goto_26

    :cond_37
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v37

    :cond_38
    move-object/from16 v9, p5

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_36

    :cond_39
    move-object/from16 v9, p5

    const/4 v14, 0x0

    const v1, -0x5641ebc6

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_36
    if-eqz v41, :cond_42

    const v1, -0x5640da39

    invoke-static {v15, v1, v11}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v1, v6}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v15, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_3a

    if-ne v6, v4, :cond_3b

    :cond_3a
    new-instance v6, Ll00;

    const/16 v1, 0x8

    invoke-direct {v6, v2, v1}, Ll00;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3b
    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    invoke-static {v0, v14, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    move-object/from16 v0, v41

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleDisclaimerUiModel;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleDisclaimerUiModel;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;

    if-eqz v0, :cond_3c

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;->a:Ljava/lang/String;

    move-object/from16 v18, v1

    goto :goto_37

    :cond_3c
    move-object/from16 v18, v37

    :goto_37
    if-eqz v0, :cond_3d

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    goto :goto_38

    :cond_3d
    move-object/from16 v0, v37

    :goto_38
    if-nez v0, :cond_3e

    const v0, -0x5637c6cd

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_39
    move-object/from16 v19, v37

    goto :goto_3b

    :cond_3e
    const v1, -0x5637c6cc

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int v1, v36, v3

    const/high16 v12, 0x20000

    if-ne v1, v12, :cond_3f

    const/4 v1, 0x1

    goto :goto_3a

    :cond_3f
    const/4 v1, 0x0

    :goto_3a
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_40

    if-ne v3, v4, :cond_41

    :cond_40
    new-instance v3, Llj;

    const/4 v1, 0x5

    invoke-direct {v3, v9, v0, v1}, Llj;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;I)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_41
    move-object/from16 v37, v3

    check-cast v37, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_39

    :goto_3b
    const/16 v21, 0x0

    const/16 v22, 0xc

    move-object/from16 v32, v15

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v20, v32

    invoke-static/range {v13 .. v22}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDisclaimerKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;JLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v20

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_3c
    const/4 v13, 0x1

    goto :goto_3d

    :cond_42
    const/4 v8, 0x0

    const v0, -0x56354fe6

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_3c

    :goto_3d
    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_3e

    :cond_43
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v37

    :cond_44
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v37

    :cond_45
    move-object/from16 v38, v0

    move-object v9, v6

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_3e
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_46

    new-instance v0, Lhg;

    const/4 v8, 0x6

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p7

    move-object v6, v9

    move-object/from16 v1, v38

    invoke-direct/range {v0 .. v8}, Lhg;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Lkotlin/Function;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_46
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;)I
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->k:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleAlignmentUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleTextViewKt$WhenMappings;->c:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/compose/ui/text/style/TextAlign;->c:I

    return p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object p0, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/compose/ui/text/style/TextAlign;->d:I

    return p0

    :cond_2
    sget-object p0, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/compose/ui/text/style/TextAlign;->e:I

    return p0
.end method
