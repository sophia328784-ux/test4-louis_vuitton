.class public abstract Lcom/vuitton/android/presentation/screen/story/components/StorySlideComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u00a8\u0006\u0005\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0004\u001a\u00020\u00038\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "shouldRestartFromBeginning",
        "isPlayerReady",
        "",
        "storyPosition",
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
.method public static final a(Landroidx/compose/ui/Modifier;IZILcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v14, p2

    move/from16 v1, p3

    move-object/from16 v4, p4

    move-object/from16 v8, p7

    move/from16 v9, p9

    const-string v10, "StorySlideComposable"

    if-eqz v0, :cond_0

    invoke-static {v0, v10}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x3f21f16e

    move-object/from16 v5, p8

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

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
    and-int/lit8 v5, v9, 0x30

    if-nez v5, :cond_4

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_4
    and-int/lit16 v5, v9, 0x180

    if-nez v5, :cond_6

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x100

    goto :goto_3

    :cond_5
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v3, v5

    :cond_6
    and-int/lit16 v5, v9, 0xc00

    if-nez v5, :cond_8

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x800

    goto :goto_4

    :cond_7
    const/16 v5, 0x400

    :goto_4
    or-int/2addr v3, v5

    :cond_8
    and-int/lit16 v5, v9, 0x6000

    if-nez v5, :cond_a

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x4000

    goto :goto_5

    :cond_9
    const/16 v5, 0x2000

    :goto_5
    or-int/2addr v3, v5

    :cond_a
    const/high16 v5, 0x30000

    and-int/2addr v5, v9

    move/from16 v15, p5

    if-nez v5, :cond_c

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_b

    const/high16 v5, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v5, 0x10000

    :goto_6
    or-int/2addr v3, v5

    :cond_c
    const/high16 v5, 0x180000

    and-int/2addr v5, v9

    if-nez v5, :cond_e

    move-object/from16 v5, p6

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/high16 v6, 0x100000

    goto :goto_7

    :cond_d
    const/high16 v6, 0x80000

    :goto_7
    or-int/2addr v3, v6

    goto :goto_8

    :cond_e
    move-object/from16 v5, p6

    :goto_8
    const/high16 v6, 0xc00000

    and-int/2addr v6, v9

    if-nez v6, :cond_10

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/high16 v6, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v6, 0x400000

    :goto_9
    or-int/2addr v3, v6

    :cond_10
    const v6, 0x492493

    and-int/2addr v6, v3

    const v12, 0x492492

    if-eq v6, v12, :cond_11

    const/4 v6, 0x1

    goto :goto_a

    :cond_11
    const/4 v6, 0x0

    :goto_a
    and-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_26

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v12, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v7, :cond_12

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v8}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v8, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v7, :cond_13

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v13}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v13, Landroidx/compose/runtime/MutableState;

    move-object/from16 v18, v8

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;->e:Lcom/vuitton/android/presentation/screen/story/models/StoryAssetUiModel;

    if-eqz v8, :cond_14

    iget-object v9, v8, Lcom/vuitton/android/presentation/screen/story/models/StoryAssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    if-eqz v9, :cond_14

    iget-object v9, v9, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    goto :goto_b

    :cond_14
    const/4 v9, 0x0

    :goto_b
    if-nez v9, :cond_15

    const v6, -0x30f9f0c0

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v9, 0x0

    goto :goto_c

    :cond_15
    const v9, -0x30f9f0bf

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_16

    new-instance v9, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    invoke-direct {v9, v6}, Lcom/vuitton/android/presentation/compose/LvExoPlayer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    move-object v6, v9

    check-cast v6, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    const/4 v9, 0x0

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v9, v6

    :goto_c
    if-ne v2, v1, :cond_1a

    const v6, -0x30f862b6

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    const/high16 v21, 0x1c00000

    move/from16 v22, v3

    and-int v3, v22, v21

    const/high16 v4, 0x800000

    if-ne v3, v4, :cond_17

    const/4 v3, 0x1

    goto :goto_d

    :cond_17
    const/4 v3, 0x0

    :goto_d
    or-int v3, v20, v3

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_19

    if-ne v4, v7, :cond_18

    goto :goto_e

    :cond_18
    move-object v3, v4

    move-object v1, v7

    move-object v15, v8

    move-object/from16 v16, v9

    move-object v7, v13

    move/from16 v13, v22

    move-object/from16 v4, p7

    move-object v9, v6

    move-object/from16 v6, v18

    goto :goto_f

    :cond_19
    :goto_e
    new-instance v3, Lcom/vuitton/android/presentation/screen/story/components/StorySlideComposableKt$StorySlideComposable$1$1;

    move-object v4, v8

    const/4 v8, 0x0

    move-object/from16 v5, p7

    move-object v15, v4

    move-object v1, v7

    move-object/from16 v16, v9

    move-object v7, v13

    move/from16 v13, v22

    move-object/from16 v4, p4

    move-object v9, v6

    move-object/from16 v6, v18

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/story/components/StorySlideComposableKt$StorySlideComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v5

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_f
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v9, v3, v11}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    const/4 v9, 0x0

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :cond_1a
    move-object/from16 v4, p7

    move-object v1, v7

    move-object v15, v8

    move-object/from16 v16, v9

    move-object v7, v13

    move-object/from16 v6, v18

    const/4 v9, 0x0

    move v13, v3

    const v3, -0x30ef52cc

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    and-int/lit16 v5, v13, 0x380

    const/16 v8, 0x100

    if-ne v5, v8, :cond_1b

    const/4 v8, 0x1

    goto :goto_11

    :cond_1b
    const/4 v8, 0x0

    :goto_11
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v8, :cond_1c

    if-ne v5, v1, :cond_1d

    :cond_1c
    new-instance v5, Lcom/vuitton/android/presentation/screen/story/components/StorySlideComposableKt$StorySlideComposable$2$1;

    const/4 v8, 0x0

    invoke-direct {v5, v14, v6, v8}, Lcom/vuitton/android/presentation/screen/story/components/StorySlideComposableKt$StorySlideComposable$2$1;-><init>(ZLandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v3, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v10}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v3, v5}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    iget-wide v8, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v11, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move/from16 p8, v6

    iget-object v6, v11, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v6, :cond_25

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_1e

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_1e
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_12
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v8, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v15, :cond_20

    iget-object v3, v15, Lcom/vuitton/android/presentation/screen/story/models/StoryAssetUiModel;->a:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v3, :cond_20

    iget-object v5, v3, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    if-eqz v5, :cond_20

    invoke-static {v5}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    const v1, -0x34dcb1a9    # -1.0702423E7f

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->a:Landroidx/compose/ui/graphics/LinearGradient;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->e:Landroidx/compose/ui/graphics/LinearGradient;

    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Brush;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    new-instance v1, Lcom/vuitton/android/presentation/utils/UrlFactory;

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->f(Landroid/content/Context;)Lje;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/vuitton/android/presentation/utils/UrlFactory;-><init>(Lkotlin/jvm/functions/Function0;)V

    iget-object v3, v3, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Opaque;

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-direct {v5, v8, v6, v8}, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Opaque;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v3, v5}, Lcom/vuitton/android/presentation/utils/UrlFactory;->b(Ljava/lang/String;Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v17, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    const/16 v26, 0x180

    const/16 v27, 0x7f8

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v11

    invoke-static/range {v15 .. v27}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move/from16 v3, p3

    move-object/from16 v5, v25

    if-ne v2, v3, :cond_1f

    const-wide/16 v6, 0x3a98

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v29, v0

    move-object v7, v5

    move-object v1, v10

    move/from16 v30, v13

    const/4 v2, 0x1

    goto/16 :goto_15

    :cond_20
    move/from16 v3, p3

    move-object v5, v11

    const/4 v9, 0x0

    if-eqz v15, :cond_24

    iget-object v6, v15, Lcom/vuitton/android/presentation/screen/story/models/StoryAssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    if-eqz v6, :cond_24

    iget-object v8, v6, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    if-eqz v8, :cond_24

    invoke-static {v8}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_23

    if-eqz v16, :cond_23

    const v8, -0x34d13334    # -1.1455692E7f

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v8, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->a:Landroidx/compose/ui/graphics/LinearGradient;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->e:Landroidx/compose/ui/graphics/LinearGradient;

    invoke-static {v0, v8}, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Brush;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    move-object/from16 v12, v16

    iget-object v12, v12, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->a:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v15, v6, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->d:Ljava/lang/String;

    if-ne v2, v3, :cond_21

    if-nez v14, :cond_21

    move/from16 v16, v11

    goto :goto_13

    :cond_21
    move/from16 v16, v9

    :goto_13
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_22

    new-instance v9, Lv11;

    const/4 v1, 0x2

    invoke-direct {v9, v1, v7}, Lv11;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object/from16 v22, v9

    check-cast v22, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v1, v13, 0x3

    and-int/lit8 v1, v1, 0x70

    const v7, 0x30006006

    or-int v26, v1, v7

    const/16 v27, 0x0

    const/4 v9, 0x0

    const v28, 0x17a098

    move v1, v9

    move-object v9, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v8

    const/4 v8, 0x1

    move-object/from16 v17, v10

    const/4 v10, 0x0

    move/from16 v29, v11

    const/4 v11, 0x0

    move-object v4, v12

    const/4 v12, 0x1

    move/from16 v18, v13

    const/4 v13, 0x0

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v16

    const/16 v16, 0x0

    move-object/from16 v19, v17

    const/16 v17, 0x4

    move/from16 v20, v18

    const/16 v18, 0x0

    move-object/from16 v21, v19

    const/16 v19, 0x0

    move/from16 v23, v20

    const/16 v20, 0x0

    move-object/from16 v25, v21

    const/16 v21, 0x0

    move/from16 v30, v23

    const/16 v23, 0x0

    move-object/from16 v31, v25

    const/high16 v25, 0x36030000

    move/from16 v2, v29

    move-object/from16 v29, v0

    move v0, v1

    move-object/from16 v1, v31

    invoke-static/range {v3 .. v28}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt;->b(Landroidx/compose/ui/Modifier;Landroidx/media3/exoplayer/ExoPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/String;Landroidx/compose/ui/layout/ContentScale;ZZZZLjava/lang/Boolean;ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;IIII)V

    move-object/from16 v7, v24

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :cond_23
    move-object/from16 v29, v0

    move-object v7, v5

    move v0, v9

    move-object v1, v10

    move v2, v11

    move/from16 v30, v13

    goto :goto_14

    :cond_24
    move-object/from16 v29, v0

    move-object v7, v5

    move v0, v9

    move-object v1, v10

    move/from16 v30, v13

    const/4 v2, 0x1

    :goto_14
    const v3, -0x34c74a0c    # -1.2105204E7f

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_15
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->i:Landroidx/compose/ui/BiasAlignment;

    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v3, v0, v1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    shr-int/lit8 v0, v30, 0x9

    and-int/lit16 v8, v0, 0x1ff0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/story/components/StoryFooterKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_16

    :cond_25
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v19, 0x0

    throw v19

    :cond_26
    move-object/from16 v29, v0

    move-object v7, v11

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_16
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_27

    new-instance v0, Lz11;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    move-object/from16 v1, v29

    invoke-direct/range {v0 .. v9}, Lz11;-><init>(Landroidx/compose/ui/Modifier;IZILcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_27
    return-void
.end method
