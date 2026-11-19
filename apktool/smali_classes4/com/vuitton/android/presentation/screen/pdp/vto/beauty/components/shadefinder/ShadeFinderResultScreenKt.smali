.class public abstract Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "previousPage",
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
.method public static final a(Landroidx/compose/foundation/pager/PagerState;Ljava/util/List;FZLandroidx/compose/runtime/Composer;I)V
    .locals 24

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const v0, 0xdbb9d5e

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    move-object/from16 v5, p0

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int v0, p5, v0

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v0, v6

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x800

    goto :goto_2

    :cond_2
    const/16 v6, 0x400

    :goto_2
    or-int/2addr v0, v6

    and-int/lit16 v6, v0, 0x493

    const/16 v7, 0x492

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v6, v7, :cond_3

    move v6, v13

    goto :goto_3

    :cond_3
    move v6, v12

    :goto_3
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v11, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {}, Landroidx/compose/foundation/pager/PagerSnapDistance$Companion;->a()Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;

    move-result-object v6

    sget-object v7, Landroidx/compose/animation/core/EasingKt;->c:Landroidx/compose/animation/core/CubicBezierEasing;

    const/16 v8, 0x190

    invoke-static {v8, v12, v7, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v7

    and-int/lit8 v20, v0, 0xe

    const/16 v10, 0x14

    move-object v8, v11

    move/from16 v9, v20

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/pager/PagerDefaults;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;Landroidx/compose/animation/core/TweenSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    move-result-object v6

    const-string v5, "ShadeFinderCarousel-942rkJo"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v7}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v9, v12}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    iget-wide v14, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v11, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v7, v11, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    const/4 v12, 0x0

    if-eqz v7, :cond_6

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v7, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_4

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_4
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v9, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v14, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v7, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v7}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v8, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v8, Landroidx/compose/foundation/pager/PageSize$Fixed;

    invoke-direct {v8, v3, v12}, Landroidx/compose/foundation/pager/PageSize$Fixed;-><init>(FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v7, 0x40800000    # 4.0f

    div-float v7, v3, v7

    sget-object v9, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v7, v1}, Landroidx/compose/foundation/layout/PaddingKt;->c(FI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v7

    new-instance v1, Lzv0;

    invoke-direct {v1, v2, v3}, Lzv0;-><init>(Ljava/util/List;F)V

    const v9, 0x7f981525

    invoke-static {v9, v1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v18

    const/16 v21, 0x6000

    const/16 v22, 0x3f72

    move-object v12, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v19, v11

    const/4 v11, 0x0

    move v1, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    move/from16 v23, v17

    const/16 v17, 0x0

    move/from16 p4, v0

    move-object v0, v5

    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v22}, Landroidx/compose/foundation/pager/PagerKt;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v11, v19

    if-eqz v4, :cond_5

    const v5, 0x11e81484

    invoke-static {v11, v5, v0, v1}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v5, v0, v1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v7, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    shl-int/lit8 v0, p4, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/lit16 v12, v0, 0x6d80

    const/16 v13, 0x20

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v5 .. v13}, Lcom/vuitton/android/presentation/compose/components/AccessibilityPagerButtonsKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;FLandroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_5
    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    const v1, 0x11ef07de

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :goto_6
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_6
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v12

    :cond_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_8

    new-instance v0, Law0;

    move-object/from16 v1, p0

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Law0;-><init>(Landroidx/compose/foundation/pager/PagerState;Ljava/util/List;FZI)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method

.method public static final b(FILandroidx/compose/runtime/Composer;Ljava/lang/String;)V
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const v3, 0x637ceaa4

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v1

    and-int/lit8 v4, v1, 0x30

    if-nez v4, :cond_2

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v3, v4

    :cond_2
    and-int/lit8 v4, v3, 0x13

    const/16 v5, 0x12

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    move v4, v6

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    and-int/2addr v3, v6

    invoke-virtual {v14, v3, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v4, "ShadeFinderImage-ziNgDLE"

    invoke-direct {v3, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v6}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v4

    new-instance v3, Lcom/vuitton/android/presentation/utils/UrlFactory;

    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->f(Landroid/content/Context;)Lje;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/vuitton/android/presentation/utils/UrlFactory;-><init>(Lkotlin/jvm/functions/Function0;)V

    sget-object v5, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Transparent;->a:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Transparent;

    invoke-virtual {v3, v2, v5}, Lcom/vuitton/android/presentation/utils/UrlFactory;->b(Ljava/lang/String;Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v6

    sget-object v6, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    const/16 v15, 0x180

    const/16 v16, 0x7f8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v4 .. v16}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_3

    :cond_4
    move v3, v6

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_3
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v5, Lti0;

    invoke-direct {v5, v2, v0, v1, v3}, Lti0;-><init>(Ljava/lang/String;FII)V

    iput-object v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method

.method public static final c(ZZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const v0, 0x78c2db03

    move-object/from16 v4, p5

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p6, v0

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    move-object/from16 v4, p3

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x800

    goto :goto_3

    :cond_3
    const/16 v5, 0x400

    :goto_3
    or-int/2addr v0, v5

    move-object/from16 v12, p4

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x4000

    goto :goto_4

    :cond_4
    const/16 v5, 0x2000

    :goto_4
    or-int/2addr v0, v5

    and-int/lit16 v5, v0, 0x2493

    const/16 v7, 0x2492

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v5, v7, :cond_5

    move v5, v8

    goto :goto_5

    :cond_5
    move v5, v9

    :goto_5
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v7, "ShadeFinderResultBottomBar"

    invoke-direct {v5, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v5, v10}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v11, 0x6

    const/4 v13, 0x3

    invoke-static {v5, v6, v11, v13}, Lcom/vuitton/android/designkit/ui/theme/ShadowKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v13, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object v11, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v5, v13, v14, v11}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v13

    iget v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v5, v11, v13}, Landroidx/compose/foundation/layout/PaddingKt;->j(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v11}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v11

    sget-object v13, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v11, v13, v6, v9}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v11

    iget-wide v13, v6, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v6, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v9, v6, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    const/16 v16, 0x0

    if-eqz v9, :cond_a

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v6, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_6

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_6
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v11, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v14, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v9, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v5, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/high16 v17, 0x70000000

    sget-object v5, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    if-eqz v1, :cond_8

    const v9, -0x50ff2259

    invoke-static {v6, v9, v7}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v9

    invoke-virtual {v5, v9, v10, v8}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    const v13, 0x7f141037

    invoke-static {v6, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    if-eqz v3, :cond_7

    const v14, -0x50fab2f9

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object v14

    iget v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->y:I

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto :goto_7

    :cond_7
    const/4 v15, 0x0

    const v14, -0x50f95b11

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_7
    shl-int/lit8 v14, v0, 0xf

    and-int v14, v14, v17

    const/high16 v18, 0x30000

    or-int v14, v18, v14

    move-object/from16 v18, v5

    const/16 v5, 0x1c8

    move-object/from16 v19, v7

    move-object v7, v9

    const/4 v9, 0x0

    move/from16 v20, v8

    move-object v8, v11

    move-object v11, v13

    const/4 v13, 0x1

    move v4, v14

    const/4 v14, 0x0

    move/from16 v21, v15

    const/4 v15, 0x0

    move/from16 p5, v0

    move-object/from16 v10, v16

    move-object/from16 v2, v18

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static/range {v4 .. v15}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_8
    move/from16 p5, v0

    move-object v2, v5

    move-object v0, v7

    const/4 v1, 0x0

    const v4, -0x50f7a6a5

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_8
    if-eqz p1, :cond_9

    const v4, -0x50f71194

    invoke-static {v6, v4, v0}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v4, v5}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v0

    iget-object v8, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    const v0, 0x7f141365

    invoke-static {v6, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    shl-int/lit8 v0, p5, 0x12

    and-int v4, v0, v17

    const/16 v5, 0x1f8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v12, p3

    invoke-static/range {v4 .. v15}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_9
    const/4 v5, 0x1

    goto :goto_a

    :cond_9
    const v0, -0x50f31845

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :goto_a
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16

    :cond_b
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_b
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_c

    new-instance v0, Lqm0;

    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lqm0;-><init>(ZZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method

.method public static final d(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x2cc73a

    move-object/from16 v2, p6

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
    or-int v0, p7, v0

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x100

    goto :goto_1

    :cond_1
    const/16 v2, 0x80

    :goto_1
    or-int/2addr v0, v2

    move-object/from16 v3, p3

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x800

    goto :goto_2

    :cond_2
    const/16 v2, 0x400

    :goto_2
    or-int/2addr v0, v2

    move-object/from16 v5, p4

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x4000

    goto :goto_3

    :cond_3
    const/16 v2, 0x2000

    :goto_3
    or-int/2addr v0, v2

    move-object/from16 v14, p5

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v4, 0x20000

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_4

    :cond_4
    const/high16 v2, 0x10000

    :goto_4
    or-int/2addr v0, v2

    const v2, 0x12493

    and-int/2addr v2, v0

    const v6, 0x12492

    const/4 v7, 0x0

    const/4 v10, 0x1

    if-eq v2, v6, :cond_5

    move v2, v10

    goto :goto_5

    :cond_5
    move v2, v7

    :goto_5
    and-int/lit8 v6, v0, 0x1

    invoke-virtual {v9, v6, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/content/Context;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    if-nez v2, :cond_6

    const v0, 0x5aecf98c

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v0, v9

    goto/16 :goto_8

    :cond_6
    const v6, 0x5aecf98d

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;->b:Ljava/util/List;

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v6, :cond_7

    if-ne v11, v13, :cond_8

    :cond_7
    new-instance v11, Ldb;

    const/16 v6, 0xf

    invoke-direct {v11, v12, v6}, Ldb;-><init>(Ljava/util/List;I)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v11, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    invoke-static {v7, v11, v9, v7, v6}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v11

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v13, :cond_9

    invoke-static {v7}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v6, Landroidx/compose/runtime/MutableIntState;

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v15, v15, v17

    const/high16 v17, 0x70000

    and-int v0, v0, v17

    if-ne v0, v4, :cond_a

    goto :goto_6

    :cond_a
    move v10, v7

    :goto_6
    or-int v0, v15, v10

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_b

    if-ne v4, v13, :cond_c

    :cond_b
    new-instance v10, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;

    const/4 v15, 0x0

    move-object v13, v6

    invoke-direct/range {v10 .. v15}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Ljava/util/List;Landroidx/compose/runtime/MutableIntState;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v10

    :cond_c
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v11, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    invoke-static {v0, v12}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    if-nez v4, :cond_d

    move v1, v7

    move-object v0, v9

    goto :goto_7

    :cond_d
    new-instance v0, Lkn0;

    const/16 v6, 0x17

    invoke-direct {v0, v8, v6}, Lkn0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v6, -0x29c80f58

    invoke-static {v6, v0, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    new-instance v0, Lkj0;

    const/16 v6, 0x13

    move-object/from16 v24, v12

    move-object v12, v2

    move-object/from16 v2, v24

    invoke-direct/range {v0 .. v6}, Lkj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/Function;I)V

    move-object v3, v4

    const v1, 0x398327c7

    invoke-static {v1, v0, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    new-instance v0, Lfs0;

    const/4 v1, 0x5

    move-object/from16 v14, p1

    invoke-direct {v0, v14, v1}, Lfs0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v1, -0x6331a11a

    invoke-static {v1, v0, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    new-instance v0, Lp0;

    move v1, v7

    const/16 v7, 0x16

    move-object/from16 v6, p0

    move-object v5, v11

    move-object/from16 v4, v16

    move v11, v1

    move-object v1, v12

    invoke-direct/range {v0 .. v7}, Lp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v1, 0x6351a23d

    invoke-static {v1, v0, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v20

    const v22, 0x30000db0

    const/16 v23, 0x1f1

    move-object/from16 v21, v9

    const/4 v9, 0x0

    move v1, v11

    move-object v11, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v12, v15

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    invoke-static/range {v9 .. v23}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v0, v21

    :goto_7
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_e
    move-object v0, v9

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_f

    new-instance v0, Lzs0;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object v3, v8

    invoke-direct/range {v0 .. v7}, Lzs0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method
