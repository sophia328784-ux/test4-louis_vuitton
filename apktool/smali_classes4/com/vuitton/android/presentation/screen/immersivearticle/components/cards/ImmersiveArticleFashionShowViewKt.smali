.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleFashionShowViewKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;Lcom/vuitton/android/presentation/model/common/A11ySettings;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x2fe7f27c

    move-object/from16 v4, p5

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p6, v0

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v0, v5

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v0, v5

    move-object/from16 v5, p3

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x800

    goto :goto_3

    :cond_3
    const/16 v6, 0x400

    :goto_3
    or-int/2addr v0, v6

    move-object/from16 v6, p4

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x4000

    goto :goto_4

    :cond_4
    const/16 v7, 0x2000

    :goto_4
    or-int/2addr v0, v7

    and-int/lit16 v7, v0, 0x2493

    const/16 v8, 0x2492

    const/4 v11, 0x0

    if-eq v7, v8, :cond_5

    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    move v7, v11

    :goto_5
    and-int/lit8 v8, v0, 0x1

    invoke-virtual {v9, v8, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_21

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->m:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    iget-boolean v14, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->i:Z

    iget-object v15, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->k:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowContentUiModel;

    move-object/from16 v16, v15

    iget-object v15, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->l:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/16 v27, 0x0

    if-nez v8, :cond_6

    const v7, -0x1f078d2e

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v8, v27

    goto :goto_6

    :cond_6
    const v8, -0x1f078d2d

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v4, :cond_7

    new-instance v8, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    invoke-direct {v8, v7}, Lcom/vuitton/android/presentation/compose/LvExoPlayer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v8, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_6
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_9

    if-eqz v8, :cond_8

    iget-boolean v4, v2, Lcom/vuitton/android/presentation/model/common/A11ySettings;->a:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_7

    :cond_8
    move v4, v11

    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v11, "ImmersiveArticleFashionShowView"

    invoke-direct {v7, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    if-eqz v15, :cond_a

    iget-object v10, v15, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->a:Ljava/lang/String;

    if-eqz v10, :cond_a

    invoke-static {v10}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v10

    goto :goto_8

    :cond_a
    move-object/from16 v10, v27

    :goto_8
    if-nez v10, :cond_b

    const v10, -0x2a4a6af3

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move/from16 v19, v4

    iget-wide v4, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :cond_b
    move/from16 v19, v4

    const/4 v4, 0x0

    const v5, -0x2a4a7617

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v4, v10, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_9
    sget-object v10, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v7, v4, v5, v10}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    const/16 v10, 0x30

    invoke-static {v7, v5, v9, v10}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v5

    iget-wide v6, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v9, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move/from16 v28, v0

    iget-object v0, v9, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v0, :cond_20

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v0, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_c

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_c
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_a
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v5, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v7, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v0, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v9, v4, v0, v11, v5}, Ln00;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    move v0, v5

    invoke-static {v13}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleHelper;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;)F

    move-result v5

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    sget-object v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;->FULLSCREEN:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    if-ne v13, v7, :cond_d

    const/4 v7, 0x1

    goto :goto_b

    :cond_d
    const/4 v7, 0x0

    :goto_b
    xor-int/lit8 v10, v14, 0x1

    move v13, v10

    iget-boolean v10, v2, Lcom/vuitton/android/presentation/model/common/A11ySettings;->a:Z

    move-object/from16 v20, v11

    iget-boolean v11, v2, Lcom/vuitton/android/presentation/model/common/A11ySettings;->b:Z

    new-instance v0, Lf1;

    const/16 v2, 0x18

    invoke-direct {v0, v1, v3, v2}, Lf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v2, -0x59d6e457

    invoke-static {v2, v0, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    move-object v2, v15

    const/16 v15, 0x6006

    move-object v3, v2

    move-object/from16 v29, v12

    move/from16 p5, v14

    move-object/from16 v30, v16

    const/4 v2, 0x0

    move-object v12, v8

    move-object v14, v9

    move v9, v13

    move/from16 v8, v19

    move-object v13, v0

    move-object/from16 v0, v20

    invoke-static/range {v4 .. v15}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleFashionShowViewKt;->b(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/presentation/model/common/AssetUiModel;ZZZZZLcom/vuitton/android/presentation/compose/LvExoPlayer;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    move-object v9, v14

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->k:F

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v9, v4}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    if-eqz p5, :cond_11

    const v4, 0x7b82f84a

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->h:Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    iget-object v7, v4, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->c:Ljava/time/Instant;

    if-nez v7, :cond_e

    const v4, -0xb23ef09

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_f

    :cond_e
    const v4, -0xb23ef08

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz v3, :cond_f

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->b:Ljava/lang/String;

    if-eqz v4, :cond_f

    invoke-static {v4}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    goto :goto_c

    :cond_f
    move-object/from16 v4, v27

    :goto_c
    if-nez v4, :cond_10

    const v4, -0x2e5a1789

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_d
    move-wide v5, v4

    goto :goto_e

    :cond_10
    const v5, -0x2e5a22eb

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v4, v4, Landroidx/compose/ui/graphics/Color;->a:J

    goto :goto_d

    :goto_e
    shr-int/lit8 v4, v28, 0x3

    and-int/lit16 v10, v4, 0x1c00

    const/4 v11, 0x1

    const/4 v4, 0x0

    move-object/from16 v8, p4

    invoke-static/range {v4 .. v11}, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt;->a(Landroidx/compose/ui/Modifier;JLjava/time/Instant;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->k:F

    invoke-static {v4, v5, v9, v2}, Lcj;->x(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;FLandroidx/compose/runtime/GapComposer;Z)V

    :goto_f
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :cond_11
    const v4, -0xb1d5490

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    if-nez v30, :cond_12

    const v3, -0xb1c2024

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_19

    :cond_12
    const v4, -0xb1c2023

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v4, v30

    iget-object v5, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowContentUiModel;->a:Ljava/lang/String;

    if-nez v5, :cond_13

    const v5, 0x1a660aa0

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v1, v4

    goto/16 :goto_13

    :cond_13
    const v6, 0x1a660aa1

    invoke-static {v9, v6, v0}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v10

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v11, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v13, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v14, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v15, 0x2

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Landroidx/compose/ui/text/style/TextAlign;->e:I

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    if-eqz v3, :cond_14

    iget-object v10, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->b:Ljava/lang/String;

    if-eqz v10, :cond_14

    invoke-static {v10}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v10

    goto :goto_11

    :cond_14
    move-object/from16 v10, v27

    :goto_11
    if-nez v10, :cond_15

    const v10, 0x5c9b9c73

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_15
    const v11, 0x5c9b9111

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v10, v10, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_12
    new-instance v14, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v14, v7}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v25, 0x0

    const v26, 0x1fbf8

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    const-wide/16 v8, 0x0

    move-object/from16 v16, v4

    move-object v4, v5

    move-object v5, v6

    move-wide v6, v10

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v30, v16

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    move-object/from16 v1, v30

    invoke-static/range {v4 .. v26}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v9, v23

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v11, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v13, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v14, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v15, 0x2

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowContentUiModel;->b:Ljava/lang/String;

    sget-object v6, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Landroidx/compose/ui/text/style/TextAlign;->e:I

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->e:Landroidx/compose/ui/text/TextStyle;

    if-eqz v3, :cond_16

    iget-object v8, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->b:Ljava/lang/String;

    if-eqz v8, :cond_16

    invoke-static {v8}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    goto :goto_14

    :cond_16
    move-object/from16 v8, v27

    :goto_14
    if-nez v8, :cond_17

    const v8, 0x536f3871

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v10, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :cond_17
    const v10, 0x536f2d8b

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v10, v8, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_15
    new-instance v14, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v14, v6}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v25, 0x0

    const v26, 0x1fbf8

    move-object/from16 v23, v9

    const-wide/16 v8, 0x0

    move-object/from16 v22, v7

    move-wide v6, v10

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    invoke-static/range {v4 .. v26}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v9, v23

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowContentUiModel;->c:Ljava/lang/String;

    if-nez v4, :cond_18

    const v1, 0x1a7916f3

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_18

    :cond_18
    const v1, 0x1a7916f4

    invoke-static {v9, v1, v0}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v1, v5, v6, v7}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->g:Landroidx/compose/ui/text/TextStyle;

    if-eqz v3, :cond_19

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->b:Ljava/lang/String;

    if-eqz v3, :cond_19

    invoke-static {v3}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    goto :goto_16

    :cond_19
    move-object/from16 v3, v27

    :goto_16
    if-nez v3, :cond_1a

    const v3, -0x18af4c97

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_17

    :cond_1a
    const v6, -0x18af57f9

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v6, v3, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_17
    const/16 v25, 0x0

    const v26, 0x1fff8

    move-object/from16 v23, v9

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, v1

    invoke-static/range {v4 .. v26}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v9, v23

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_18
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_19
    if-eqz p5, :cond_1f

    const v1, -0xb01d0a9

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v1

    iget-object v10, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    move-object/from16 v1, v29

    if-eqz v29, :cond_1b

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->a:Ljava/lang/String;

    if-eqz v3, :cond_1b

    invoke-static {v3}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    goto :goto_1a

    :cond_1b
    move-object/from16 v3, v27

    :goto_1a
    if-nez v3, :cond_1c

    const v3, 0x7b842b21

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    iget-wide v3, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->a:J

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1b
    move-wide v11, v3

    goto :goto_1c

    :cond_1c
    const v4, 0x7b841e89

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->a:J

    goto :goto_1b

    :goto_1c
    if-eqz v1, :cond_1d

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->b:Ljava/lang/String;

    if-eqz v1, :cond_1d

    invoke-static {v1}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v27

    :cond_1d
    move-object/from16 v1, v27

    if-nez v1, :cond_1e

    const v1, 0x7b843dde

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    iget-wide v3, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->d:J

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1d
    move-wide v13, v3

    goto :goto_1e

    :cond_1e
    const v3, 0x7b843200

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v3, v1, Landroidx/compose/ui/graphics/Color;->a:J

    goto :goto_1d

    :goto_1e
    const/16 v18, 0x0

    const/16 v19, 0x1ff6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v10 .. v19}, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->a(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;JJLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/PaddingValuesImpl;FI)Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    move-result-object v8

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    invoke-static {v1, v0, v3}, Landroidx/compose/foundation/layout/PaddingKt;->j(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const v0, 0x7f1403d6

    invoke-static {v9, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    shl-int/lit8 v0, v28, 0x12

    const/high16 v1, 0x70000000

    and-int v4, v0, v1

    const/16 v5, 0x1f8

    move-object/from16 v23, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v12, p3

    move-object/from16 v6, v23

    invoke-static/range {v4 .. v15}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    move-object v9, v6

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1f
    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const v0, -0xaf590f0

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1f

    :goto_20
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_21

    :cond_20
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v27

    :cond_21
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_21
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_22

    new-instance v0, Lw;

    const/16 v7, 0x17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/Function;Lkotlin/Function;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_22
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/presentation/model/common/AssetUiModel;ZZZZZLcom/vuitton/android/presentation/compose/LvExoPlayer;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 38

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v1, p7

    move-object/from16 v5, p8

    const-string v8, "TopAssetWithGradients"

    if-eqz v0, :cond_0

    invoke-static {v0, v8}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v9, 0x1aa3b221

    move-object/from16 v10, p10

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    iget-object v10, v9, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v11

    if-eqz v11, :cond_1

    const/16 v11, 0x20

    goto :goto_0

    :cond_1
    const/16 v11, 0x10

    :goto_0
    or-int v11, p11, v11

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v12, 0x100

    goto :goto_1

    :cond_2
    const/16 v12, 0x80

    :goto_1
    or-int/2addr v11, v12

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x800

    goto :goto_2

    :cond_3
    const/16 v12, 0x400

    :goto_2
    or-int/2addr v11, v12

    const/high16 v12, 0x30000

    and-int v12, p11, v12

    if-nez v12, :cond_5

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_4

    const/high16 v12, 0x20000

    goto :goto_3

    :cond_4
    const/high16 v12, 0x10000

    :goto_3
    or-int/2addr v11, v12

    :cond_5
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_6

    const/high16 v12, 0x100000

    goto :goto_4

    :cond_6
    const/high16 v12, 0x80000

    :goto_4
    or-int/2addr v11, v12

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_7

    const/high16 v12, 0x800000

    goto :goto_5

    :cond_7
    const/high16 v12, 0x400000

    :goto_5
    or-int/2addr v11, v12

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/high16 v12, 0x4000000

    goto :goto_6

    :cond_8
    const/high16 v12, 0x2000000

    :goto_6
    or-int/2addr v11, v12

    const/high16 v12, 0x30000000

    or-int/2addr v11, v12

    const v12, 0x12492493

    and-int/2addr v12, v11

    const v13, 0x12492492

    const/4 v15, 0x0

    if-ne v12, v13, :cond_9

    move v12, v15

    goto :goto_7

    :cond_9
    const/4 v12, 0x1

    :goto_7
    and-int/lit8 v13, v11, 0x1

    invoke-virtual {v9, v13, v12}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v12

    if-eqz v12, :cond_1b

    sget-object v12, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v12, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v12, Landroidx/compose/ui/graphics/Color;->h:J

    sget-object v14, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v12, v13, v14}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v13, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v13, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    move-object/from16 v16, v10

    move/from16 p10, v11

    iget-wide v10, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v9, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move-object/from16 v33, v0

    if-eqz v16, :cond_1a

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v0, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_a

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_8
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v14, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v11, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v10, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v10}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v12, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v12, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v12, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v7, p3, 0x1

    new-instance v5, Lbw;

    move-object/from16 v23, v8

    const/4 v8, 0x3

    invoke-direct {v5, v2, v8}, Lbw;-><init>(FI)V

    const/4 v8, 0x6

    invoke-static {v12, v7, v5, v9, v8}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v24

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v12, :cond_b

    new-instance v5, Lm10;

    const/16 v8, 0x18

    invoke-direct {v5, v8}, Lm10;-><init>(I)V

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v28, v5

    check-cast v28, Lkotlin/jvm/functions/Function0;

    const/16 v29, 0xf

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v24 .. v29}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    new-instance v8, Lrq;

    move-object/from16 v18, v12

    const/16 v12, 0x19

    invoke-direct {v8, v12}, Lrq;-><init>(I)V

    const/16 v12, 0x30

    move/from16 v19, v7

    move/from16 v7, p4

    invoke-static {v5, v7, v8, v9, v12}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    new-instance v8, Lp4;

    const/4 v12, 0x2

    const/4 v7, 0x0

    invoke-direct {v8, v1, v12, v7}, Lp4;-><init>(ZIB)V

    shr-int/lit8 v12, p10, 0xc

    and-int/lit8 v12, v12, 0x70

    invoke-static {v5, v6, v8, v9, v12}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v13, v7}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    move-object v12, v8

    iget-wide v7, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v9, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v16, :cond_19

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v1, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v1, :cond_c

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_c
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_9
    invoke-static {v9, v12, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9, v8, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7, v9, v11, v9, v10}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v9, v5, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v3, :cond_d

    iget-object v1, v3, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_e

    const v1, -0x422eb891

    move-object/from16 v5, v23

    invoke-static {v9, v1, v5}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static {v1, v8, v8, v7}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v7, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    iget-object v7, v3, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v21, 0x180

    const/16 v22, 0x7f8

    move-object v8, v13

    const/4 v13, 0x0

    move-object/from16 v19, v14

    const/4 v14, 0x0

    move-object/from16 v20, v15

    const/4 v15, 0x0

    move-object/from16 v23, v16

    const/16 v16, 0x0

    const/16 v24, 0x0

    const/16 v17, 0x0

    move-object/from16 v25, v18

    const/16 v18, 0x0

    move-object/from16 v26, v19

    const/16 v19, 0x0

    move-object/from16 p0, v10

    move-object v10, v1

    move-object/from16 v1, p0

    move-object/from16 p0, v11

    move-object v11, v7

    move-object/from16 v7, v20

    move-object/from16 v20, v9

    move-object/from16 v9, p0

    move-object/from16 v35, v4

    move-object/from16 p0, v23

    move/from16 v4, v24

    move-object/from16 v6, v25

    invoke-static/range {v10 .. v22}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v10, v20

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v3, v5

    move-object/from16 v36, v6

    move-object v4, v7

    move-object v2, v8

    move-object v5, v9

    move-object/from16 v6, v26

    :goto_b
    const/4 v7, 0x1

    goto/16 :goto_d

    :cond_e
    move-object/from16 v35, v4

    move-object v1, v10

    move-object v8, v13

    move-object/from16 v26, v14

    move-object v7, v15

    move-object/from16 p0, v16

    move-object/from16 v6, v18

    move-object/from16 v5, v23

    const/4 v4, 0x0

    move-object v10, v9

    move-object v9, v11

    if-eqz v3, :cond_f

    iget-object v11, v3, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    goto :goto_c

    :cond_f
    const/4 v11, 0x0

    :goto_c
    if-eqz v11, :cond_11

    if-eqz p8, :cond_11

    const v11, -0x4229daff

    invoke-static {v10, v11, v5}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v11

    new-instance v12, Lbw;

    const/4 v13, 0x4

    invoke-direct {v12, v2, v13}, Lbw;-><init>(FI)V

    move/from16 v13, v19

    const/4 v14, 0x6

    invoke-static {v11, v13, v12, v10, v14}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v11

    iget-object v12, v3, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    move-object v13, v9

    iget-object v9, v12, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    move-object/from16 v15, p8

    move-object/from16 v16, v8

    iget-object v8, v15, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->a:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v12, v12, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->d:Ljava/lang/String;

    sget-object v17, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v30, v14

    sget-object v14, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_10

    new-instance v4, Lx20;

    const/4 v2, 0x1

    invoke-direct {v4, v2}, Lx20;-><init>(I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v25, v4

    check-cast v25, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v2, p10, 0xf

    and-int/lit8 v2, v2, 0x70

    or-int/lit16 v2, v2, 0x6000

    const/16 v31, 0x0

    const v32, 0x1bb718

    move-object/from16 v20, v10

    const/4 v10, 0x0

    move-object v4, v7

    move-object v7, v11

    const/4 v11, 0x0

    move-object/from16 v17, v13

    move-object v13, v12

    const/4 v12, 0x1

    const/4 v15, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move-object/from16 v19, v17

    const/16 v17, 0x0

    move-object/from16 v21, v19

    const/16 v19, 0x0

    move-object/from16 v28, v20

    const/16 v20, 0x0

    move-object/from16 v22, v21

    const/16 v21, 0x4

    move-object/from16 v23, v22

    const/16 v22, 0x0

    move-object/from16 v24, v23

    const/16 v23, 0x0

    move-object/from16 v27, v24

    const/16 v24, 0x0

    move-object/from16 v29, v26

    const/16 v26, 0x0

    move-object/from16 v36, v27

    const/16 v27, 0x0

    move-object/from16 v37, v29

    const/high16 v29, 0xc30000

    move/from16 v30, v2

    move-object v3, v5

    move-object/from16 v2, v18

    move-object/from16 v5, v36

    move/from16 v18, p6

    move-object/from16 v36, v6

    move-object/from16 v6, v37

    invoke-static/range {v7 .. v32}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt;->b(Landroidx/compose/ui/Modifier;Landroidx/media3/exoplayer/ExoPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/String;Landroidx/compose/ui/layout/ContentScale;ZZZZLjava/lang/Boolean;ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;IIII)V

    move-object/from16 v10, v28

    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_b

    :cond_11
    move-object v2, v7

    move v7, v4

    move-object v4, v2

    move-object v3, v5

    move-object/from16 v36, v6

    move-object v2, v8

    move-object v5, v9

    move-object/from16 v6, v26

    const v8, -0x42208d53

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_b

    :goto_d
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v8, v7}, Landroidx/compose/foundation/layout/BoxScopeInstance;->j(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v15, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v16, 0x7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v2, v9}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    iget-wide v11, v10, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v10, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-eqz p0, :cond_18

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_12

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_12
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_e
    invoke-static {v10, v2, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v11, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9, v10, v5, v10, v1}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v0, v35

    invoke-static {v10, v7, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/16 v0, 0x36

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, p9

    invoke-virtual {v1, v8, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-eqz p6, :cond_17

    if-eqz p8, :cond_17

    move-object/from16 v0, p2

    if-eqz p2, :cond_13

    iget-object v2, v0, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    goto :goto_f

    :cond_13
    const/4 v2, 0x0

    :goto_f
    if-eqz v2, :cond_16

    const v2, 0x7d6d6120

    invoke-static {v10, v2, v3}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->j:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v8, v2, v3}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v14, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v15, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v16, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object/from16 v5, p8

    iget-object v3, v5, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->b:Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_14

    move-object/from16 v4, v36

    if-ne v6, v4, :cond_15

    :cond_14
    new-instance v6, Lgj;

    const/4 v14, 0x6

    invoke-direct {v6, v5, v14}, Lgj;-><init>(Lcom/vuitton/android/presentation/compose/LvExoPlayer;I)V

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    invoke-static {v7, v10, v2, v6, v3}, Lcom/vuitton/android/presentation/compose/LVPlayPauseButtonKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    const/4 v7, 0x1

    goto :goto_13

    :cond_16
    :goto_11
    move-object/from16 v5, p8

    const/4 v7, 0x0

    goto :goto_12

    :cond_17
    move-object/from16 v0, p2

    goto :goto_11

    :goto_12
    const v2, 0x7d76dde7

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :goto_13
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_18
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v34, 0x0

    throw v34

    :cond_19
    const/16 v34, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v34

    :cond_1a
    const/16 v34, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v34

    :cond_1b
    move-object/from16 v1, p9

    move-object/from16 v33, v0

    move-object v0, v3

    move-object v10, v9

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_14
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_1c

    new-instance v0, Lk30;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v11, p11

    move-object v10, v1

    move-object v9, v5

    move-object/from16 v1, v33

    move/from16 v5, p4

    invoke-direct/range {v0 .. v11}, Lk30;-><init>(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/presentation/model/common/AssetUiModel;ZZZZZLcom/vuitton/android/presentation/compose/LvExoPlayer;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method
