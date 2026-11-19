.class public abstract Lcom/vuitton/android/presentation/compose/components/LVExpandableListAnimatedIconKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u00a8\u0006\u0007\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0004\u001a\u0004\u0018\u00010\u00038\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0006\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "isInitialized",
        "isReversed",
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


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;IZFLjava/lang/Integer;Landroidx/compose/runtime/Composer;II)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v6, p6

    const-string v2, "LVExpandableListAnimatedIcon-hGBTI10"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, 0x7ba5588e

    move-object/from16 v4, p5

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    and-int/lit8 v3, p7, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v4, v6, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v6, 0x6

    if-nez v4, :cond_3

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v6

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    and-int/lit8 v5, v6, 0x30

    if-nez v5, :cond_6

    and-int/lit8 v5, p7, 0x2

    if-nez v5, :cond_4

    move/from16 v5, p1

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x20

    goto :goto_2

    :cond_4
    move/from16 v5, p1

    :cond_5
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    goto :goto_3

    :cond_6
    move/from16 v5, p1

    :goto_3
    and-int/lit16 v8, v6, 0x180

    const/16 v9, 0x100

    if-nez v8, :cond_8

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v9

    goto :goto_4

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v4, v8

    :cond_8
    and-int/lit16 v8, v6, 0xc00

    if-nez v8, :cond_b

    and-int/lit8 v8, p7, 0x8

    if-nez v8, :cond_9

    move/from16 v8, p3

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_5

    :cond_9
    move/from16 v8, p3

    :cond_a
    const/16 v10, 0x400

    :goto_5
    or-int/2addr v4, v10

    goto :goto_6

    :cond_b
    move/from16 v8, p3

    :goto_6
    and-int/lit8 v10, p7, 0x10

    if-eqz v10, :cond_d

    or-int/lit16 v4, v4, 0x6000

    :cond_c
    move-object/from16 v11, p4

    goto :goto_8

    :cond_d
    and-int/lit16 v11, v6, 0x6000

    if-nez v11, :cond_c

    move-object/from16 v11, p4

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/16 v12, 0x4000

    goto :goto_7

    :cond_e
    const/16 v12, 0x2000

    :goto_7
    or-int/2addr v4, v12

    :goto_8
    and-int/lit16 v12, v4, 0x2493

    const/16 v13, 0x2492

    const/4 v14, 0x0

    if-eq v12, v13, :cond_f

    const/4 v12, 0x1

    goto :goto_9

    :cond_f
    move v12, v14

    :goto_9
    and-int/lit8 v13, v4, 0x1

    invoke-virtual {v7, v13, v12}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v12, v6, 0x1

    if-eqz v12, :cond_13

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_a

    :cond_10
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_11

    and-int/lit8 v4, v4, -0x71

    :cond_11
    and-int/lit8 v2, p7, 0x8

    if-eqz v2, :cond_12

    and-int/lit16 v4, v4, -0x1c01

    :cond_12
    move v10, v8

    move-object/from16 v28, v11

    move-object v11, v0

    move v8, v5

    goto :goto_d

    :cond_13
    :goto_a
    if-eqz v3, :cond_14

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_14
    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_15

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->i:I

    and-int/lit8 v4, v4, -0x71

    goto :goto_b

    :cond_15
    move v2, v5

    :goto_b
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_16

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->o:F

    and-int/lit16 v4, v4, -0x1c01

    move v8, v3

    :cond_16
    if-eqz v10, :cond_17

    move-object v11, v0

    move v10, v8

    const/16 v28, 0x0

    :goto_c
    move v8, v2

    goto :goto_d

    :cond_17
    move v10, v8

    move-object/from16 v28, v11

    move-object v11, v0

    goto :goto_c

    :goto_d
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v12, :cond_18

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object v2, v0

    check-cast v2, Landroidx/compose/runtime/MutableState;

    xor-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v7}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-static {v8, v7, v14}, Ln00;->h(ILandroidx/compose/runtime/GapComposer;I)Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    move-result-object v16

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v12, :cond_19

    const/4 v3, 0x0

    invoke-static {v3}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v3, Landroidx/compose/runtime/MutableFloatState;

    if-eqz v28, :cond_1a

    const v5, -0x3177902d

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v5, Lcom/airbnb/lottie/LottieProperty;->I:Landroid/graphics/ColorFilter;

    const/16 p0, 0x0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sget-object v15, Landroidx/core/graphics/BlendModeCompat;->SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

    invoke-static {v13, v15}, Landroidx/core/graphics/BlendModeColorFilterCompat;->a(ILandroidx/core/graphics/BlendModeCompat;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v13

    const-string v15, "**"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v13, v15, v7}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt;->b(Landroid/graphics/ColorFilter;Landroid/graphics/BlendModeColorFilter;[Ljava/lang/String;Landroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    move-result-object v5

    filled-new-array {v5}, [Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt;->a([Lcom/airbnb/lottie/compose/LottieDynamicProperty;Landroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    move-result-object v5

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v13, v16

    move-object/from16 v16, v5

    goto :goto_e

    :cond_1a
    const/16 p0, 0x0

    const v5, -0x317067e8

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v13, v16

    move-object/from16 v16, p0

    :goto_e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    and-int/lit16 v4, v4, 0x380

    if-ne v4, v9, :cond_1b

    const/4 v4, 0x1

    goto :goto_f

    :cond_1b
    move v4, v14

    :goto_f
    or-int/2addr v4, v5

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_1c

    if-ne v5, v12, :cond_1d

    :cond_1c
    move-object v4, v0

    new-instance v0, Lcom/vuitton/android/presentation/compose/components/LVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$1;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/compose/components/LVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$1;-><init>(ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :cond_1d
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v15, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v10}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v1, v14}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    iget-wide v4, v7, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v7, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v9, v7, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v9, :cond_20

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_1e

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_1e
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_10
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v1, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v4, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v13}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_1f

    new-instance v1, Lss;

    const/16 v2, 0x1c

    invoke-direct {v1, v3, v2}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/16 v26, 0x0

    const v27, 0x1fdfc

    const/4 v9, 0x0

    move v2, v10

    const/4 v10, 0x0

    move-object v3, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v25, 0x40000030    # 2.0000114f

    move-object/from16 v24, v7

    move-object v7, v0

    move v0, v2

    move v2, v8

    move-object v8, v1

    const/4 v1, 0x1

    invoke-static/range {v7 .. v27}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->b(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZZZLcom/airbnb/lottie/RenderMode;ZLcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ZZLjava/util/Map;Lcom/airbnb/lottie/AsyncUpdates;ZLandroidx/compose/runtime/Composer;III)V

    move-object/from16 v4, v24

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v1, v3

    move-object/from16 v5, v28

    move v4, v0

    goto :goto_11

    :cond_20
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p0

    :cond_21
    move-object v4, v7

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    move-object/from16 v24, v4

    move v2, v5

    move v4, v8

    move-object v5, v11

    :goto_11
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_22

    new-instance v0, Ly50;

    move/from16 v3, p2

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Ly50;-><init>(Landroidx/compose/ui/Modifier;IZFLjava/lang/Integer;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_22
    return-void
.end method
