.class public abstract Lcom/vuitton/android/presentation/compose/components/LVSlideShowKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/compose/components/LVSlideShowKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u00a8\u0006\u0004\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "xPosPreviousItem",
        "xPosCurrentItem",
        "xPosNextItem",
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
.method public static final a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 19

    move-object/from16 v0, p1

    move/from16 v8, p8

    const-string v1, "LVSlideShow-ROuykTE"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x2f947ae

    move-object/from16 v3, p7

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, v8, 0x6

    move-object/from16 v12, p0

    if-nez v3, :cond_2

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v8

    goto :goto_1

    :cond_2
    move v3, v8

    :goto_1
    and-int/lit8 v4, p9, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v8, 0x30

    if-nez v5, :cond_5

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_5
    :goto_3
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move/from16 v6, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v6, v8, 0x180

    if-nez v6, :cond_6

    move/from16 v6, p2

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x100

    goto :goto_4

    :cond_8
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v3, v7

    :goto_5
    and-int/lit8 v7, p9, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v9, v8, 0xc00

    if-nez v9, :cond_c

    if-nez p3, :cond_a

    const/4 v9, -0x1

    goto :goto_6

    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    :goto_6
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, 0x800

    goto :goto_7

    :cond_b
    const/16 v9, 0x400

    :goto_7
    or-int/2addr v3, v9

    :cond_c
    :goto_8
    or-int/lit16 v9, v3, 0x6000

    and-int/lit8 v10, p9, 0x20

    if-eqz v10, :cond_e

    const v9, 0x36000

    or-int/2addr v9, v3

    :cond_d
    move/from16 v3, p4

    goto :goto_a

    :cond_e
    const/high16 v3, 0x30000

    and-int/2addr v3, v8

    if-nez v3, :cond_d

    move/from16 v3, p4

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v11

    if-eqz v11, :cond_f

    const/high16 v11, 0x20000

    goto :goto_9

    :cond_f
    const/high16 v11, 0x10000

    :goto_9
    or-int/2addr v9, v11

    :goto_a
    and-int/lit8 v11, p9, 0x40

    const/high16 v13, 0x180000

    if-eqz v11, :cond_11

    or-int/2addr v9, v13

    :cond_10
    move/from16 v13, p5

    goto :goto_c

    :cond_11
    and-int/2addr v13, v8

    if-nez v13, :cond_10

    move/from16 v13, p5

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_12

    const/high16 v14, 0x100000

    goto :goto_b

    :cond_12
    const/high16 v14, 0x80000

    :goto_b
    or-int/2addr v9, v14

    :goto_c
    const/high16 v14, 0xc00000

    and-int/2addr v14, v8

    if-nez v14, :cond_14

    move-object/from16 v14, p6

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    const/high16 v15, 0x800000

    goto :goto_d

    :cond_13
    const/high16 v15, 0x400000

    :goto_d
    or-int/2addr v9, v15

    goto :goto_e

    :cond_14
    move-object/from16 v14, p6

    :goto_e
    const v15, 0x492493

    and-int/2addr v15, v9

    move-object/from16 v16, v0

    const v0, 0x492492

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-eq v15, v0, :cond_15

    move/from16 v0, v18

    goto :goto_f

    :cond_15
    move/from16 v0, v17

    :goto_f
    and-int/lit8 v9, v9, 0x1

    invoke-virtual {v2, v9, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz v4, :cond_16

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :cond_16
    move-object/from16 v0, v16

    :goto_10
    move v1, v11

    if-eqz v5, :cond_17

    move/from16 v11, v18

    goto :goto_11

    :cond_17
    move v11, v6

    :goto_11
    if-eqz v7, :cond_18

    sget-object v4, Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;->NoParallax:Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;

    move-object v13, v4

    goto :goto_12

    :cond_18
    move-object/from16 v13, p3

    :goto_12
    if-eqz v10, :cond_19

    move/from16 v14, v18

    goto :goto_13

    :cond_19
    move v14, v3

    :goto_13
    if-eqz v1, :cond_1a

    move/from16 v15, v17

    goto :goto_14

    :cond_1a
    move/from16 v15, p5

    :goto_14
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v9, Ls70;

    move-object/from16 v16, p6

    move-object v10, v0

    invoke-direct/range {v9 .. v16}, Ls70;-><init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v0, -0x22b8e112

    invoke-static {v0, v9, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v3, 0x30

    invoke-static {v1, v0, v2, v3}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object v0, v10

    move v3, v11

    move-object v4, v13

    move v5, v14

    move v6, v15

    goto :goto_15

    :cond_1b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v4, p3

    move v5, v3

    move v3, v6

    move-object/from16 v0, v16

    move/from16 v6, p5

    :goto_15
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_1c

    move-object v2, v0

    new-instance v0, Lt70;

    move-object/from16 v1, p0

    move-object/from16 v7, p6

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lt70;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method

.method public static final b(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "LVSlideShowContent-vucX2i8"

    if-eqz v1, :cond_0

    invoke-static {v1, v6}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    :cond_0
    const v7, -0x165cde9d

    move-object/from16 v8, p6

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int v7, p7, v7

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x20

    goto :goto_1

    :cond_2
    const/16 v10, 0x10

    :goto_1
    or-int/2addr v7, v10

    if-nez v2, :cond_3

    const/4 v10, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    :goto_2
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x100

    goto :goto_3

    :cond_4
    const/16 v10, 0x80

    :goto_3
    or-int/2addr v7, v10

    const/4 v10, 0x0

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0x800

    goto :goto_4

    :cond_5
    const/16 v11, 0x400

    :goto_4
    or-int/2addr v7, v11

    move/from16 v11, p3

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x4000

    goto :goto_5

    :cond_6
    const/16 v12, 0x2000

    :goto_5
    or-int/2addr v7, v12

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_7

    const/high16 v12, 0x20000

    goto :goto_6

    :cond_7
    const/high16 v12, 0x10000

    :goto_6
    or-int/2addr v7, v12

    move-object/from16 v13, p5

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/high16 v12, 0x100000

    goto :goto_7

    :cond_8
    const/high16 v12, 0x80000

    :goto_7
    or-int v23, v7, v12

    const v7, 0x92493

    and-int v7, v23, v7

    const v12, 0x92492

    const/4 v15, 0x0

    if-eq v7, v12, :cond_9

    const/4 v7, 0x1

    goto :goto_8

    :cond_9
    move v7, v15

    :goto_8
    and-int/lit8 v12, v23, 0x1

    invoke-virtual {v14, v12, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_22

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    sget-object v7, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v7, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    move-object/from16 p1, v10

    iget-wide v10, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v14, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v9, v14, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v9, :cond_21

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_a

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_a
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_9
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v7, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v11, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v3, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v12, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;->NoParallax:Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;

    const v7, 0xe000

    const/4 v9, 0x3

    const/high16 v10, 0xe000000

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v3, :cond_e

    const v3, 0x1bb958e8

    invoke-static {v14, v3, v6}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    and-int/lit8 v4, v23, 0xe

    if-ne v4, v8, :cond_b

    const/4 v5, 0x1

    goto :goto_a

    :cond_b
    move v5, v15

    :goto_a
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_c

    if-ne v8, v11, :cond_d

    :cond_c
    new-instance v8, Lp70;

    invoke-direct {v8, v0, v15}, Lp70;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v15, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    or-int/lit16 v4, v4, 0x6000

    shl-int/lit8 v5, v23, 0xc

    and-int/2addr v5, v10

    or-int/2addr v4, v5

    shr-int/lit8 v5, v23, 0x6

    and-int v16, v5, v7

    const/16 v17, 0x3eec

    const/4 v2, 0x0

    move-object v5, v1

    move-object v1, v3

    const/4 v3, 0x0

    move v7, v15

    move v15, v4

    const/4 v4, 0x1

    move-object v8, v5

    const/4 v5, 0x0

    move-object v10, v6

    const/4 v6, 0x0

    move v11, v7

    const/4 v7, 0x0

    move v12, v9

    const/4 v9, 0x0

    move-object/from16 v18, v10

    const/4 v10, 0x0

    move/from16 v19, v11

    const/4 v11, 0x0

    move/from16 v20, v12

    const/4 v12, 0x0

    move-object/from16 v25, v8

    move-object/from16 v27, v18

    move/from16 v8, p3

    invoke-static/range {v0 .. v17}, Landroidx/compose/foundation/pager/PagerKt;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v11, v1

    const/16 v26, 0x3

    goto/16 :goto_12

    :cond_e
    move-object/from16 v25, v1

    move-object/from16 v27, v6

    move v1, v15

    const v2, 0x1bc298c6

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v11, :cond_15

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->v()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lkotlin/reflect/KCallable;

    invoke-interface {v6}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "lazyListState"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_b

    :cond_10
    move-object/from16 v3, p1

    :goto_b
    instance-of v2, v3, Lkotlin/reflect/KProperty1;

    if-eqz v2, :cond_11

    check-cast v3, Lkotlin/reflect/KProperty1;

    goto :goto_c

    :cond_11
    move-object/from16 v3, p1

    :goto_c
    if-eqz v3, :cond_12

    invoke-static {v3}, Lkotlin/reflect/jvm/KCallablesJvm;->b(Lkotlin/reflect/KCallable;)V

    :cond_12
    if-eqz v3, :cond_13

    invoke-interface {v3, v0}, Lkotlin/reflect/KProperty1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_d

    :cond_13
    move-object/from16 v2, p1

    :goto_d
    if-nez v2, :cond_14

    move-object/from16 v2, p1

    :cond_14
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListState;

    if-nez v2, :cond_16

    const v2, 0x1bc514e1

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v2, 0x3

    invoke-static {v4, v2}, Landroidx/compose/foundation/layout/PaddingKt;->c(FI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v3

    and-int/lit8 v4, v23, 0xe

    or-int/lit16 v4, v4, 0x6000

    shl-int/lit8 v5, v23, 0xc

    and-int/2addr v5, v10

    or-int v15, v4, v5

    shr-int/lit8 v4, v23, 0x6

    and-int v16, v4, v7

    const/16 v17, 0x3ee2

    move/from16 v24, v1

    const/4 v1, 0x0

    move/from16 v26, v2

    move-object v2, v3

    sget-object v3, Landroidx/compose/foundation/pager/PageSize$Fill;->a:Landroidx/compose/foundation/pager/PageSize$Fill;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v8, p3

    move-object/from16 v13, p5

    invoke-static/range {v0 .. v17}, Landroidx/compose/foundation/pager/PagerKt;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v11, v0

    const/16 v26, 0x3

    goto/16 :goto_11

    :cond_16
    move v0, v1

    const v1, 0x1bcf7b3f

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_17

    new-instance v1, La1;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, La1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;I)V

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v17, v1

    check-cast v17, Landroidx/compose/runtime/State;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_18

    invoke-static {v5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object/from16 v20, v1

    check-cast v20, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_19

    invoke-static {v5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object/from16 v18, v1

    check-cast v18, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_1a

    invoke-static {v5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object/from16 v19, v1

    check-cast v19, Landroidx/compose/runtime/MutableState;

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v1, v2, :cond_1b

    const/4 v15, 0x1

    goto :goto_e

    :cond_1b
    move v15, v0

    :goto_e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_1f

    sget-object v1, Lcom/vuitton/android/presentation/compose/components/LVSlideShowKt$WhenMappings;->a:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1d

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1c

    goto :goto_f

    :cond_1c
    const v4, 0x3f19999a    # 0.6f

    goto :goto_f

    :cond_1d
    const/4 v3, 0x3

    const v4, 0x3ecccccd    # 0.4f

    goto :goto_f

    :cond_1e
    const/4 v3, 0x3

    const v4, 0x3e4ccccd    # 0.2f

    :goto_f
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_10

    :cond_1f
    const/4 v2, 0x1

    const/4 v3, 0x3

    :goto_10
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v21

    move/from16 v16, v15

    new-instance v15, Lb30;

    move-object/from16 v22, p5

    invoke-direct/range {v15 .. v22}, Lb30;-><init>(ZLandroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v1, 0x340e48b4

    invoke-static {v1, v15, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    and-int/lit8 v1, v23, 0xe

    or-int/lit16 v1, v1, 0x6000

    and-int/lit8 v4, v23, 0x70

    or-int/2addr v1, v4

    shl-int/lit8 v4, v23, 0xc

    and-int/2addr v4, v10

    or-int v15, v1, v4

    const/16 v16, 0x6000

    const/16 v17, 0x3eec

    move/from16 v28, v2

    const/4 v2, 0x0

    move/from16 v26, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move/from16 v8, p3

    move-object/from16 v1, v25

    invoke-static/range {v0 .. v17}, Landroidx/compose/foundation/pager/PagerKt;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    const/4 v11, 0x0

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result v0

    const/4 v9, 0x1

    if-le v0, v9, :cond_20

    if-eqz p4, :cond_20

    const v0, 0x1c10b87f

    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v10, v27

    invoke-static {v14, v0, v10, v1}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v2, v0, v1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    shl-int/lit8 v1, v23, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/lit16 v7, v1, 0x6c00

    const/16 v8, 0x24

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v6, v14

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/compose/components/AccessibilityPagerButtonsKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;FLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_20
    const v0, 0x1c16e8a5

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_14

    :cond_21
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p1

    :cond_22
    move-object/from16 v25, v1

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_14
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_23

    new-instance v0, Lq70;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v2, v25

    invoke-direct/range {v0 .. v7}, Lq70;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_23
    return-void
.end method
