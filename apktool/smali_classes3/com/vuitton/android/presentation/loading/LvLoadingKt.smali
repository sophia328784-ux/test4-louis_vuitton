.class public abstract Lcom/vuitton/android/presentation/loading/LvLoadingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u00a8\u0006\u000b\u00b2\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0008\u001a\u00020\u00068\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\t\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\n\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "previousIsVisible",
        "isBackgroundVisible",
        "isContentVisible",
        "Lcom/airbnb/lottie/LottieComposition;",
        "composition",
        "",
        "progress",
        "alphaContent",
        "displayWaitingMessage",
        "displayBackButton",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/loading/LoadingMode;ZZJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v13, p2

    const-string v1, "LvLoading"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v5, v0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x1e17d211

    move-object/from16 v3, p7

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int v0, p8, v0

    if-nez v2, :cond_2

    const/4 v3, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    :goto_1
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_2

    :cond_3
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v0, v3

    move/from16 v15, p3

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x800

    goto :goto_4

    :cond_5
    const/16 v3, 0x400

    :goto_4
    or-int/2addr v0, v3

    move-wide/from16 v6, p4

    invoke-virtual {v9, v6, v7}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x4000

    goto :goto_5

    :cond_6
    const/16 v3, 0x2000

    :goto_5
    or-int/2addr v0, v3

    move-object/from16 v3, p6

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/high16 v8, 0x20000

    goto :goto_6

    :cond_7
    const/high16 v8, 0x10000

    :goto_6
    or-int/2addr v0, v8

    const v8, 0x12493

    and-int/2addr v8, v0

    const v10, 0x12492

    const/4 v11, 0x0

    if-eq v8, v10, :cond_8

    const/4 v8, 0x1

    goto :goto_7

    :cond_8
    move v8, v11

    :goto_7
    and-int/lit8 v10, v0, 0x1

    invoke-virtual {v9, v10, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_20

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->p:I

    invoke-static {v8, v9, v11}, Ln00;->h(ILandroidx/compose/runtime/GapComposer;I)Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    move-result-object v22

    sget-object v8, Lcom/vuitton/android/presentation/loading/LoadingMode;->DarkMode:Lcom/vuitton/android/presentation/loading/LoadingMode;

    if-ne v2, v8, :cond_9

    sget-object v10, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderStyle;->DARK_BACKGROUND:Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderStyle;

    goto :goto_8

    :cond_9
    sget-object v10, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderStyle;->LIGHT_BACKGROUND:Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderStyle;

    :goto_8
    invoke-static {v10, v9}, Lcom/vuitton/android/designkit/components/LoadingExtKt;->a(Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderStyle;Landroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    move-result-object v23

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v6

    move-object/from16 v24, v9

    const v9, 0x7fffffff

    move v7, v11

    const/16 v11, 0x3b8

    move v10, v7

    const/4 v7, 0x1

    move-object/from16 v16, v8

    const/4 v8, 0x0

    move v12, v10

    move-object/from16 v27, v16

    move-object/from16 v10, v24

    invoke-static/range {v6 .. v11}, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt;->a(Lcom/airbnb/lottie/LottieComposition;ZLcom/airbnb/lottie/compose/LottieClipSpec$Frame;ILandroidx/compose/runtime/Composer;I)Lcom/airbnb/lottie/compose/LottieAnimatable;

    move-result-object v24

    move-object v9, v10

    if-eqz v13, :cond_a

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    :goto_9
    const/16 v7, 0x12c

    const/4 v8, 0x0

    const/4 v10, 0x6

    invoke-static {v7, v12, v8, v10}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v7

    const/16 v10, 0x30

    const/16 v11, 0x1c

    move-object/from16 v16, v8

    move-object/from16 v4, v16

    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    move-object v7, v9

    const/4 v8, 0x7

    invoke-static {v12, v8, v7, v4}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v8

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v10, :cond_b

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v9}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object v11, v9

    check-cast v11, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v10, :cond_c

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v9}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v20, v9

    check-cast v20, Landroidx/compose/runtime/MutableState;

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v25, v4

    and-int/lit16 v4, v0, 0x1c00

    const/16 v14, 0x800

    if-ne v4, v14, :cond_d

    const/4 v4, 0x1

    goto :goto_a

    :cond_d
    move v4, v12

    :goto_a
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v4, v14

    const v14, 0xe000

    and-int/2addr v14, v0

    const/16 v12, 0x4000

    if-ne v14, v12, :cond_e

    const/4 v12, 0x1

    goto :goto_b

    :cond_e
    const/4 v12, 0x0

    :goto_b
    or-int/2addr v4, v12

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v4, :cond_10

    if-ne v12, v10, :cond_f

    goto :goto_c

    :cond_f
    move-object/from16 v16, v8

    move-object v14, v12

    move-object/from16 v12, v20

    const/4 v4, 0x1

    goto :goto_d

    :cond_10
    :goto_c
    new-instance v14, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;

    const/16 v21, 0x0

    move-wide/from16 v17, p4

    move-object/from16 v16, v8

    move-object/from16 v19, v11

    const/4 v4, 0x1

    invoke-direct/range {v14 .. v21}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;-><init>(ZLcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;JLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v12, v20

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_d
    check-cast v14, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v15, v0, 0x9

    invoke-static {v7, v9, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v8, 0x0

    invoke-static {v1, v8}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    iget-wide v8, v7, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v7, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v4, v7, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v4, :cond_1f

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v4, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v4, :cond_11

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_11
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_e
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v9, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v0, v27

    if-ne v2, v0, :cond_12

    const v0, -0x604b3aea

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_f

    :cond_12
    const/4 v8, 0x0

    const v0, -0x6049d8f5

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_f
    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v5, v0, v1, v4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v27

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_13

    new-instance v0, Lfa0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lfa0;-><init>(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    move-object/from16 v31, v0

    check-cast v31, Lkotlin/jvm/functions/Function0;

    const/16 v32, 0xe

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v27 .. v32}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, -0x3bced2e6

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v1, 0xca3d8b5

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v10, :cond_14

    new-instance v4, Landroidx/constraintlayout/compose/Measurer2;

    invoke-direct {v4, v1}, Landroidx/constraintlayout/compose/Measurer2;-><init>(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v4, Landroidx/constraintlayout/compose/Measurer2;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_15

    new-instance v1, Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    invoke-direct {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;-><init>()V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v1, Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v10, :cond_16

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v8}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    move-object/from16 v32, v8

    check-cast v32, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v10, :cond_17

    new-instance v8, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;

    invoke-direct {v8, v1}, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;-><init>(Landroidx/constraintlayout/compose/ConstraintLayoutScope;)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v30, v8

    check-cast v30, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v10, :cond_18

    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->h()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v9

    invoke-static {v8, v9}, Landroidx/compose/runtime/SnapshotStateKt;->f(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object/from16 v28, v8

    check-cast v28, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0x101

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v14

    or-int/2addr v8, v14

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v8, :cond_1a

    if-ne v14, v10, :cond_19

    goto :goto_10

    :cond_19
    move-object/from16 v9, v30

    move-object/from16 v8, v32

    goto :goto_11

    :cond_1a
    :goto_10
    new-instance v27, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$2;

    move-object/from16 v29, v4

    move/from16 v31, v9

    invoke-direct/range {v27 .. v32}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$2;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/constraintlayout/compose/Measurer2;Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;ILandroidx/compose/runtime/MutableState;)V

    move-object/from16 v14, v27

    move-object/from16 v9, v30

    move-object/from16 v8, v32

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_11
    check-cast v14, Landroidx/compose/ui/layout/MeasurePolicy;

    move-object/from16 p7, v1

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_1b

    new-instance v1, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$3;

    invoke-direct {v1, v8, v9}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$3;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;)V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_1c

    if-ne v9, v10, :cond_1d

    :cond_1c
    new-instance v9, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$4;

    invoke-direct {v9, v4}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$4;-><init>(Landroidx/constraintlayout/compose/Measurer2;)V

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x0

    invoke-static {v0, v8, v9}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v4, v0

    new-instance v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;

    move-object v9, v6

    move-object v13, v7

    move/from16 p0, v15

    move-object/from16 v10, v22

    move-object/from16 v8, v23

    move-object/from16 v7, v24

    move-object v6, v2

    move-object v15, v4

    move-object/from16 v2, p7

    move-object v4, v3

    move-object v3, v1

    move-object/from16 v1, v28

    invoke-direct/range {v0 .. v12}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/constraintlayout/compose/ConstraintLayoutScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/loading/LoadingMode;Lcom/airbnb/lottie/compose/LottieAnimationState;Lcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/runtime/State;Lcom/airbnb/lottie/compose/LottieCompositionResult;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    move-object v1, v5

    const v2, 0x478ef317

    invoke-static {v2, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v2, 0x30

    invoke-static {v15, v0, v14, v13, v2}, Landroidx/compose/ui/layout/LayoutKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/Composer;I)V

    const/4 v8, 0x0

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual/range {v16 .. v16}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    const v0, -0x6003945c

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v0, 0x7f140319

    invoke-static {v13, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v15

    sget-object v0, Lcom/vuitton/android/presentation/loading/ComposableSingletons$LvLoadingKt;->a:Lcom/vuitton/android/presentation/loading/ComposableSingletons$LvLoadingKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v23, Lcom/vuitton/android/presentation/loading/ComposableSingletons$LvLoadingKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0x380

    const/high16 v2, 0x6000000

    or-int/2addr v0, v2

    sget v2, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v2, v2, 0x9

    or-int v25, v0, v2

    const/16 v26, 0xf1

    const/4 v14, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v24, v13

    move-object/from16 v17, v16

    move-object/from16 v16, p6

    invoke-static/range {v14 .. v26}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v9, v24

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    const/4 v4, 0x1

    goto :goto_13

    :cond_1e
    move-object v9, v13

    const v0, -0x5ff88875

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :goto_13
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_1f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v25

    :cond_20
    move-object v1, v5

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_14
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_21

    new-instance v0, Leb0;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Leb0;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/loading/LoadingMode;ZZJLkotlin/jvm/functions/Function0;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_21
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/loading/LoadingMode;ZJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v8, p8

    if-eqz v0, :cond_0

    const-string v1, "LvLoadingWithEnterExitAnimation"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v10, v0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x258bb65b

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v8, 0x6

    if-nez v1, :cond_2

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v8

    goto :goto_1

    :cond_2
    move v1, v8

    :goto_1
    and-int/lit8 v3, v8, 0x30

    const/16 v4, 0x20

    move/from16 v12, p1

    if-nez v3, :cond_4

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_4
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_5

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_5
    and-int/lit16 v5, v8, 0x180

    if-nez v5, :cond_8

    if-nez p2, :cond_6

    const/4 v5, -0x1

    goto :goto_3

    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    :goto_3
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v1, v5

    :cond_8
    :goto_5
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_a

    or-int/lit16 v1, v1, 0xc00

    :cond_9
    move/from16 v6, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v6, v8, 0xc00

    if-nez v6, :cond_9

    move/from16 v6, p3

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x800

    goto :goto_6

    :cond_b
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v1, v7

    :goto_7
    or-int/lit16 v1, v1, 0x6000

    const/high16 v7, 0x30000

    and-int/2addr v7, v8

    if-nez v7, :cond_d

    move-object/from16 v7, p6

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/high16 v9, 0x20000

    goto :goto_8

    :cond_c
    const/high16 v9, 0x10000

    :goto_8
    or-int/2addr v1, v9

    goto :goto_9

    :cond_d
    move-object/from16 v7, p6

    :goto_9
    const v9, 0x12493

    and-int/2addr v9, v1

    const v11, 0x12492

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v9, v11, :cond_e

    move v9, v14

    goto :goto_a

    :cond_e
    move v9, v13

    :goto_a
    and-int/lit8 v11, v1, 0x1

    invoke-virtual {v0, v11, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_17

    if-eqz v3, :cond_f

    sget-object v3, Lcom/vuitton/android/presentation/loading/LoadingMode;->DarkMode:Lcom/vuitton/android/presentation/loading/LoadingMode;

    goto :goto_b

    :cond_f
    move-object/from16 v3, p2

    :goto_b
    if-eqz v5, :cond_10

    move v6, v13

    :cond_10
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v9, :cond_11

    const/4 v5, 0x0

    invoke-static {v5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v9, :cond_12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v11, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v9, :cond_13

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v15}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v15, Landroidx/compose/runtime/MutableState;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    and-int/lit8 v1, v1, 0x70

    if-ne v1, v4, :cond_14

    goto :goto_c

    :cond_14
    move v14, v13

    :goto_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v14, :cond_15

    if-ne v1, v9, :cond_16

    :cond_15
    move-object v14, v11

    goto :goto_d

    :cond_16
    move-object v14, v11

    move-object v11, v1

    move v1, v13

    goto :goto_e

    :goto_d
    new-instance v11, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoadingWithEnterExitAnimation$1$1;

    const/16 v16, 0x0

    move v1, v13

    move-object v13, v5

    invoke-direct/range {v11 .. v16}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoadingWithEnterExitAnimation$1$1;-><init>(ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_e
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v4, Landroidx/compose/animation/core/EasingKt;->d:Lov;

    const/16 v5, 0x1f4

    const/4 v9, 0x2

    invoke-static {v5, v1, v4, v9}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v17

    invoke-static {v5, v1, v4, v9}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    invoke-static {v1, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v1

    new-instance v9, Lcb0;

    const-wide/16 v13, 0x2710

    move-object v11, v3

    move v12, v6

    move-object/from16 v16, v15

    move-object v15, v7

    invoke-direct/range {v9 .. v16}, Lcb0;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/loading/LoadingMode;ZJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    move-wide v4, v13

    const v7, -0x688d6f83

    invoke-static {v7, v9, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v16

    const/high16 v18, 0x30000

    const/16 v19, 0x12

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object v14, v1

    move v11, v2

    move-object/from16 v13, v17

    move-object/from16 v17, v0

    invoke-static/range {v11 .. v19}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-wide/from16 v20, v4

    move v4, v6

    move-wide/from16 v5, v20

    goto :goto_f

    :cond_17
    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v3, p2

    move v4, v6

    move-wide/from16 v5, p4

    :goto_f
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_18

    new-instance v0, Ldb0;

    move/from16 v2, p1

    move-object/from16 v7, p6

    move/from16 v9, p9

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Ldb0;-><init>(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/loading/LoadingMode;ZJLkotlin/jvm/functions/Function0;II)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method
