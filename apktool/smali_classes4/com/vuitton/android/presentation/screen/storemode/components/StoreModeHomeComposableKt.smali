.class public abstract Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeHomeComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;",
        "viewState",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x18d6afe1

    move-object/from16 v8, p6

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    and-int/lit8 v0, v7, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v7

    goto :goto_1

    :cond_1
    move v0, v7

    :goto_1
    and-int/lit8 v8, v7, 0x30

    const/16 v9, 0x20

    if-nez v8, :cond_3

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v9

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v0, v8

    :cond_3
    and-int/lit16 v8, v7, 0x180

    if-nez v8, :cond_5

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v0, v8

    :cond_5
    and-int/lit16 v8, v7, 0xc00

    if-nez v8, :cond_7

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x800

    goto :goto_4

    :cond_6
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v0, v8

    :cond_7
    and-int/lit16 v8, v7, 0x6000

    if-nez v8, :cond_9

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x4000

    goto :goto_5

    :cond_8
    const/16 v8, 0x2000

    :goto_5
    or-int/2addr v0, v8

    :cond_9
    const/high16 v8, 0x30000

    and-int/2addr v8, v7

    if-nez v8, :cond_b

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/high16 v8, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v8, 0x10000

    :goto_6
    or-int/2addr v0, v8

    :cond_b
    const v8, 0x12493

    and-int/2addr v8, v0

    const v10, 0x12492

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v8, v10, :cond_c

    move v8, v12

    goto :goto_7

    :cond_c
    move v8, v11

    :goto_7
    and-int/lit8 v10, v0, 0x1

    invoke-virtual {v14, v10, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_11

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    and-int/lit8 v10, v0, 0x70

    if-ne v10, v9, :cond_d

    move v9, v12

    goto :goto_8

    :cond_d
    move v9, v11

    :goto_8
    or-int/2addr v8, v9

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v13, 0x3

    if-nez v8, :cond_e

    if-ne v9, v10, :cond_f

    :cond_e
    new-instance v9, Lp01;

    invoke-direct {v9, v1, v2, v13}, Lp01;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v11, v9, v14, v11, v12}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v14, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v8, "StoreModeExploreScreen"

    invoke-direct {v0, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v8}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v8, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v8, Landroidx/compose/ui/graphics/Color;->c:J

    const v11, 0x3f59999a    # 0.85f

    invoke-static {v11, v8, v9}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v8

    sget-object v11, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v8, v9, v11}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_10

    new-instance v0, Lnw0;

    const/16 v8, 0x1d

    invoke-direct {v0, v8}, Lnw0;-><init>(I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v19, v0

    check-cast v19, Lkotlin/jvm/functions/Function0;

    const/16 v20, 0x1b

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-boolean v8, v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->e:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v10

    invoke-static {v9, v11, v13}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v10

    move v15, v11

    invoke-static {v9, v13}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v11

    new-instance v9, Ll11;

    invoke-direct {v9, v0, v3, v4}, Ll11;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const v12, 0x28e3bab9

    invoke-static {v12, v9, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    move v12, v15

    const v15, 0x30d80

    const/16 v17, 0x1

    const/16 v16, 0x12

    move/from16 v18, v13

    move-object v13, v9

    const/4 v9, 0x0

    move/from16 v19, v12

    const/4 v12, 0x0

    move/from16 v2, v18

    move/from16 v4, v19

    const/4 v5, 0x0

    invoke-static/range {v8 .. v16}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    iget-boolean v8, v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->g:Z

    xor-int/lit8 v8, v8, 0x1

    invoke-static {v5, v4, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v10

    invoke-static {v5, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v11

    new-instance v2, Ll11;

    invoke-direct {v2, v6, v0, v3}, Ll11;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)V

    const v0, 0x6b86ae30

    invoke-static {v0, v2, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    invoke-static/range {v8 .. v16}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_9

    :cond_11
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_9
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_12

    new-instance v0, Lz2;

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v7}, Lz2;-><init>(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x5c847ce3

    move-object/from16 v3, p6

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x4

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p7, v0

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v0, v3

    move-object/from16 v11, p3

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    goto :goto_3

    :cond_3
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v0, v3

    move-object/from16 v3, p4

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x4000

    goto :goto_4

    :cond_4
    const/16 v6, 0x2000

    :goto_4
    or-int/2addr v0, v6

    move-object/from16 v6, p5

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/high16 v7, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v7, 0x10000

    :goto_5
    or-int v12, v0, v7

    const v0, 0x12493

    and-int/2addr v0, v12

    const v7, 0x12492

    const/4 v13, 0x0

    const/16 v17, 0x1

    if-eq v0, v7, :cond_6

    move/from16 v0, v17

    goto :goto_6

    :cond_6
    move v0, v13

    :goto_6
    and-int/lit8 v7, v12, 0x1

    invoke-virtual {v15, v7, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v15}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v14, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v14}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    and-int/lit8 v9, v12, 0xe

    if-eq v9, v10, :cond_7

    move/from16 v16, v13

    goto :goto_7

    :cond_7
    move/from16 v16, v17

    :goto_7
    and-int/lit8 v5, v12, 0x70

    if-eq v5, v4, :cond_8

    move v4, v13

    goto :goto_8

    :cond_8
    move/from16 v4, v17

    :goto_8
    or-int v4, v16, v4

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_9

    if-ne v5, v10, :cond_a

    :cond_9
    new-instance v5, Lrp0;

    const/16 v4, 0x1b

    invoke-direct {v5, v1, v2, v4}, Lrp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v5, v15, v13}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v4

    sget-object v14, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v5, 0x4

    if-eq v9, v5, :cond_b

    move v5, v13

    goto :goto_9

    :cond_b
    move/from16 v5, v17

    :goto_9
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    const/4 v11, 0x0

    if-nez v5, :cond_c

    if-ne v13, v10, :cond_d

    :cond_c
    new-instance v13, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeHomeComposableKt$StoreModeHomeComposable$1$1;

    invoke-direct {v13, v1, v11}, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeHomeComposableKt$StoreModeHomeComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v14, v13}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    const/4 v11, 0x4

    if-eq v9, v11, :cond_e

    const/4 v11, 0x0

    goto :goto_a

    :cond_e
    move/from16 v11, v17

    :goto_a
    or-int/2addr v5, v11

    and-int/lit16 v11, v12, 0x380

    move-object/from16 v20, v0

    const/16 v0, 0x100

    if-ne v11, v0, :cond_f

    move/from16 v0, v17

    goto :goto_b

    :cond_f
    const/4 v0, 0x0

    :goto_b
    or-int/2addr v0, v5

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_10

    if-ne v5, v10, :cond_11

    :cond_10
    new-instance v5, Lsm0;

    const/16 v0, 0x13

    invoke-direct {v5, v0, v7, v1, v8}, Lsm0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object v11, v5

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x4

    if-eq v9, v5, :cond_12

    const/4 v5, 0x0

    goto :goto_c

    :cond_12
    move/from16 v5, v17

    :goto_c
    or-int/2addr v0, v5

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_13

    if-ne v5, v10, :cond_14

    :cond_13
    new-instance v5, Lm11;

    invoke-direct {v5, v1, v7}, Lm11;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v18, v5

    check-cast v18, Lkotlin/jvm/functions/Function0;

    new-instance v0, Lo;

    move-object v5, v3

    move-object v3, v4

    move-object/from16 v4, v20

    invoke-direct/range {v0 .. v7}, Lo;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    const v2, 0x64dcfb7

    invoke-static {v2, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/4 v5, 0x4

    if-eq v9, v5, :cond_15

    const/4 v2, 0x0

    goto :goto_d

    :cond_15
    move/from16 v2, v17

    :goto_d
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_16

    if-ne v3, v10, :cond_17

    :cond_16
    new-instance v3, Lqk;

    const/4 v2, 0x2

    invoke-direct {v3, v1, v2}, Lqk;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;I)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v3, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v2, v12, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit16 v2, v2, 0x6000

    move-object v4, v13

    move-object v13, v0

    move v0, v9

    move-object v9, v4

    move/from16 v16, v2

    move-object v4, v10

    move-object v2, v14

    move-object/from16 v12, v18

    const/16 v19, 0x0

    move-object/from16 v10, p3

    move-object v14, v3

    const/4 v3, 0x0

    invoke-static/range {v9 .. v16}, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeHomeComposableKt;->a(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    if-eq v0, v5, :cond_18

    move/from16 v13, v19

    goto :goto_e

    :cond_18
    move/from16 v13, v17

    :goto_e
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v13, :cond_19

    if-ne v0, v4, :cond_1a

    :cond_19
    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeHomeComposableKt$StoreModeHomeComposable$6$1;

    invoke-direct {v0, v1, v3}, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeHomeComposableKt$StoreModeHomeComposable$6$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v2, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    goto :goto_f

    :cond_1b
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_f
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1c

    new-instance v0, Lzs0;

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object v3, v8

    invoke-direct/range {v0 .. v7}, Lzs0;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method
