.class public abstract Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;",
        "inAppBannerNullable",
        "",
        "heightInPx",
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
.method public static final a(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x33c44c12    # -4.9205176E7f

    move-object/from16 v2, p4

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
    or-int v0, p5, v0

    move-object/from16 v14, p1

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x20

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    move-object/from16 v2, p2

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x100

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v0, v5

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    const/16 v7, 0x800

    if-eqz v5, :cond_3

    move v5, v7

    goto :goto_3

    :cond_3
    const/16 v5, 0x400

    :goto_3
    or-int/2addr v0, v5

    and-int/lit16 v5, v0, 0x493

    const/16 v8, 0x492

    const/4 v11, 0x0

    if-eq v5, v8, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    move v5, v11

    :goto_4
    and-int/lit8 v8, v0, 0x1

    invoke-virtual {v9, v8, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_15

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    and-int/lit8 v8, v0, 0xe

    or-int/lit16 v8, v8, 0x180

    const/4 v12, 0x5

    invoke-static {v1, v5, v9, v8, v12}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;

    if-nez v5, :cond_5

    const v0, -0x28489d97

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_a

    :cond_5
    const v8, -0x28489d96

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v12, :cond_6

    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/animation/core/AnimatableKt;->a(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v8, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v12, :cond_7

    const/high16 v13, -0x40800000    # -1.0f

    invoke-static {v13}, Landroidx/compose/animation/core/AnimatableKt;->a(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v13, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v15, v15, v16

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v15, v15, v16

    and-int/lit8 v10, v0, 0x70

    if-ne v10, v3, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    move v3, v11

    :goto_5
    or-int/2addr v3, v15

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v3, :cond_a

    if-ne v10, v12, :cond_9

    goto :goto_6

    :cond_9
    move v3, v11

    move-object v11, v5

    move-object v5, v12

    move-object v12, v8

    move v8, v3

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    :goto_6
    new-instance v10, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;

    const/4 v15, 0x0

    move v3, v11

    move-object v11, v5

    move-object v5, v12

    move-object v12, v8

    move v8, v3

    const/4 v3, 0x1

    invoke-direct/range {v10 .. v15}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;-><init>(Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_7
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v11, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v10, v14

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v10, v14

    and-int/lit16 v14, v0, 0x380

    if-ne v14, v6, :cond_b

    move v6, v3

    goto :goto_8

    :cond_b
    move v6, v8

    :goto_8
    or-int/2addr v6, v10

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v6, :cond_c

    if-ne v10, v5, :cond_d

    :cond_c
    new-instance v10, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;

    const/4 v15, 0x0

    move-object v14, v2

    invoke-direct/range {v10 .. v15}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;-><init>(Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v11, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_e

    if-ne v6, v5, :cond_f

    :cond_e
    new-instance v6, Ly30;

    invoke-direct {v6, v12, v8}, Ly30;-><init>(Landroidx/compose/animation/core/Animatable;I)V

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v2, :cond_10

    if-ne v10, v5, :cond_11

    :cond_10
    new-instance v10, Ly30;

    invoke-direct {v10, v13, v3}, Ly30;-><init>(Landroidx/compose/animation/core/Animatable;I)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v10, Lkotlin/jvm/functions/Function0;

    and-int/lit16 v0, v0, 0x1c00

    if-ne v0, v7, :cond_12

    goto :goto_9

    :cond_12
    move v3, v8

    :goto_9
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v3, :cond_13

    if-ne v0, v5, :cond_14

    :cond_13
    new-instance v0, Lpy;

    const/16 v2, 0xa

    invoke-direct {v0, v4, v2}, Lpy;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v0, Lkotlin/jvm/functions/Function0;

    move-object v7, v10

    const/4 v10, 0x0

    move v5, v8

    move-object v8, v0

    move v0, v5

    move-object v5, v11

    invoke-static/range {v5 .. v10}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt;->b(Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_15
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_16

    new-instance v0, Luv;

    const/4 v6, 0x4

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Luv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const v0, -0x376df731

    move-object/from16 v2, p4

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p5, v0

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x800

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    const/16 v2, 0x400

    :goto_3
    or-int v13, v0, v2

    and-int/lit16 v0, v13, 0x493

    const/16 v2, 0x492

    const/4 v15, 0x0

    if-eq v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v15

    :goto_4
    and-int/lit8 v2, v13, 0x1

    invoke-virtual {v10, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v2, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v0, Landroidx/compose/runtime/MutableFloatState;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x8

    if-ne v4, v2, :cond_6

    new-instance v4, Lx20;

    invoke-direct {v4, v5}, Lx20;-><init>(I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v4, Lkotlin/jvm/functions/Function1;

    sget v6, Landroidx/compose/material3/SwipeToDismissBoxKt;->a:F

    sget-object v6, Landroidx/compose/material3/SwipeToDismissBoxValue;->Settled:Landroidx/compose/material3/SwipeToDismissBoxValue;

    new-array v14, v15, [Ljava/lang/Object;

    sget-object v16, Landroidx/compose/material3/SwipeToDismissBoxState;->c:Landroidx/compose/material3/SwipeToDismissBoxState$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lzt0;

    const/16 v11, 0x18

    invoke-direct {v12, v11}, Lzt0;-><init>(I)V

    new-instance v11, Ljo0;

    invoke-direct {v11, v4, v5}, Ljo0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    new-instance v5, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v5, v12, v11}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v11

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_7

    if-ne v12, v2, :cond_8

    :cond_7
    new-instance v12, Lp01;

    const/16 v11, 0xb

    invoke-direct {v12, v6, v4, v11}, Lp01;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-static {v14, v5, v12, v10, v15}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroidx/compose/material3/SwipeToDismissBoxState;

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_9

    invoke-static {v10}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v5

    :cond_9
    check-cast v5, Landroidx/compose/material3/SnackbarHostState;

    invoke-static {v10}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v6

    invoke-static {v6, v10}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v6

    invoke-static {v6}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v10}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v12

    invoke-static {v12, v10}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v12

    invoke-interface {v12}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v12

    invoke-static {v12}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v12

    float-to-int v12, v12

    iget-object v14, v11, Landroidx/compose/material3/SwipeToDismissBoxState;->a:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    iget-object v14, v14, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->g:Landroidx/compose/runtime/MutableState;

    check-cast v14, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v14}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/material3/SwipeToDismissBoxValue;

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    and-int/lit16 v15, v13, 0x1c00

    if-ne v15, v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    or-int v3, v18, v3

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v3, v15

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v3, :cond_b

    if-ne v15, v2, :cond_c

    :cond_b
    new-instance v15, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;

    const/4 v3, 0x0

    invoke-direct {v15, v11, v9, v4, v3}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;-><init>(Landroidx/compose/material3/SwipeToDismissBoxState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v14, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;->a:Ljava/lang/String;

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;->b:Ljava/lang/String;

    sget-object v21, Landroidx/compose/material3/SnackbarDuration;->Indefinite:Landroidx/compose/material3/SnackbarDuration;

    sget-object v25, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;->CHAT:Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;

    new-instance v19, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

    const/16 v26, 0x14

    const/16 v27, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v3

    move-object/from16 v23, v4

    invoke-direct/range {v19 .. v27}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;-><init>(Ljava/lang/String;Landroidx/compose/material3/SnackbarDuration;ZLjava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v19

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v4, v4, v18

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v18

    or-int v4, v4, v18

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v18

    or-int v4, v4, v18

    move-object/from16 v18, v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v4, :cond_e

    if-ne v0, v2, :cond_d

    goto :goto_6

    :cond_d
    move-object v9, v2

    move-object v1, v5

    move-object/from16 v12, v18

    goto :goto_7

    :cond_e
    :goto_6
    new-instance v0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$2$1;

    move v4, v6

    const/4 v6, 0x0

    move-object v9, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v5

    move v5, v12

    move-object/from16 v12, v18

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$2$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;IILkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_7
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v15, v0, v10}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "InAppBannerContent"

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->d(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_f

    new-instance v2, Lz30;

    const/4 v3, 0x0

    invoke-direct {v2, v12, v3}, Lz30;-><init>(Landroidx/compose/runtime/MutableFloatState;I)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    :goto_8
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v2, v13, 0x70

    const/16 v4, 0x20

    if-ne v2, v4, :cond_10

    const/4 v2, 0x1

    goto :goto_9

    :cond_10
    move v2, v3

    :goto_9
    and-int/lit16 v4, v13, 0x380

    const/16 v5, 0x100

    if-ne v4, v5, :cond_11

    const/4 v15, 0x1

    goto :goto_a

    :cond_11
    move v15, v3

    :goto_a
    or-int/2addr v2, v15

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_12

    if-ne v3, v9, :cond_13

    :cond_12
    new-instance v3, Ljx;

    const/4 v2, 0x7

    invoke-direct {v3, v7, v8, v12, v2}, Ljx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v3}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v0, Lcom/vuitton/android/presentation/inappbanner/ComposableSingletons$InAppBannerComposableKt;->a:Lcom/vuitton/android/presentation/inappbanner/ComposableSingletons$InAppBannerComposableKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v11

    sget-object v11, Lcom/vuitton/android/presentation/inappbanner/ComposableSingletons$InAppBannerComposableKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    new-instance v0, Lu4;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lu4;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v1, 0x53ea72f3

    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v16

    const v0, 0xc06c30

    sget v1, Landroidx/compose/material3/SwipeToDismissBoxState;->d:I

    or-int v18, v1, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v17, v10

    move-object v10, v4

    invoke-static/range {v10 .. v18}, Landroidx/compose/material3/SwipeToDismissBoxKt;->a(Landroidx/compose/material3/SwipeToDismissBoxState;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_b

    :cond_14
    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_b
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_15

    new-instance v0, Luv;

    const/4 v6, 0x5

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move/from16 v5, p5

    move-object v2, v7

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Luv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method
