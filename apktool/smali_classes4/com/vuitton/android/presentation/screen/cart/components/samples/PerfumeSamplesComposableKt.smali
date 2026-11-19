.class public abstract Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 36

    move-object/from16 v1, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x27ba1f6d

    move-object/from16 v2, p3

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    iget-object v0, v11, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p4, v2

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v2, v4

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x100

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v2, v4

    and-int/lit16 v4, v2, 0x93

    const/16 v6, 0x92

    const/4 v10, 0x0

    if-eq v4, v6, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    move v4, v10

    :goto_3
    and-int/lit8 v6, v2, 0x1

    invoke-virtual {v11, v6, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-static {v4, v11}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v12, v2, 0xe

    if-eq v12, v3, :cond_4

    move v13, v10

    goto :goto_4

    :cond_4
    const/4 v13, 0x1

    :goto_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v9, 0x0

    if-nez v13, :cond_5

    if-ne v14, v15, :cond_6

    :cond_5
    new-instance v14, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesComposableKt$PerfumeSamplesComposable$1$1;

    invoke-direct {v14, v1, v9}, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesComposableKt$PerfumeSamplesComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v6, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eq v12, v3, :cond_7

    move v13, v10

    goto :goto_5

    :cond_7
    const/4 v13, 0x1

    :goto_5
    and-int/lit16 v2, v2, 0x380

    if-ne v2, v5, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    move v2, v10

    :goto_6
    or-int/2addr v2, v13

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_9

    if-ne v5, v15, :cond_a

    :cond_9
    new-instance v5, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesComposableKt$PerfumeSamplesComposable$2$1;

    invoke-direct {v5, v1, v8, v9}, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesComposableKt$PerfumeSamplesComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v6, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v5, "PerfumeSamplesComposable"

    invoke-direct {v2, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v2, v6}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    move-object/from16 v24, v6

    sget-object v6, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v2, v13, v14, v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    xor-int/lit8 v13, v7, 0x1

    new-instance v14, Laj0;

    const/16 v9, 0x13

    invoke-direct {v14, v9}, Laj0;-><init>(I)V

    invoke-static {v2, v13, v14, v11, v10}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    move-object/from16 v25, v4

    iget-wide v3, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v11, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_12

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_b

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_7
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v13, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v4, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v18, v9

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v2, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v2, Lkn0;

    move-object/from16 v26, v0

    const/4 v0, 0x0

    invoke-direct {v2, v8, v0}, Lkn0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v0, 0x7e9c6989

    invoke-static {v0, v2, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v19

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/components/samples/a;

    move-object/from16 v20, v9

    move-object/from16 v9, v25

    invoke-direct {v2, v1, v9}, Lcom/vuitton/android/presentation/screen/cart/components/samples/a;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v21, v0

    const v0, 0x53550d1e

    invoke-static {v0, v2, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const v22, 0x30000030

    const/16 v23, 0xfd

    const/4 v9, 0x0

    move-object v2, v10

    move-object/from16 v10, v21

    move-object/from16 v21, v11

    const/4 v11, 0x0

    move/from16 v27, v12

    const/4 v12, 0x0

    move-object/from16 v28, v13

    const/4 v13, 0x0

    move-object/from16 v29, v14

    const/4 v14, 0x0

    move-object/from16 v30, v15

    const/16 v31, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v32, v18

    const/16 v33, 0x0

    const-wide/16 v17, 0x0

    move-object v7, v2

    move-object/from16 v8, v28

    move-object/from16 v1, v29

    move-object/from16 v34, v30

    move/from16 v2, v33

    move-object/from16 v28, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v32

    invoke-static/range {v9 .. v23}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v11, v21

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->i:Landroidx/compose/ui/BiasAlignment;

    sget-object v12, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v12, v9, v10}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-static {v9, v12, v13, v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    iget-wide v12, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v11, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    if-eqz v26, :cond_11

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_c

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_8
    invoke-static {v11, v0, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v12, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v11, v4, v11, v3}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v0, v28

    invoke-static {v11, v9, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v0

    iget-object v13, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    const v0, 0x7f140fc0

    invoke-static {v11, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v16

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v5, v0}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v0, v4, v1, v7, v3}, Landroidx/compose/foundation/layout/PaddingKt;->l(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v1, "cartSamples_apply_button"

    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    move/from16 v0, v27

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    move v9, v2

    goto :goto_9

    :cond_d
    const/4 v9, 0x1

    :goto_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v9, :cond_f

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_e

    goto :goto_a

    :cond_e
    move/from16 v17, v2

    move-object v8, v5

    move-object v10, v6

    move-object/from16 v7, v24

    const/4 v9, 0x1

    goto :goto_b

    :cond_f
    :goto_a
    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesComposableKt$PerfumeSamplesComposable$4$3$1$1;

    move-object v1, v5

    const-string v5, "chooseSamples()V"

    move-object v3, v6

    const/4 v6, 0x0

    move-object v4, v1

    const/4 v1, 0x0

    move-object v7, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    move-object v8, v4

    const-string v4, "chooseSamples"

    const/4 v9, 0x1

    move/from16 v17, v2

    move-object v10, v7

    move-object/from16 v7, v24

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_b
    check-cast v0, Lkotlin/reflect/KFunction;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    move-object v3, v10

    const/16 v10, 0x1f8

    move v1, v9

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v35, v17

    move-object/from16 v17, v0

    move/from16 v0, v35

    invoke-static/range {v9 .. v20}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->d:Z

    if-eqz v2, :cond_10

    const v2, 0x1e3cd80e

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v7}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->d:F

    invoke-static {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v4

    invoke-static {v2, v4, v5, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/4 v14, 0x0

    const/4 v15, 0x6

    move-object/from16 v21, v11

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v13, v21

    invoke-static/range {v9 .. v15}, Lcom/vuitton/android/presentation/compose/components/ProgressViewKt;->a(Landroidx/compose/ui/Modifier;JZLandroidx/compose/runtime/Composer;II)V

    move-object v11, v13

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :cond_10
    const v2, 0x1e421bb5

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_c
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_d

    :cond_11
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v31

    :cond_12
    const/16 v31, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v31

    :cond_13
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_d
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_14

    new-instance v0, Lrg;

    const/16 v5, 0xb

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lrg;-><init>(Ljava/lang/Object;ZLkotlin/Function;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method
