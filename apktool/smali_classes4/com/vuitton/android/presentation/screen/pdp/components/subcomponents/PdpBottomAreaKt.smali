.class public abstract Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;ZZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v10, p9

    move-object/from16 v7, p10

    const-string v1, "PdpBottomArea"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x6e9e24ea

    move-object/from16 v3, p12

    invoke-static {v10, v7, v3, v2}, La;->c(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    or-int/lit8 v2, p13, 0x6

    move/from16 v14, p1

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_0

    :cond_1
    const/16 v3, 0x10

    :goto_0
    or-int/2addr v2, v3

    move/from16 v3, p2

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_1

    :cond_2
    const/16 v4, 0x80

    :goto_1
    or-int/2addr v2, v4

    move/from16 v4, p3

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x800

    goto :goto_2

    :cond_3
    const/16 v5, 0x400

    :goto_2
    or-int/2addr v2, v5

    move/from16 v5, p4

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x4000

    goto :goto_3

    :cond_4
    const/16 v6, 0x2000

    :goto_3
    or-int/2addr v2, v6

    move/from16 v6, p5

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_5

    const/high16 v8, 0x20000

    goto :goto_4

    :cond_5
    const/high16 v8, 0x10000

    :goto_4
    or-int/2addr v2, v8

    move/from16 v8, p6

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_6

    const/high16 v9, 0x100000

    goto :goto_5

    :cond_6
    const/high16 v9, 0x80000

    :goto_5
    or-int/2addr v2, v9

    move/from16 v9, p7

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v11

    if-eqz v11, :cond_7

    const/high16 v11, 0x800000

    goto :goto_6

    :cond_7
    const/high16 v11, 0x400000

    :goto_6
    or-int/2addr v2, v11

    if-nez p8, :cond_8

    const/4 v11, -0x1

    goto :goto_7

    :cond_8
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    :goto_7
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v11

    if-eqz v11, :cond_9

    const/high16 v11, 0x4000000

    goto :goto_8

    :cond_9
    const/high16 v11, 0x2000000

    :goto_8
    or-int/2addr v2, v11

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/high16 v11, 0x20000000

    goto :goto_9

    :cond_a
    const/high16 v11, 0x10000000

    :goto_9
    or-int v15, v2, v11

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x4

    goto :goto_a

    :cond_b
    const/4 v2, 0x2

    :goto_a
    const/16 v12, 0x30

    or-int/2addr v2, v12

    const v12, 0x12492493

    and-int/2addr v12, v15

    const v11, 0x12492492

    move-object/from16 v16, v0

    if-ne v12, v11, :cond_d

    and-int/lit8 v2, v2, 0x13

    const/16 v11, 0x12

    if-eq v2, v11, :cond_c

    goto :goto_b

    :cond_c
    const/4 v2, 0x0

    goto :goto_c

    :cond_d
    :goto_b
    const/4 v2, 0x1

    :goto_c
    and-int/lit8 v11, v15, 0x1

    invoke-virtual {v13, v11, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    sget-object v11, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v12, v0, :cond_e

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v12}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v12, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v17, v1

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v16, :cond_f

    if-ne v1, v0, :cond_10

    :cond_f
    new-instance v1, Ls60;

    const/4 v0, 0x2

    invoke-direct {v1, v11, v0}, Ls60;-><init>(Landroidx/compose/ui/unit/Density;I)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Landroidx/compose/animation/EnterExitTransitionKt;->r(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v11, 0xd

    move-object/from16 p0, v2

    const/4 v2, 0x0

    invoke-static {v2, v1, v2, v11}, Landroidx/compose/animation/EnterExitTransitionKt;->d(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/animation/EnterTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    const/4 v11, 0x1

    invoke-static {v2, v1, v11}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v16

    const/4 v0, 0x3

    invoke-static {v0, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->v(ILkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;

    move-result-object v1

    const/16 v11, 0xf

    invoke-static {v2, v2, v2, v11}, Landroidx/compose/animation/EnterExitTransitionKt;->n(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v1

    invoke-static {v2, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v18

    move v1, v0

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;

    move/from16 v19, v1

    move v2, v3

    move v3, v5

    move v1, v6

    move v5, v8

    move-object v11, v10

    move-object/from16 v6, v17

    move-object/from16 v17, p0

    move v8, v4

    move v10, v9

    move-object/from16 v9, p8

    move-object/from16 v4, p11

    invoke-direct/range {v0 .. v12}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;-><init>(ZZZLkotlin/jvm/functions/Function1;ZLcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    const v1, -0x37327a12

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    shr-int/lit8 v0, v15, 0x3

    and-int/lit8 v0, v0, 0xe

    const v1, 0x30c30

    or-int v10, v0, v1

    const/16 v11, 0x10

    const/4 v7, 0x0

    move-object v9, v13

    move v3, v14

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    move-object/from16 v6, v18

    invoke-static/range {v3 .. v11}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v1, v4

    goto :goto_d

    :cond_11
    move-object v9, v13

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v1, v16

    :goto_d
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_12

    new-instance v0, Lcm0;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcm0;-><init>(Landroidx/compose/ui/Modifier;ZZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method
