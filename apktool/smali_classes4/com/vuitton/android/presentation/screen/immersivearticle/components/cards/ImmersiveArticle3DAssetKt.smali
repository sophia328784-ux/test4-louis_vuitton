.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticle3DAssetKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v13, p2

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    const-string v1, "ImmersiveArticle3DAsset"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x2efa5452

    move-object/from16 v4, p8

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    or-int/lit8 v3, p9, 0x6

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_0

    :cond_1
    const/16 v4, 0x10

    :goto_0
    or-int/2addr v3, v4

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_1

    :cond_2
    const/16 v4, 0x80

    :goto_1
    or-int/2addr v3, v4

    move-object/from16 v4, p3

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x800

    goto :goto_2

    :cond_3
    const/16 v7, 0x400

    :goto_2
    or-int/2addr v3, v7

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x4000

    if-eqz v7, :cond_4

    move v7, v8

    goto :goto_3

    :cond_4
    const/16 v7, 0x2000

    :goto_3
    or-int/2addr v3, v7

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/high16 v7, 0x20000

    goto :goto_4

    :cond_5
    const/high16 v7, 0x10000

    :goto_4
    or-int/2addr v3, v7

    move-object/from16 v7, p6

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/high16 v10, 0x100000

    goto :goto_5

    :cond_6
    const/high16 v10, 0x80000

    :goto_5
    or-int/2addr v3, v10

    move-object/from16 v10, p7

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/high16 v11, 0x800000

    goto :goto_6

    :cond_7
    const/high16 v11, 0x400000

    :goto_6
    or-int v16, v3, v11

    const v3, 0x492493

    and-int v3, v16, v3

    const v11, 0x492492

    const/4 v12, 0x0

    if-eq v3, v11, :cond_8

    const/4 v3, 0x1

    goto :goto_7

    :cond_8
    move v3, v12

    :goto_7
    and-int/lit8 v11, v16, 0x1

    invoke-virtual {v6, v11, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;

    sget-object v11, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;->None:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;

    if-ne v3, v11, :cond_12

    const v3, -0x22def4e9

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/high16 v11, 0x3f100000    # 0.5625f

    invoke-static {v3, v11, v12}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v11, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v11, v12}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    iget-wide v12, v6, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v6, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x1

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v9, v6, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    move/from16 v19, v12

    if-eqz v9, :cond_11

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v6, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_9

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_8
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v11, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v13, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v5, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    if-nez p2, :cond_10

    const v3, -0x1c39216d

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Landroidx/compose/foundation/layout/BoxScopeInstance;->j(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-boolean v5, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;->e:Z

    xor-int/lit8 v5, v5, 0x1

    const v9, 0xe000

    and-int v11, v16, v9

    if-ne v11, v8, :cond_a

    move/from16 v8, v17

    goto :goto_9

    :cond_a
    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    move/from16 v19, v9

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v8, :cond_b

    if-ne v11, v9, :cond_c

    :cond_b
    new-instance v11, Lpy;

    const/16 v8, 0x9

    invoke-direct {v11, v14, v8}, Lpy;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v11, Lkotlin/jvm/functions/Function0;

    const/high16 v8, 0x70000

    and-int v8, v16, v8

    const/high16 v12, 0x20000

    if-ne v8, v12, :cond_d

    move/from16 v8, v17

    goto :goto_a

    :cond_d
    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v8, :cond_e

    if-ne v12, v9, :cond_f

    :cond_e
    new-instance v12, Lk0;

    const/16 v8, 0x10

    invoke-direct {v12, v15, v8}, Lk0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object v8, v12

    check-cast v8, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v9, v16, 0x6

    and-int/lit16 v12, v9, 0x1c00

    shl-int/lit8 v18, v16, 0x3

    and-int v18, v18, v19

    or-int v12, v12, v18

    const/high16 v18, 0xe000000

    and-int v18, v9, v18

    or-int v12, v12, v18

    const/high16 v18, 0x70000000

    and-int v9, v9, v18

    or-int/2addr v9, v12

    move v2, v5

    move-object v5, v11

    const/4 v11, 0x0

    const/16 v12, 0xc2

    move-object/from16 v18, v1

    const/4 v1, 0x0

    move v14, v9

    move-object v9, v6

    move-object v6, v7

    move-object v7, v10

    move v10, v14

    move-object/from16 v17, v0

    move-object v0, v3

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerComposableKt;->b(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    move-object v6, v9

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_10
    move-object/from16 v17, v0

    move-object v14, v1

    const/4 v15, 0x0

    const v0, -0x1c300fd1

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_b
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Landroidx/compose/foundation/layout/BoxScopeInstance;->j(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-static {v2, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v2

    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ComposableSingletons$ImmersiveArticle3DAssetKt;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ComposableSingletons$ImmersiveArticle3DAssetKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ComposableSingletons$ImmersiveArticle3DAssetKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    shr-int/lit8 v0, v16, 0x6

    and-int/lit8 v0, v0, 0xe

    const v4, 0x30d80

    or-int v7, v0, v4

    const/16 v8, 0x10

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :cond_11
    const/4 v2, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v2

    :cond_12
    move-object/from16 v17, v0

    move v15, v12

    const v0, -0x22cbd210

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_c
    move-object/from16 v1, v17

    goto :goto_d

    :cond_13
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    :goto_d
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_14

    new-instance v0, Ldm;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Ldm;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method
