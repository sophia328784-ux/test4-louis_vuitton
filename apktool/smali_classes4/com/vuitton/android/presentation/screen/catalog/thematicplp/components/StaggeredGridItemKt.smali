.class public abstract Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridItemKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/airbnb/lottie/LottieComposition;",
        "composition",
        "",
        "progress",
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


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x438c0000    # 280.0f

    sput v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridItemKt;->a:F

    return-void
.end method

.method public static final a(ZLcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 33

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    const v0, 0x5636186f

    move-object/from16 v3, p4

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v3, v5, 0x6

    const/4 v6, 0x4

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v5

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    and-int/lit8 v7, v5, 0x30

    if-nez v7, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v3, v7

    :cond_3
    and-int/lit16 v7, v5, 0x180

    move-object/from16 v9, p2

    if-nez v7, :cond_5

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v3, v7

    :cond_5
    and-int/lit16 v7, v5, 0xc00

    if-nez v7, :cond_7

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_4

    :cond_6
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v3, v7

    :cond_7
    and-int/lit16 v7, v3, 0x493

    const/16 v10, 0x492

    const/4 v12, 0x0

    if-eq v7, v10, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    move v7, v12

    :goto_5
    and-int/lit8 v10, v3, 0x1

    invoke-virtual {v0, v10, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_14

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    iget-object v10, v2, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v13, v2, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    const/4 v14, 0x3

    const-string v15, "BrandContentItem"

    if-eqz v10, :cond_9

    const v6, -0x7ed7100f

    const-string v7, "thematicPlp_brandContent_image"

    invoke-static {v0, v6, v15, v7}, Ln00;->d(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    iget-object v7, v2, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    shl-int/2addr v3, v14

    and-int/lit16 v3, v3, 0x1c00

    or-int/lit16 v3, v3, 0x180

    const/16 v18, 0x7f0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v13, v12

    const/4 v12, 0x0

    move v14, v13

    const/4 v13, 0x0

    move v15, v14

    const/4 v14, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v17, v16

    move-object/from16 v16, v0

    move/from16 v0, v17

    move/from16 v17, v3

    invoke-static/range {v6 .. v18}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v9, v16

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_b

    :cond_9
    move-object v9, v0

    move v0, v12

    if-eqz v13, :cond_13

    const v10, -0x7ed1a10e

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v10, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    invoke-direct {v10, v7}, Lcom/vuitton/android/presentation/compose/LvExoPlayer;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v12, v15}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v11, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v12, v11}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v12, v0}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    iget-wide v0, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    invoke-static {v9, v11}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v8, v9, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v8, :cond_12

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v8, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_a

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_6
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v12, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v1, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v11, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v15}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->b:Landroidx/compose/ui/graphics/LinearGradient;

    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Brush;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v1, "thematicPlp_brandContent_video"

    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v8, v13, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v11, :cond_b

    new-instance v1, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    invoke-direct {v1, v7}, Lcom/vuitton/android/presentation/compose/LvExoPlayer;-><init>(Landroid/content/Context;)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->a:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object v7, v1

    check-cast v7, Landroidx/media3/exoplayer/ExoPlayer;

    and-int/lit8 v1, v3, 0xe

    if-ne v1, v6, :cond_c

    const/4 v12, 0x1

    goto :goto_7

    :cond_c
    const/4 v12, 0x0

    :goto_7
    and-int/lit16 v1, v3, 0x1c00

    const/16 v3, 0x800

    if-ne v1, v3, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    :goto_8
    or-int/2addr v1, v12

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_f

    if-ne v3, v11, :cond_e

    goto :goto_9

    :cond_e
    move/from16 v1, p0

    goto :goto_a

    :cond_f
    :goto_9
    new-instance v3, Lb70;

    const/4 v6, 0x3

    move/from16 v1, p0

    invoke-direct {v3, v1, v4, v6}, Lb70;-><init>(ZLkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_a
    move-object/from16 v24, v3

    check-cast v24, Lkotlin/jvm/functions/Function1;

    const/16 v30, 0x0

    const v31, 0x1bbbd8

    move-object/from16 v27, v9

    const/4 v9, 0x0

    move-object v3, v10

    const/4 v10, 0x0

    move-object v6, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v19, v18

    const/16 v18, 0x0

    move-object/from16 v20, v19

    const/16 v19, 0x0

    move-object/from16 v21, v20

    const/16 v20, 0x4

    move-object/from16 v22, v21

    const/16 v21, 0x0

    move-object/from16 v23, v22

    const/16 v22, 0x0

    move-object/from16 v25, v23

    const/16 v23, 0x0

    move-object/from16 v26, v25

    const/16 v25, 0x0

    move-object/from16 v28, v26

    const/16 v26, 0x0

    move-object/from16 v29, v28

    const/high16 v28, 0x30000

    move-object/from16 v32, v29

    const/16 v29, 0x6006

    move-object v1, v6

    move-object v6, v0

    move-object/from16 v0, v32

    invoke-static/range {v6 .. v31}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt;->b(Landroidx/compose/ui/Modifier;Landroidx/media3/exoplayer/ExoPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/String;Landroidx/compose/ui/layout/ContentScale;ZZZZLjava/lang/Boolean;ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;IIII)V

    move-object/from16 v9, v27

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->h:Landroidx/compose/ui/BiasAlignment;

    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v7, v6, v0}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v6, "thematicPlp_brandContentPlayPause_button"

    invoke-static {v0, v6}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v6, v3, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->b:Landroidx/compose/runtime/MutableState;

    check-cast v6, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_10

    if-ne v8, v1, :cond_11

    :cond_10
    new-instance v8, Lgj;

    const/16 v1, 0xf

    invoke-direct {v8, v3, v1}, Lgj;-><init>(Lcom/vuitton/android/presentation/compose/LvExoPlayer;I)V

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v13, 0x0

    invoke-static {v13, v9, v0, v8, v6}, Lcom/vuitton/android/presentation/compose/LVPlayPauseButtonKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_12
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_13
    move v13, v0

    const v0, -0x7ebed84d

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_14
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_b
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_15

    new-instance v0, Lzr;

    move/from16 v1, p0

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lzr;-><init>(ZLcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 48

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    const-string v1, "ProductGiftItem"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v8, 0x39d3bad8

    move-object/from16 v9, p6

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    iget-object v8, v13, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v9, v7, 0x6

    sget-object v10, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    if-nez v9, :cond_2

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    :goto_0
    or-int/2addr v9, v7

    goto :goto_1

    :cond_2
    move v9, v7

    :goto_1
    and-int/lit8 v12, v7, 0x30

    if-nez v12, :cond_4

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x20

    goto :goto_2

    :cond_3
    const/16 v12, 0x10

    :goto_2
    or-int/2addr v9, v12

    :cond_4
    and-int/lit16 v12, v7, 0x180

    if-nez v12, :cond_6

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v12, 0x100

    goto :goto_3

    :cond_5
    const/16 v12, 0x80

    :goto_3
    or-int/2addr v9, v12

    :cond_6
    and-int/lit16 v12, v7, 0xc00

    if-nez v12, :cond_8

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x800

    goto :goto_4

    :cond_7
    const/16 v12, 0x400

    :goto_4
    or-int/2addr v9, v12

    :cond_8
    and-int/lit16 v12, v7, 0x6000

    const/16 v14, 0x4000

    if-nez v12, :cond_a

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    move v12, v14

    goto :goto_5

    :cond_9
    const/16 v12, 0x2000

    :goto_5
    or-int/2addr v9, v12

    :cond_a
    const/high16 v12, 0x30000

    and-int/2addr v12, v7

    if-nez v12, :cond_c

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/high16 v12, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v12, 0x10000

    :goto_6
    or-int/2addr v9, v12

    :cond_c
    const/high16 v12, 0x180000

    and-int/2addr v12, v7

    if-nez v12, :cond_e

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/high16 v12, 0x100000

    goto :goto_7

    :cond_d
    const/high16 v12, 0x80000

    :goto_7
    or-int/2addr v9, v12

    :cond_e
    move/from16 v32, v9

    const v9, 0x92493

    and-int v9, v32, v9

    const v12, 0x92492

    if-eq v9, v12, :cond_f

    const/4 v9, 0x1

    goto :goto_8

    :cond_f
    const/4 v9, 0x0

    :goto_8
    and-int/lit8 v12, v32, 0x1

    invoke-virtual {v13, v12, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_29

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    sget-object v12, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v11, Landroidx/compose/ui/graphics/Color;->e:J

    sget-object v15, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v11, v12, v15}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const v12, 0xe000

    and-int v12, v32, v12

    if-ne v12, v14, :cond_10

    const/4 v12, 0x1

    goto :goto_9

    :cond_10
    const/4 v12, 0x0

    :goto_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    move/from16 v18, v12

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v18, :cond_12

    if-ne v14, v12, :cond_11

    goto :goto_a

    :cond_11
    move-object/from16 v33, v0

    goto :goto_b

    :cond_12
    :goto_a
    new-instance v14, Lnj0;

    move-object/from16 v33, v0

    const/16 v0, 0x13

    invoke-direct {v14, v4, v0}, Lnj0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_b
    check-cast v14, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x3

    move-object/from16 v18, v12

    const/4 v12, 0x0

    invoke-static {v11, v12, v14, v0}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->e:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v14, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/16 v12, 0x36

    invoke-static {v11, v14, v13, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v2

    move-object/from16 v34, v8

    iget-wide v7, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v13, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v11

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v34, :cond_28

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_13

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_13
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_c
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v2, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v8, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v7, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v7}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v22, v11

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v0, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v23, v11

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v0, v11}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v11, v4}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object/from16 v24, v12

    iget-wide v11, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-static {v0, v11, v12, v15}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v4, 0x3f333333    # 0.7f

    sget-object v11, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    const/4 v12, 0x1

    invoke-virtual {v11, v0, v4, v12}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v4, "thematicPlp_product_image"

    invoke-static {v0, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iget-object v15, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v15, v15, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v15, :cond_14

    iget-object v15, v15, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    goto :goto_d

    :cond_14
    const/4 v15, 0x0

    :goto_d
    if-nez v15, :cond_15

    const-string v15, ""

    :cond_15
    move-object/from16 v16, v20

    const/16 v20, 0x6000

    const/16 v26, 0x36

    const/16 v21, 0x7ec

    move-object/from16 v27, v11

    const/4 v11, 0x0

    move/from16 v28, v12

    const/4 v12, 0x0

    move-object/from16 v19, v13

    const/16 v29, 0x0

    const/4 v13, 0x0

    move-object/from16 v30, v14

    const/4 v14, 0x0

    move-object/from16 v31, v10

    move-object v10, v15

    const/4 v15, 0x0

    move-object/from16 v35, v16

    const/16 v16, 0x0

    const/16 v36, 0x0

    const/16 v17, 0x0

    move-object/from16 v37, v18

    const/16 v18, 0x0

    move-object/from16 v38, v9

    move-object/from16 v41, v22

    move-object/from16 v43, v23

    move-object/from16 v42, v24

    move-object/from16 v47, v27

    move-object/from16 v36, v29

    move-object/from16 v40, v30

    move-object/from16 v44, v31

    move-object/from16 v39, v35

    move-object/from16 v45, v37

    move-object v9, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static/range {v9 .. v21}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v13, v19

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v0}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const v10, 0x3e99999a    # 0.3f

    move-object/from16 v11, v47

    const/4 v12, 0x1

    invoke-virtual {v11, v9, v10, v12}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v9

    move-object/from16 v10, v39

    move-object/from16 v11, v40

    const/16 v12, 0x36

    invoke-static {v10, v11, v13, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v10

    iget-wide v11, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v13, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    if-eqz v34, :cond_27

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v14, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v14, :cond_16

    move-object/from16 v14, v41

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    :goto_e
    move-object/from16 v15, v42

    goto :goto_f

    :cond_16
    move-object/from16 v14, v41

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    goto :goto_e

    :goto_f
    invoke-static {v13, v10, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v12, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v13, v8, v13, v7}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v10, v43

    invoke-static {v13, v9, v10, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v9

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/4 v12, 0x0

    move/from16 v37, v0

    const/4 v0, 0x2

    invoke-static {v9, v11, v12, v0}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v9

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const-string v11, "thematicPlp_productName_text"

    invoke-static {v9, v11}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    move-object v10, v9

    iget-object v9, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->b:Ljava/lang/String;

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object/from16 v19, v13

    iget-wide v12, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-static/range {v19 .. v19}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    sget-object v16, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v22, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    sget-object v16, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/text/style/TextAlign;->e:I

    move-object/from16 v16, v9

    new-instance v9, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v9, v0}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v30, 0x6180

    const v31, 0x1abf8

    move-object/from16 v27, v11

    move-wide v11, v12

    move-object/from16 v41, v14

    const-wide/16 v13, 0x0

    move-object/from16 v24, v15

    const/4 v15, 0x0

    move-object/from16 v28, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v16

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v42, v24

    const/16 v24, 0x2

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v41

    move-object/from16 v5, v42

    move-object/from16 v6, v43

    const/4 v3, 0x0

    invoke-static/range {v9 .. v31}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {v28 .. v28}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/4 v11, 0x2

    invoke-static {v9, v10, v3, v11}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const-string v9, "thematicPlp_productPrice_text"

    invoke-static {v3, v9}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->o:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    if-eqz v3, :cond_18

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->b:Ljava/lang/String;

    if-nez v3, :cond_17

    goto :goto_11

    :cond_17
    :goto_10
    move-object v9, v3

    goto :goto_12

    :cond_18
    :goto_11
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    goto :goto_10

    :goto_12
    invoke-static/range {v28 .. v28}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->n:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v28 .. v28}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v30, 0x0

    const v31, 0x1fff8

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    move-object/from16 v27, v3

    invoke-static/range {v9 .. v31}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v13, v28

    const/4 v12, 0x1

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-boolean v3, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->p:Z

    if-eqz v3, :cond_1c

    const v3, 0x66632374

    invoke-static {v13, v3, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->t:F

    invoke-static {v3, v9}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    move-object/from16 v10, v44

    invoke-virtual {v10, v3, v9}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v12, v45

    if-ne v11, v12, :cond_19

    new-instance v11, Ll01;

    const/4 v14, 0x5

    invoke-direct {v11, v14}, Ll01;-><init>(I)V

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    invoke-static {v3, v14, v11}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const-string v11, "thematicPlp_productPersonalization_image"

    invoke-static {v3, v11}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v9, v14}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    iget-wide v14, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v13, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v34, :cond_1b

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_1a

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_13

    :cond_1a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_13
    invoke-static {v13, v9, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v14, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v13, v8, v13, v7}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v13, v3, v6, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v10, v3, v9}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    invoke-static {v3, v9}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->o0:I

    const/4 v14, 0x0

    invoke-static {v3, v13, v14}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v9

    const/16 v17, 0x38

    const/16 v18, 0x78

    move-object/from16 v44, v10

    const/4 v10, 0x0

    move-object/from16 v45, v12

    const/4 v12, 0x0

    move-object/from16 v28, v13

    const/4 v13, 0x0

    move/from16 v46, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v19, v4

    move-object/from16 v23, v6

    move-object/from16 v16, v28

    move-object/from16 v3, v44

    move-object/from16 v4, v45

    move/from16 v6, v46

    invoke-static/range {v9 .. v18}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v13, v16

    const/4 v12, 0x1

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_1b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v36

    :cond_1c
    move-object/from16 v19, v4

    move-object/from16 v23, v6

    move-object/from16 v3, v44

    move-object/from16 v4, v45

    const/4 v6, 0x0

    const v9, 0x666c606a

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_14
    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->t:F

    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->d:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v3, v9, v10}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v24

    xor-int/lit8 v25, p1, 0x1

    move-object/from16 v9, v38

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    const/high16 v11, 0x380000

    and-int v11, v32, v11

    const/high16 v12, 0x100000

    if-ne v11, v12, :cond_1d

    const/4 v11, 0x1

    goto :goto_15

    :cond_1d
    move v11, v6

    :goto_15
    or-int/2addr v10, v11

    move-object/from16 v11, p2

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v10, v12

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v10, :cond_1f

    if-ne v12, v4, :cond_1e

    goto :goto_16

    :cond_1e
    move-object/from16 v10, p5

    goto :goto_17

    :cond_1f
    :goto_16
    new-instance v12, Lkr0;

    move-object/from16 v10, p5

    const/4 v14, 0x1

    invoke-direct {v12, v9, v10, v11, v14}, Lkr0;-><init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_17
    move-object/from16 v28, v12

    check-cast v28, Lkotlin/jvm/functions/Function0;

    const/16 v29, 0x1e

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v24 .. v29}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const-string v12, "thematicPlp_productWishlist_image"

    invoke-static {v9, v12}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v12, v6}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    iget-wide v14, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v13, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    if-eqz v34, :cond_26

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_20

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_18

    :cond_20
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_18
    invoke-static {v13, v12, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v15, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v13, v8, v13, v7}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v6, v23

    invoke-static {v13, v9, v6, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v3, v0, v1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_21

    if-ne v2, v4, :cond_22

    :cond_21
    new-instance v2, Lxo0;

    const/16 v1, 0x1d

    invoke-direct {v2, v11, v1}, Lxo0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    invoke-static {v0, v14, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-boolean v1, v11, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->d:Z

    if-eqz v1, :cond_23

    const v1, 0x61155f34

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->V:I

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :cond_23
    const v1, 0x6116abba

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->U:I

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_19
    invoke-static {v1, v13, v14}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v9

    move-object/from16 v1, v19

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->b:Ljava/lang/String;

    const v2, 0x7f140308

    invoke-static {v13, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-static {v1, v3, v2}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x8

    const/16 v18, 0x78

    const/4 v12, 0x0

    move-object/from16 v28, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v1

    move-object v3, v11

    move-object/from16 v16, v28

    move-object v11, v0

    invoke-static/range {v9 .. v18}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v13, v16

    const/4 v12, 0x1

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->c:Z

    if-eqz v0, :cond_25

    const v0, 0x667eec04

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->E:I

    const/4 v14, 0x0

    invoke-static {v0, v13, v14}, Ln00;->h(ILandroidx/compose/runtime/GapComposer;I)Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v9

    const/4 v12, 0x0

    const/16 v14, 0x3fe

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt;->a(Lcom/airbnb/lottie/LottieComposition;ZLcom/airbnb/lottie/compose/LottieClipSpec$Frame;ILandroidx/compose/runtime/Composer;I)Lcom/airbnb/lottie/compose/LottieAnimatable;

    move-result-object v1

    move-object/from16 v28, v13

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpg-float v1, v1, v37

    if-nez v1, :cond_24

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v5, p4

    invoke-interface {v5, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_24
    move-object/from16 v5, p4

    :goto_1a
    invoke-virtual {v0}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v9

    const/16 v16, 0x0

    const v17, 0x3ffffe

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v14, v28

    invoke-static/range {v9 .. v17}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->a(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/Modifier;ZILcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/runtime/Composer;III)V

    move-object v13, v14

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1b

    :cond_25
    move-object/from16 v5, p4

    const/4 v14, 0x0

    const v0, 0x6684a40a

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1b

    :cond_26
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v36

    :cond_27
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v36

    :cond_28
    const/16 v36, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v36

    :cond_29
    move-object/from16 v33, v0

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_2a

    new-instance v0, Lp1;

    move/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v1, v33

    invoke-direct/range {v0 .. v7}, Lp1;-><init>(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2a
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;FZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v5, p5

    move-object/from16 v15, p6

    const-string v1, "StaggeredGridItem"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x6dc835d7

    move-object/from16 v4, p7

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x4

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int v3, p8, v3

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_1

    :cond_2
    const/16 v7, 0x10

    :goto_1
    or-int/2addr v3, v7

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x100

    goto :goto_2

    :cond_3
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v3, v7

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x800

    goto :goto_3

    :cond_4
    const/16 v7, 0x400

    :goto_3
    or-int/2addr v3, v7

    move-object/from16 v7, p4

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x4000

    goto :goto_4

    :cond_5
    const/16 v10, 0x2000

    :goto_4
    or-int/2addr v3, v10

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/high16 v10, 0x20000

    goto :goto_5

    :cond_6
    const/high16 v10, 0x10000

    :goto_5
    or-int/2addr v3, v10

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/high16 v10, 0x100000

    goto :goto_6

    :cond_7
    const/high16 v10, 0x80000

    :goto_6
    or-int/2addr v3, v10

    const v10, 0x92493

    and-int/2addr v10, v3

    const v12, 0x92492

    const/4 v14, 0x0

    if-eq v10, v12, :cond_8

    const/4 v10, 0x1

    goto :goto_7

    :cond_8
    move v10, v14

    :goto_7
    and-int/lit8 v12, v3, 0x1

    invoke-virtual {v13, v12, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_13

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v10, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iget-object v12, v10, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->b:Ljava/lang/String;

    iget-object v11, v10, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->o:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    if-eqz v11, :cond_9

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->b:Ljava/lang/String;

    goto :goto_8

    :cond_9
    const/4 v11, 0x0

    :goto_8
    if-nez v11, :cond_a

    const-string v11, ""

    :cond_a
    iget-boolean v10, v10, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->p:Z

    if-eqz v10, :cond_b

    const v10, 0x75bb39ca

    const v4, 0x7f1402f1

    invoke-static {v13, v10, v4, v13, v14}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_b
    const v4, 0x75bc47f3

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    :goto_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v10, :cond_c

    new-instance v4, Ll01;

    invoke-direct {v4, v6}, Ll01;-><init>(I)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x1

    invoke-static {v0, v6, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v12, 0x3

    const/4 v14, 0x0

    invoke-static {v4, v14, v12}, Landroidx/compose/foundation/layout/SizeKt;->x(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;I)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v4, v14}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget v14, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridItemKt;->a:F

    move/from16 v17, v12

    const/4 v12, 0x0

    invoke-static {v4, v12, v14, v6}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVShape;->d:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v4, v12}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object v12, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v4, v6, v7, v12}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    xor-int/lit8 v6, v9, 0x1

    new-instance v7, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/a;

    invoke-direct {v7, v9, v2, v5, v15}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/a;-><init>(ZLcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const/4 v12, 0x0

    invoke-static {v4, v6, v7, v13, v12}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v4, v8}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v6, v12}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    iget-wide v7, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v13, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v12, v13, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v12, :cond_12

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_d

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_a
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v6, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v4, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    const/high16 v6, 0x380000

    if-eqz v4, :cond_11

    const v1, 0x84f7b43

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    and-int v4, v3, v6

    const/high16 v6, 0x100000

    if-ne v4, v6, :cond_e

    const/4 v4, 0x1

    goto :goto_b

    :cond_e
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_f

    if-ne v6, v10, :cond_10

    :cond_f
    new-instance v6, Lp01;

    const/4 v4, 0x2

    invoke-direct {v6, v15, v2, v4}, Lp01;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object v12, v6

    check-cast v12, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v3, v3, 0x9

    and-int/lit8 v14, v3, 0xe

    move-object v10, v1

    const/4 v8, 0x0

    invoke-static/range {v9 .. v14}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridItemKt;->a(ZLcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v9, v0

    const/4 v10, 0x1

    goto :goto_c

    :cond_11
    const/4 v8, 0x0

    const v4, 0x8542ad1

    invoke-static {v13, v4, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    shr-int/lit8 v4, v3, 0x3

    and-int/lit16 v4, v4, 0x380

    const/16 v7, 0x36

    or-int/2addr v4, v7

    shl-int/lit8 v7, v3, 0x6

    and-int/lit16 v7, v7, 0x1c00

    or-int/2addr v4, v7

    shl-int/lit8 v3, v3, 0x3

    const/high16 v7, 0x70000

    and-int/2addr v7, v3

    or-int/2addr v4, v7

    and-int/2addr v3, v6

    or-int v7, v4, v3

    move-object/from16 v4, p4

    move-object v9, v0

    move-object v0, v1

    move-object v3, v11

    move-object v6, v13

    const/4 v10, 0x1

    move/from16 v1, p3

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridItemKt;->b(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_c
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_d

    :cond_12
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v16, 0x0

    throw v16

    :cond_13
    move-object v9, v0

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_14

    new-instance v0, Ldi0;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p8

    move-object v1, v9

    move-object v7, v15

    invoke-direct/range {v0 .. v8}, Ldi0;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;FZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method
