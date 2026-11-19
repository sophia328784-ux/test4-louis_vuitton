.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSlideUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v14, p3

    move-object/from16 v0, p4

    move/from16 v3, p6

    const v4, -0x4a204ad9

    move-object/from16 v5, p5

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    iget-object v4, v15, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v5, v3, 0x6

    if-nez v5, :cond_1

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v3

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    and-int/lit8 v6, v3, 0x30

    if-nez v6, :cond_3

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v5, v6

    :cond_3
    and-int/lit16 v6, v3, 0x180

    if-nez v6, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_3

    :cond_4
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v5, v6

    :cond_5
    and-int/lit16 v6, v3, 0xc00

    if-nez v6, :cond_7

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x800

    goto :goto_4

    :cond_6
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v5, v6

    :cond_7
    and-int/lit16 v6, v3, 0x6000

    const/16 v7, 0x4000

    if-nez v6, :cond_9

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v7

    goto :goto_5

    :cond_8
    const/16 v6, 0x2000

    :goto_5
    or-int/2addr v5, v6

    :cond_9
    and-int/lit16 v6, v5, 0x2493

    const/16 v8, 0x2492

    const/4 v10, 0x0

    if-eq v6, v8, :cond_a

    const/4 v6, 0x1

    goto :goto_6

    :cond_a
    move v6, v10

    :goto_6
    and-int/lit8 v8, v5, 0x1

    invoke-virtual {v15, v8, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_20

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v11, "ImmersiveArticleSlide"

    invoke-direct {v8, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const v12, 0xe000

    and-int/2addr v12, v5

    if-ne v12, v7, :cond_b

    const/4 v13, 0x1

    goto :goto_7

    :cond_b
    move v13, v10

    :goto_7
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v8

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v13, :cond_c

    if-ne v7, v8, :cond_d

    :cond_c
    new-instance v7, Lt30;

    invoke-direct {v7, v0, v1, v10}, Lt30;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object/from16 v20, v7

    check-cast v20, Lkotlin/jvm/functions/Function0;

    const/16 v21, 0x1b

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v16, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v13, v9, v15, v10}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v9

    move-object/from16 v17, v11

    iget-wide v10, v15, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v15, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v29, 0x0

    if-eqz v4, :cond_1f

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v3, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v3, :cond_e

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_e
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_8
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v9, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v11, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v10, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v10}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v19, v4

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v7, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSlideUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move/from16 v20, v5

    iget-object v5, v7, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    if-eqz v5, :cond_18

    iget-object v5, v5, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    if-eqz v5, :cond_18

    invoke-static {v5}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v5

    const/4 v14, 0x1

    if-ne v5, v14, :cond_18

    const v5, 0x6142b53

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v8, :cond_f

    new-instance v5, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    invoke-direct {v5, v6}, Lcom/vuitton/android/presentation/compose/LvExoPlayer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v5, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v14, v17

    invoke-direct {v6, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v6, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v0, 0x0

    invoke-static {v6, v0}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    iget-wide v0, v15, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    invoke-static {v15, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz v19, :cond_17

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v17, v8

    iget-boolean v8, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_10

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_10
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_9
    invoke-static {v15, v6, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v15, v1, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v15, v11, v15, v10}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v15, v2, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleHelper;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;)F

    move-result v1

    const/4 v13, 0x0

    invoke-static {v0, v1, v13}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVShape;->c:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v4, v5, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->a:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v0, v7, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    move-object v1, v5

    iget-object v5, v0, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->d:Ljava/lang/String;

    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    const/16 v0, 0x4000

    if-ne v12, v0, :cond_11

    const/16 v18, 0x1

    :goto_a
    move-object v0, v1

    move-object/from16 v1, p0

    goto :goto_b

    :cond_11
    move/from16 v18, v13

    goto :goto_a

    :goto_b
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int v2, v18, v2

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_13

    move-object/from16 v2, v17

    if-ne v6, v2, :cond_12

    goto :goto_c

    :cond_12
    move-object/from16 v8, p4

    goto :goto_d

    :cond_13
    move-object/from16 v2, v17

    :goto_c
    new-instance v6, Lgv;

    const/16 v7, 0x17

    move-object/from16 v8, p4

    invoke-direct {v6, v8, v1, v7}, Lgv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_d
    move-object/from16 v21, v6

    check-cast v21, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v6, v20, 0x6

    and-int/lit8 v6, v6, 0x70

    or-int/lit16 v6, v6, 0x6000

    const/16 v27, 0x0

    const v28, 0x1bb718

    move/from16 v26, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v18, v13

    const/4 v13, 0x0

    move-object/from16 v24, v15

    const/4 v15, 0x0

    const/16 v17, 0x1

    const/16 v16, 0x0

    move/from16 v19, v17

    const/16 v17, 0x4

    move/from16 v20, v18

    const/16 v18, 0x0

    move/from16 v22, v19

    const/16 v19, 0x0

    move/from16 v23, v20

    const/16 v20, 0x0

    move/from16 v25, v22

    const/16 v22, 0x0

    move/from16 v30, v23

    const/16 v23, 0x0

    move/from16 v31, v25

    const/high16 v25, 0xc30000

    move-object v1, v14

    move/from16 v14, p3

    invoke-static/range {v3 .. v28}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt;->b(Landroidx/compose/ui/Modifier;Landroidx/media3/exoplayer/ExoPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/String;Landroidx/compose/ui/layout/ContentScale;ZZZZLjava/lang/Boolean;ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;IIII)V

    move-object/from16 v15, v24

    if-eqz p3, :cond_16

    const v3, -0x4d94475d

    invoke-static {v15, v3, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->j:Landroidx/compose/ui/BiasAlignment;

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v5, v3, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v4, v0, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->b:Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_14

    if-ne v6, v2, :cond_15

    :cond_14
    new-instance v6, Lgj;

    const/16 v2, 0x8

    invoke-direct {v6, v0, v2}, Lgj;-><init>(Lcom/vuitton/android/presentation/compose/LvExoPlayer;I)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    invoke-static {v0, v15, v3, v6, v4}, Lcom/vuitton/android/presentation/compose/LVPlayPauseButtonKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_e
    const/4 v14, 0x1

    goto :goto_f

    :cond_16
    const/4 v0, 0x0

    const v2, -0x4d8c8d0e

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :goto_f
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    move-object/from16 v2, p0

    goto :goto_12

    :cond_17
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v29

    :cond_18
    move-object/from16 v1, v17

    const/4 v0, 0x0

    const v2, 0x62a725b

    invoke-static {v15, v2, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleHelper;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;)F

    move-result v3

    invoke-static {v2, v3, v0}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVShape;->c:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v2, v3}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-object v2, v7, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v2, :cond_19

    iget-object v2, v2, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    if-eqz v2, :cond_19

    move-object v6, v2

    goto :goto_11

    :cond_19
    move-object/from16 v6, v29

    :goto_11
    sget-object v2, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    const/16 v16, 0x180

    const/16 v17, 0x7f8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v5 .. v17}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :goto_12
    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSlideUiModel;->b:Ljava/lang/String;

    if-nez v5, :cond_1a

    const v3, 0x6300571

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v4, p1

    goto :goto_15

    :cond_1a
    const v3, 0x6300572

    invoke-static {v15, v3, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v6

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v8, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v10, 0x0

    const/16 v11, 0xd

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v4, p1

    if-eqz p1, :cond_1b

    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->b:Ljava/lang/String;

    if-eqz v7, :cond_1b

    invoke-static {v7}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v7

    goto :goto_13

    :cond_1b
    move-object/from16 v7, v29

    :goto_13
    if-nez v7, :cond_1c

    const v7, -0x7857c464

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_1c
    const v8, -0x7857cdd6

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v7, v7, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_14
    const/16 v26, 0x0

    const v27, 0x1fff8

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v24, v15

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v23, v3

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v24

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_15
    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v7, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v9, 0x0

    const/16 v10, 0xd

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSlideUiModel;->a:Ljava/lang/String;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->f:Landroidx/compose/ui/text/TextStyle;

    if-eqz v4, :cond_1d

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->b:Ljava/lang/String;

    if-eqz v3, :cond_1d

    invoke-static {v3}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v29

    :cond_1d
    move-object/from16 v3, v29

    if-nez v3, :cond_1e

    const v3, 0x3a01db1f

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_16

    :cond_1e
    const v7, 0x3a01d229

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v7, v3, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_16
    const/16 v26, 0x0

    const v27, 0x1fff8

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v24, v15

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v23, v1

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v24

    const/4 v14, 0x1

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_17

    :cond_1f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v29

    :cond_20
    move-object v4, v2

    move-object v2, v1

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_17
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_21

    new-instance v0, Lj8;

    const/4 v7, 0x5

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object v1, v2

    move-object v2, v4

    move/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Lj8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLkotlin/Function;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_21
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    move-object/from16 v1, p0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x113d460d

    move-object/from16 v2, p5

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

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

    move/from16 v6, p1

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    move-object/from16 v7, p2

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    move-object/from16 v3, p3

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x800

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v0, v2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v2

    const/16 v5, 0x4000

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_4

    :cond_4
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v0, v2

    and-int/lit16 v2, v0, 0x2493

    const/16 v8, 0x2492

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v2, v8, :cond_5

    move v2, v10

    goto :goto_5

    :cond_5
    move v2, v11

    :goto_5
    and-int/lit8 v8, v0, 0x1

    invoke-virtual {v9, v8, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v2, 0x3

    invoke-static {v11, v9, v2}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v2

    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    and-int/lit16 v13, v0, 0x1c00

    if-ne v13, v4, :cond_6

    move v4, v10

    goto :goto_6

    :cond_6
    move v4, v11

    :goto_6
    or-int/2addr v4, v12

    const v12, 0xe000

    and-int/2addr v0, v12

    if-ne v0, v5, :cond_7

    move v0, v10

    goto :goto_7

    :cond_7
    move v0, v11

    :goto_7
    or-int/2addr v0, v4

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_9

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v0, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v24, v2

    goto :goto_9

    :cond_9
    :goto_8
    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;

    const/4 v4, 0x0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-object v5, v3

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v24, v1

    move-object v1, v2

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_9
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v8, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "ImmersiveArticleSlider"

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->a:Ljava/lang/String;

    if-eqz v3, :cond_a

    invoke-static {v3}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    goto :goto_a

    :cond_a
    move-object v3, v4

    :goto_a
    if-nez v3, :cond_b

    const v3, -0x48fb8ae2

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_b
    const v5, -0x48fb9682

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v12, v3, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_b
    sget-object v3, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v12, v13, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v10}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v3, v5, v9, v11}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    iget-wide v12, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v9, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v13, v9, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v13, :cond_e

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v4, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v4, :cond_c

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_c
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_c
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v8, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;->c:Ljava/lang/String;

    if-nez v0, :cond_d

    const v0, -0x19d74e95

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_d

    :cond_d
    const v0, -0x19d74e94

    invoke-static {v9, v0, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v12

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v17, 0x7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v0

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object v0, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;->c:Ljava/lang/String;

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->f:Landroidx/compose/ui/text/TextStyle;

    const/16 v22, 0x0

    const v23, 0x1fffc

    move-object/from16 v19, v3

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v20, v9

    const-wide/16 v8, 0x0

    move v12, v10

    const/4 v10, 0x0

    move v13, v11

    const/4 v11, 0x0

    move v14, v12

    move v15, v13

    const-wide/16 v12, 0x0

    move/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move/from16 v18, v16

    const/16 v16, 0x0

    move/from16 v21, v17

    const/16 v17, 0x0

    move/from16 v25, v18

    const/16 v18, 0x0

    move/from16 v26, v21

    const/16 v21, 0x0

    move/from16 v0, v26

    invoke-static/range {v1 .. v23}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v9, v20

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v1, p0

    :goto_d
    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;->d:Ljava/util/List;

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v7, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v8, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    new-instance v0, Ls30;

    move/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Ls30;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x287adf5e

    invoke-static {v1, v0, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const v10, 0xc06c00

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    const v5, 0x3e4ccccd    # 0.2f

    move-object v3, v6

    move v6, v7

    move v7, v8

    move-object/from16 v2, v24

    move-object v8, v0

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;IFFFLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v4

    :cond_f
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_e
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_10

    new-instance v0, Lod;

    const/4 v7, 0x3

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lod;-><init>(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method
