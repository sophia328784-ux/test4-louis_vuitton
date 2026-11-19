.class public abstract Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickFilterButtonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00028\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "isTextVisible",
        "Lkotlinx/coroutines/Job;",
        "initialAnimationJob",
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
.method public static final a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v6, p5

    move/from16 v8, p8

    const-string v1, "QuickFilterButton"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x3924faa8

    move-object/from16 v4, p7

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    iget-object v3, v14, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v4, p9, 0x1

    if-eqz v4, :cond_1

    or-int/lit8 v7, v8, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v7, v8, 0x6

    if-nez v7, :cond_3

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x4

    goto :goto_0

    :cond_2
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v8

    goto :goto_1

    :cond_3
    move v7, v8

    :goto_1
    and-int/lit8 v9, v8, 0x30

    if-nez v9, :cond_5

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v7, v9

    :cond_5
    and-int/lit8 v9, p9, 0x4

    if-eqz v9, :cond_7

    or-int/lit16 v7, v7, 0x180

    :cond_6
    move-object/from16 v10, p2

    goto :goto_4

    :cond_7
    and-int/lit16 v10, v8, 0x180

    if-nez v10, :cond_6

    move-object/from16 v10, p2

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x100

    goto :goto_3

    :cond_8
    const/16 v11, 0x80

    :goto_3
    or-int/2addr v7, v11

    :goto_4
    and-int/lit16 v11, v8, 0xc00

    if-nez v11, :cond_a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v11, 0x800

    goto :goto_5

    :cond_9
    const/16 v11, 0x400

    :goto_5
    or-int/2addr v7, v11

    :cond_a
    and-int/lit8 v11, p9, 0x10

    if-eqz v11, :cond_c

    or-int/lit16 v7, v7, 0x6000

    :cond_b
    move/from16 v13, p4

    goto :goto_7

    :cond_c
    and-int/lit16 v13, v8, 0x6000

    if-nez v13, :cond_b

    move/from16 v13, p4

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_6

    :cond_d
    const/16 v15, 0x2000

    :goto_6
    or-int/2addr v7, v15

    :goto_7
    const/high16 v15, 0x30000

    and-int/2addr v15, v8

    if-nez v15, :cond_f

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    const/high16 v15, 0x20000

    goto :goto_8

    :cond_e
    const/high16 v15, 0x10000

    :goto_8
    or-int/2addr v7, v15

    :cond_f
    and-int/lit8 v15, p9, 0x40

    const/high16 v16, 0x180000

    if-eqz v15, :cond_10

    or-int v7, v7, v16

    move-object/from16 v5, p6

    goto :goto_a

    :cond_10
    and-int v16, v8, v16

    move-object/from16 v5, p6

    if-nez v16, :cond_12

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v17, 0x100000

    goto :goto_9

    :cond_11
    const/high16 v17, 0x80000

    :goto_9
    or-int v7, v7, v17

    :cond_12
    :goto_a
    const v17, 0x92493

    and-int v12, v7, v17

    move-object/from16 v17, v0

    const v0, 0x92492

    move/from16 v19, v15

    const/4 v15, 0x0

    if-eq v12, v0, :cond_13

    const/4 v0, 0x1

    goto :goto_b

    :cond_13
    move v0, v15

    :goto_b
    and-int/lit8 v12, v7, 0x1

    invoke-virtual {v14, v12, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_27

    if-eqz v4, :cond_14

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :cond_14
    move-object/from16 v0, v17

    :goto_c
    if-eqz v9, :cond_15

    const-string v4, ""

    goto :goto_d

    :cond_15
    move-object v4, v10

    :goto_d
    if-eqz v11, :cond_16

    const/16 v21, 0x1

    goto :goto_e

    :cond_16
    move/from16 v21, v13

    :goto_e
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v19, :cond_18

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v9, :cond_17

    new-instance v5, Lyn0;

    const/16 v10, 0x18

    invoke-direct {v5, v10}, Lyn0;-><init>(I)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v5, Lkotlin/jvm/functions/Function1;

    :cond_18
    move-object/from16 v26, v5

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v9, :cond_19

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object/from16 v27, v5

    check-cast v27, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v9, :cond_1a

    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v5, v14}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    sget-object v10, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x0

    if-ne v11, v9, :cond_1b

    invoke-static {v12}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object/from16 v25, v11

    check-cast v25, Landroidx/compose/runtime/MutableState;

    and-int/lit16 v11, v7, 0x1c00

    const/16 v13, 0x800

    if-ne v11, v13, :cond_1c

    const/4 v11, 0x1

    goto :goto_f

    :cond_1c
    move v11, v15

    :goto_f
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v11, v13

    const/high16 v13, 0x380000

    and-int/2addr v13, v7

    move-object/from16 p2, v12

    const/high16 v12, 0x100000

    if-ne v13, v12, :cond_1d

    const/4 v12, 0x1

    goto :goto_10

    :cond_1d
    move v12, v15

    :goto_10
    or-int/2addr v11, v12

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_1f

    if-ne v12, v9, :cond_1e

    goto :goto_11

    :cond_1e
    move-object/from16 v11, v25

    goto :goto_12

    :cond_1f
    :goto_11
    new-instance v22, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickFilterButtonKt$QuickFilterButton$2$1;

    const/16 v28, 0x0

    move-object/from16 v23, p3

    move-object/from16 v24, v5

    invoke-direct/range {v22 .. v28}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickFilterButtonKt$QuickFilterButton$2$1;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v12, v22

    move-object/from16 v11, v25

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_12
    check-cast v12, Lkotlin/jvm/functions/Function2;

    move-object/from16 v5, p3

    invoke-static {v14, v5, v12}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v12, Landroidx/compose/material3/InteractiveComponentSizeKt;->a:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    sget-object v12, Landroidx/compose/material3/MinimumInteractiveModifier;->b:Landroidx/compose/material3/MinimumInteractiveModifier;

    invoke-interface {v0, v12}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v13

    iget v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->v:F

    invoke-static {v12, v13}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v13

    iget v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->q:F

    invoke-static {v13}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move/from16 v16, v7

    iget-wide v7, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    sget-object v13, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v12, v7, v8, v13}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v20

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    const/high16 v8, 0x70000

    and-int v8, v16, v8

    const/high16 v12, 0x20000

    if-ne v8, v12, :cond_20

    const/4 v8, 0x1

    goto :goto_13

    :cond_20
    move v8, v15

    :goto_13
    or-int/2addr v7, v8

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_21

    if-ne v8, v9, :cond_22

    :cond_21
    new-instance v8, Lsm0;

    const/16 v7, 0x9

    invoke-direct {v8, v10, v6, v11, v7}, Lsm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object/from16 v24, v8

    check-cast v24, Lkotlin/jvm/functions/Function0;

    const/16 v25, 0x1e

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v8, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    iget-wide v9, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v14, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v3, :cond_26

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_23

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_14

    :cond_23
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_14
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v8, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v10, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v9, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v7, v13, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v7

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v15

    iget v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    move-object/from16 v19, v0

    const/4 v0, 0x0

    move-object/from16 v18, v3

    const/4 v3, 0x2

    invoke-static {v7, v15, v0, v3}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->v:F

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v15, 0x30

    invoke-static {v7, v3, v14, v15}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v3

    iget-wide v5, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v14, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v18, :cond_25

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v7, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_24

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_15

    :cond_24
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_15
    invoke-static {v14, v3, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v6, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v14, v10, v14, v9}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v14, v0, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/vuitton/android/designkit/ui/theme/IconSize;->b:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    shr-int/lit8 v0, v16, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v2, v14, v0}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v9

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    const v0, 0x7f14036c

    invoke-static {v14, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    const/16 v15, 0x8

    const/16 v16, 0x0

    const/4 v0, 0x1

    invoke-static/range {v9 .. v16}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ComposableSingletons$QuickFilterButtonKt;->a:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ComposableSingletons$QuickFilterButtonKt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ComposableSingletons$QuickFilterButtonKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v17, 0x180006

    const/16 v18, 0x1e

    sget-object v9, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    invoke-static/range {v9 .. v18}, Landroidx/compose/animation/AnimatedVisibilityKt;->d(Landroidx/compose/foundation/layout/RowScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v14, v16

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v3, v4

    move-object/from16 v1, v19

    move/from16 v5, v21

    move-object/from16 v7, v26

    goto :goto_16

    :cond_25
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p2

    :cond_26
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p2

    :cond_27
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v7, v5

    move-object v3, v10

    move v5, v13

    move-object/from16 v1, v17

    :goto_16
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_28

    new-instance v0, Lzu;

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lzu;-><init>(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_28
    return-void
.end method
