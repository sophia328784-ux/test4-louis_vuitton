.class public abstract Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u00a8\u0006\u0007\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0006\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/unit/Dp;",
        "endPadding",
        "",
        "shouldIncreaseSliderSize",
        "",
        "scale",
        "visible",
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
.field public static final a:Landroidx/compose/animation/ExitTransition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/16 v1, 0x12c

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v0, v3, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->k(Landroidx/compose/animation/core/TweenSpec;Landroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    const/16 v1, 0x64

    const/16 v2, 0xc8

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->a:Landroidx/compose/animation/ExitTransition;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;ZZZLjava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 36

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p9

    const-string v15, "ActiveFiltersSlider"

    if-eqz v0, :cond_0

    invoke-static {v0, v15}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x2a46a8e5

    move-object/from16 v3, p10

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v1

    iget-object v3, v1, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int v4, p11, v4

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v4, v6

    move/from16 v6, p2

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x100

    goto :goto_2

    :cond_3
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v4, v8

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x800

    goto :goto_3

    :cond_4
    const/16 v8, 0x400

    :goto_3
    or-int/2addr v4, v8

    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x4000

    goto :goto_4

    :cond_5
    const/16 v8, 0x2000

    :goto_4
    or-int/2addr v4, v8

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/high16 v8, 0x20000

    goto :goto_5

    :cond_6
    const/high16 v8, 0x10000

    :goto_5
    or-int/2addr v4, v8

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/high16 v8, 0x100000

    goto :goto_6

    :cond_7
    const/high16 v8, 0x80000

    :goto_6
    or-int/2addr v4, v8

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    move/from16 p10, v8

    if-eqz p10, :cond_8

    const/high16 v16, 0x800000

    goto :goto_7

    :cond_8
    const/high16 v16, 0x400000

    :goto_7
    or-int v4, v4, v16

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/high16 v16, 0x20000000

    goto :goto_8

    :cond_9
    const/high16 v16, 0x10000000

    :goto_8
    or-int v4, v4, v16

    const v16, 0x12492493

    and-int v8, v4, v16

    const v7, 0x12492492

    if-eq v8, v7, :cond_a

    const/4 v7, 0x1

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_9
    and-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_22

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-static {v1}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v8

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->a:F

    move-object/from16 v19, v0

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->v:F

    move/from16 v20, v0

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    sget-object v21, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    move/from16 v21, v0

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    sub-float v0, v21, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v23, v20, v21

    sub-float v0, v0, v23

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v14, :cond_b

    new-instance v2, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v2, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v2, Landroidx/compose/runtime/MutableState;

    move-object/from16 v20, v2

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v14, :cond_c

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v21

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v22

    add-int v22, v22, v21

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v21

    move-object/from16 v24, v2

    add-int v2, v21, v22

    move-object/from16 v21, v3

    const/4 v3, 0x1

    if-gt v2, v3, :cond_d

    move v2, v3

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    :goto_a
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    and-int/lit16 v3, v4, 0x380

    move/from16 v22, v2

    const/16 v2, 0x100

    if-ne v3, v2, :cond_e

    const/4 v2, 0x1

    goto :goto_b

    :cond_e
    const/4 v2, 0x0

    :goto_b
    and-int/lit8 v3, v4, 0x70

    move/from16 v17, v2

    const/16 v2, 0x20

    if-ne v3, v2, :cond_f

    const/4 v2, 0x1

    goto :goto_c

    :cond_f
    const/4 v2, 0x0

    :goto_c
    or-int v2, v17, v2

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_10

    if-ne v3, v14, :cond_11

    :cond_10
    move v2, v5

    move v5, v0

    goto :goto_d

    :cond_11
    move v6, v0

    move-object v11, v1

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v28, v7

    move-object v4, v8

    move-object/from16 v16, v14

    move-object/from16 v14, v19

    move-object/from16 v2, v20

    move/from16 v29, v22

    move-object/from16 v19, v24

    const/4 v10, 0x0

    goto :goto_e

    :goto_d
    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;

    move v3, v4

    move-object v4, v8

    const/4 v8, 0x0

    move-object v11, v1

    move/from16 v18, v2

    move/from16 v17, v3

    move v1, v6

    move-object/from16 v28, v7

    move-object/from16 v16, v14

    move-object/from16 v14, v19

    move-object/from16 v6, v20

    move/from16 v29, v22

    move-object/from16 v7, v24

    const/4 v10, 0x0

    move/from16 v3, p1

    move-object/from16 v2, p8

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;-><init>(ZLkotlin/jvm/functions/Function0;ZLandroidx/compose/foundation/ScrollState;FLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v2, v6

    move-object/from16 v19, v7

    move v6, v5

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_e
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v12, v3, v11}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v30

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    add-float v31, v0, v23

    const/16 v34, 0x0

    const/16 v35, 0xe

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    new-instance v3, Lr1;

    const/4 v5, 0x1

    invoke-direct {v3, v5, v2}, Lr1;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-static {v0, v1, v3, v11, v10}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v1, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    iget-wide v2, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v11, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v21, :cond_21

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v5, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_12

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_f

    :cond_12
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_f
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v1, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v3, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v15}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    sget-object v12, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v12, v0, v5}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v12, 0xc

    invoke-static {v0, v4, v9, v12}, Landroidx/compose/foundation/ScrollKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    add-float v4, v4, v18

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v0, v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->j(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v22

    const/16 v26, 0x0

    const/16 v27, 0xe

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v27}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v5, p4

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    move/from16 p10, v12

    move-object/from16 v12, p5

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    or-int v4, v4, v20

    move-object/from16 v10, p6

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    or-int v4, v4, v22

    move-object/from16 v22, v0

    move/from16 v0, v29

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v23

    or-int v4, v4, v23

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v4, :cond_14

    move-object/from16 v4, v16

    if-ne v0, v4, :cond_13

    goto :goto_10

    :cond_13
    move-object v12, v1

    move-object v10, v2

    move/from16 v16, v6

    move-object/from16 v9, v22

    move-object v6, v3

    move-object/from16 v22, v14

    move-object v14, v4

    goto :goto_11

    :cond_14
    move-object/from16 v4, v16

    :goto_10
    new-instance v0, Ls0;

    const/4 v5, 0x1

    move/from16 v16, v6

    move-object/from16 v9, v22

    move-object v6, v3

    move-object v3, v10

    move-object/from16 v22, v14

    move-object v10, v2

    move-object v14, v4

    move-object v2, v12

    move/from16 v4, v29

    move-object v12, v1

    move-object/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Ls0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_11
    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-static {v9, v1, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->e:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v3, 0x6

    invoke-static {v1, v2, v11, v3}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v1

    iget-wide v2, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v11, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v21, :cond_20

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v4, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v4, :cond_15

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_15
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_12
    invoke-static {v11, v1, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v3, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v11, v10, v11, v12}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v11, v0, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$1;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$1;

    const/high16 v0, 0x1c00000

    and-int v10, v17, v0

    const/high16 v12, 0x800000

    if-ne v10, v12, :cond_16

    const/4 v5, 0x1

    goto :goto_13

    :cond_16
    const/4 v5, 0x0

    :goto_13
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_18

    if-ne v0, v14, :cond_17

    goto :goto_14

    :cond_17
    move-object/from16 v13, p7

    const/4 v1, 0x0

    goto :goto_15

    :cond_18
    :goto_14
    new-instance v0, Ll3;

    move-object/from16 v13, p7

    const/4 v1, 0x0

    invoke-direct {v0, v1, v13}, Ll3;-><init>(ILkotlin/jvm/functions/Function2;)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_15
    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v0, v17, 0x12

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v3, v17, 0x6

    and-int/lit8 v20, v3, 0x70

    or-int v8, v0, v20

    const/16 v9, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p6

    move-object v7, v11

    move/from16 v5, v18

    move/from16 v11, v29

    move/from16 v18, v1

    move/from16 v1, p3

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->b(Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$3;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$3;

    sget-object v4, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$4;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$4;

    if-ne v10, v12, :cond_19

    const/4 v0, 0x1

    goto :goto_16

    :cond_19
    move/from16 v0, v18

    :goto_16
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1a

    if-ne v1, v14, :cond_1b

    :cond_1a
    new-instance v1, Ll3;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v13}, Ll3;-><init>(ILkotlin/jvm/functions/Function2;)V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v0, v17, 0xf

    and-int/lit8 v0, v0, 0xe

    or-int v8, v0, v20

    const/16 v9, 0x8

    const/4 v3, 0x0

    move/from16 v1, p3

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->b(Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$6;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$6;

    sget-object v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$7;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$7;

    sget-object v4, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$8;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$8;

    if-ne v10, v12, :cond_1c

    const/4 v0, 0x1

    goto :goto_17

    :cond_1c
    move/from16 v0, v18

    :goto_17
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1d

    if-ne v1, v14, :cond_1e

    :cond_1d
    new-instance v1, Ll3;

    const/4 v0, 0x2

    invoke-direct {v1, v0, v13}, Ll3;-><init>(ILkotlin/jvm/functions/Function2;)V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v0, v17, 0xc

    and-int/lit8 v0, v0, 0xe

    or-int v8, v0, v20

    const/4 v9, 0x0

    move/from16 v1, p3

    move-object/from16 v0, p4

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->b(Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    xor-int/lit8 v3, v11, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    new-instance v1, Lm3;

    move-object/from16 v14, p9

    move-object/from16 v2, v28

    invoke-direct {v1, v11, v5, v2, v14}, Lm3;-><init>(ZFLandroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    const v2, 0x767bd763

    invoke-static {v2, v1, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    const v10, 0x186c06

    const/16 v11, 0x12

    sget-object v2, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/4 v4, 0x0

    sget-object v6, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->a:Landroidx/compose/animation/ExitTransition;

    move-object v9, v7

    const/4 v7, 0x0

    move-object v5, v0

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static/range {v2 .. v11}, Landroidx/compose/animation/AnimatedVisibilityKt;->d(Landroidx/compose/foundation/layout/RowScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v7, v9

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1f

    const v2, -0x8f314d1

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v15}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v7, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_18
    const/4 v3, 0x1

    goto :goto_19

    :cond_1f
    const v0, -0x8f15259

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_18

    :goto_19
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :cond_20
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v2, 0x0

    throw v2

    :cond_21
    const/4 v2, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v2

    :cond_22
    move-object/from16 v22, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_23

    new-instance v0, Ln3;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v11, p11

    move-object v8, v13

    move-object v10, v14

    move-object/from16 v1, v22

    invoke-direct/range {v0 .. v11}, Ln3;-><init>(Landroidx/compose/ui/Modifier;ZZZLjava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_23
    return-void
.end method

.method public static final b(Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v0, p8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x193a76df

    move-object/from16 v4, p7

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    and-int/lit8 v2, v0, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v0

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    and-int/lit8 v4, v0, 0x30

    const/16 v12, 0x20

    move/from16 v14, p1

    if-nez v4, :cond_3

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v12

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    :cond_3
    and-int/lit16 v4, v0, 0x180

    if-nez v4, :cond_5

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v2, v4

    :cond_5
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_7

    or-int/lit16 v2, v2, 0xc00

    :cond_6
    move-object/from16 v5, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v5, v0, 0xc00

    if-nez v5, :cond_6

    move-object/from16 v5, p3

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x800

    goto :goto_4

    :cond_8
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v2, v6

    :goto_5
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_a

    or-int/lit16 v2, v2, 0x6000

    :cond_9
    move-object/from16 v7, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v7, v0, 0x6000

    if-nez v7, :cond_9

    move-object/from16 v7, p4

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/16 v8, 0x4000

    goto :goto_6

    :cond_b
    const/16 v8, 0x2000

    :goto_6
    or-int/2addr v2, v8

    :goto_7
    const/high16 v8, 0x30000

    and-int/2addr v8, v0

    if-nez v8, :cond_d

    move/from16 v8, p5

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v9

    if-eqz v9, :cond_c

    const/high16 v9, 0x20000

    goto :goto_8

    :cond_c
    const/high16 v9, 0x10000

    :goto_8
    or-int/2addr v2, v9

    goto :goto_9

    :cond_d
    move/from16 v8, p5

    :goto_9
    const/high16 v9, 0x180000

    and-int/2addr v9, v0

    const/high16 v13, 0x100000

    if-nez v9, :cond_f

    move-object/from16 v9, p6

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    move v15, v13

    goto :goto_a

    :cond_e
    const/high16 v15, 0x80000

    :goto_a
    or-int/2addr v2, v15

    :goto_b
    move/from16 v20, v2

    goto :goto_c

    :cond_f
    move-object/from16 v9, p6

    goto :goto_b

    :goto_c
    const v2, 0x92493

    and-int v2, v20, v2

    const v15, 0x92492

    const/16 v21, 0x1

    if-eq v2, v15, :cond_10

    move/from16 v2, v21

    goto :goto_d

    :cond_10
    const/4 v2, 0x0

    :goto_d
    and-int/lit8 v15, v20, 0x1

    invoke-virtual {v10, v15, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v2, 0xc

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v4, :cond_12

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v15, :cond_11

    new-instance v4, Lp;

    invoke-direct {v4, v2}, Lp;-><init>(I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v5, v4

    :cond_12
    if-eqz v6, :cond_14

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v15, :cond_13

    new-instance v4, Lp;

    invoke-direct {v4, v2}, Lp;-><init>(I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    move-object v2, v4

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object/from16 v18, v2

    goto :goto_e

    :cond_14
    move-object/from16 v18, v7

    :goto_e
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_15

    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v2, v10}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const v6, 0x792987f4

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroidx/compose/runtime/GapComposer;->A(ILjava/lang/Object;)V

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v15, :cond_16

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    move-object/from16 v16, v6

    check-cast v16, Landroidx/compose/runtime/MutableState;

    and-int/lit8 v6, v20, 0x70

    if-ne v6, v12, :cond_17

    move/from16 v6, v21

    goto :goto_10

    :cond_17
    const/4 v6, 0x0

    :goto_10
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v6, v11

    const/high16 v11, 0x380000

    and-int v11, v20, v11

    if-ne v11, v13, :cond_18

    move/from16 v11, v21

    goto :goto_11

    :cond_18
    const/4 v11, 0x0

    :goto_11
    or-int/2addr v6, v11

    const v11, 0xe000

    and-int v11, v20, v11

    const/16 v12, 0x4000

    if-ne v11, v12, :cond_19

    move/from16 v11, v21

    goto :goto_12

    :cond_19
    const/4 v11, 0x0

    :goto_12
    or-int/2addr v6, v11

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v6, v11

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v6, :cond_1a

    if-ne v11, v15, :cond_1b

    :cond_1a
    move v6, v13

    goto :goto_13

    :cond_1b
    move-object/from16 v19, v4

    move/from16 v23, v13

    move-object/from16 v24, v15

    move-object/from16 v9, v16

    move-object v15, v2

    goto :goto_14

    :goto_13
    new-instance v13, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/a;

    move-object/from16 v19, v4

    move/from16 v23, v6

    move-object/from16 v17, v9

    move-object/from16 v24, v15

    move-object v15, v2

    invoke-direct/range {v13 .. v19}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/a;-><init>(ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    move-object/from16 v9, v16

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v11, v13

    :goto_14
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x0

    invoke-static {v6, v2, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v14

    new-instance v2, Lo3;

    move v6, v8

    move-object v8, v11

    move-object/from16 v4, v19

    invoke-direct/range {v2 .. v9}, Lo3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;FLandroid/content/Context;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    move-object v3, v2

    move-object v2, v5

    move-object/from16 v16, v7

    const v4, 0x3b77add9

    invoke-static {v4, v3, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    move-object v9, v10

    const v10, 0x30d80

    const/16 v11, 0x12

    const/4 v4, 0x0

    sget-object v6, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->a:Landroidx/compose/animation/ExitTransition;

    const/4 v7, 0x0

    move v3, v13

    move-object v5, v14

    const/4 v13, 0x0

    invoke-static/range {v3 .. v11}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v14, p1

    move-object/from16 v3, p2

    move/from16 v8, p5

    move-object v5, v2

    move-object v10, v9

    move-object v2, v15

    move-object/from16 v7, v16

    move/from16 v13, v23

    move-object/from16 v15, v24

    const/16 v12, 0x20

    move-object/from16 v9, p6

    goto/16 :goto_f

    :cond_1c
    move-object v2, v5

    move-object v9, v10

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object v4, v2

    move-object/from16 v5, v18

    goto :goto_15

    :cond_1d
    move-object v9, v10

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v4, v5

    move-object v5, v7

    :goto_15
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_1e

    new-instance v0, Li3;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Li3;-><init>(Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FLkotlin/jvm/functions/Function1;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void
.end method
