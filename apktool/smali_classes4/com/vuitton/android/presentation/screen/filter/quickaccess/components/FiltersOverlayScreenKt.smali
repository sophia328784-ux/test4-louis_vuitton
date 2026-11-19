.class public abstract Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u00a8\u0006\u0003\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "isVisible",
        "isLocallySelected",
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
.method public static final a(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/Alignment$Horizontal;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v9, p8

    move/from16 v12, p12

    const-string v8, "AnimatedFiltersList"

    if-eqz v0, :cond_0

    invoke-static {v0, v8}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v15, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x2d9657d5

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    and-int/lit8 v0, v12, 0x6

    const/4 v1, 0x4

    if-nez v0, :cond_2

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v12

    goto :goto_1

    :cond_2
    move v0, v12

    :goto_1
    and-int/lit8 v6, v12, 0x30

    move/from16 v14, p1

    if-nez v6, :cond_4

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_2

    :cond_3
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v0, v6

    :cond_4
    and-int/lit16 v6, v12, 0x180

    if-nez v6, :cond_6

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x100

    goto :goto_3

    :cond_5
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v0, v6

    :cond_6
    and-int/lit16 v6, v12, 0xc00

    if-nez v6, :cond_8

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x800

    goto :goto_4

    :cond_7
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v0, v6

    :cond_8
    and-int/lit16 v6, v12, 0x6000

    if-nez v6, :cond_a

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x4000

    goto :goto_5

    :cond_9
    const/16 v6, 0x2000

    :goto_5
    or-int/2addr v0, v6

    :cond_a
    const/high16 v6, 0x30000

    and-int/2addr v6, v12

    if-nez v6, :cond_c

    move-object/from16 v6, p5

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/high16 v11, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v11, 0x10000

    :goto_6
    or-int/2addr v0, v11

    goto :goto_7

    :cond_c
    move-object/from16 v6, p5

    :goto_7
    const/high16 v11, 0x180000

    and-int/2addr v11, v12

    if-nez v11, :cond_e

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const/high16 v11, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v11, 0x80000

    :goto_8
    or-int/2addr v0, v11

    :cond_e
    const/high16 v11, 0xc00000

    and-int/2addr v11, v12

    if-nez v11, :cond_10

    move-object/from16 v11, p7

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const/high16 v13, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v13, 0x400000

    :goto_9
    or-int/2addr v0, v13

    goto :goto_a

    :cond_10
    move-object/from16 v11, p7

    :goto_a
    const/high16 v13, 0x6000000

    and-int/2addr v13, v12

    if-nez v13, :cond_12

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    if-eqz v13, :cond_11

    const/high16 v13, 0x4000000

    goto :goto_b

    :cond_11
    const/high16 v13, 0x2000000

    :goto_b
    or-int/2addr v0, v13

    :cond_12
    const/high16 v13, 0x30000000

    and-int/2addr v13, v12

    if-nez v13, :cond_14

    move-object/from16 v13, p9

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x20000000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x10000000

    :goto_c
    or-int v0, v0, v16

    goto :goto_d

    :cond_14
    move-object/from16 v13, p9

    :goto_d
    and-int/lit8 v16, p13, 0x6

    move-object/from16 v3, p10

    if-nez v16, :cond_16

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    goto :goto_e

    :cond_15
    const/4 v1, 0x2

    :goto_e
    or-int v1, p13, v1

    move/from16 v23, v1

    goto :goto_f

    :cond_16
    move/from16 v23, p13

    :goto_f
    const v1, 0x12492493

    and-int/2addr v1, v0

    const v3, 0x12492492

    if-ne v1, v3, :cond_18

    and-int/lit8 v1, v23, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_17

    goto :goto_10

    :cond_17
    const/4 v1, 0x0

    goto :goto_11

    :cond_18
    :goto_10
    const/4 v1, 0x1

    :goto_11
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {v10, v3, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v15, v1}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    move-object/from16 v16, v3

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    add-float/2addr v9, v3

    sget-object v3, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v9, v4}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v9, 0x2

    invoke-static {v1, v4, v3, v9}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    and-int/lit16 v4, v0, 0x380

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v9, v2, v10, v4}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    move-object v9, v4

    iget-wide v3, v10, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v10, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v17, v0

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v2, v10, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    move-object/from16 v18, v2

    if-eqz v18, :cond_23

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v2, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v2, :cond_19

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_19
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_12
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v9, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v4, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v1, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    const/16 v9, 0x12

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_1a

    new-instance v0, Lx20;

    invoke-direct {v0, v9}, Lx20;-><init>(I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Landroidx/compose/animation/EnterExitTransitionKt;->r(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v18

    new-instance v0, Lw0;

    move-object v2, v6

    move-object v6, v5

    move-object v5, v7

    move-object v7, v2

    move-object/from16 v2, p2

    move-object v4, v13

    move-object/from16 v3, v16

    move/from16 v24, v17

    move-object v13, v1

    move-object/from16 v1, p3

    invoke-direct/range {v0 .. v7}, Lw0;-><init>(Ljava/util/List;Landroidx/compose/ui/Alignment$Horizontal;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object v7, v5

    move-object v5, v6

    const v1, -0xd5a1287

    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v19

    and-int/lit8 v0, v24, 0x70

    const v1, 0x180c06

    or-int/2addr v0, v1

    shl-int/lit8 v1, v24, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int v21, v0, v1

    const/16 v22, 0x18

    move-object v0, v13

    sget-object v13, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    const/16 v17, 0x0

    move-object/from16 v16, v18

    const/16 v18, 0x0

    move-object/from16 v20, v10

    invoke-static/range {v13 .. v22}, Landroidx/compose/animation/AnimatedVisibilityKt;->c(Landroidx/compose/foundation/layout/ColumnScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v1, v20

    const/high16 v2, 0x70000

    if-eqz p8, :cond_1d

    const v4, 0x18e94

    invoke-static {v1, v4, v8}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v16

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v4

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const-string v6, "QAF_CloseItem_button"

    invoke-static {v4, v6}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_1b

    if-ne v8, v0, :cond_1c

    :cond_1b
    new-instance v8, Lef;

    const/4 v0, 0x5

    invoke-direct {v8, v3, v0}, Lef;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-static {v4, v0, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->A:I

    sget-object v19, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;->Visible:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    shl-int/lit8 v3, v23, 0xf

    and-int/2addr v2, v3

    or-int/lit16 v2, v2, 0xc00

    const/16 v25, 0x54

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v21, p10

    move/from16 v17, v0

    move-object/from16 v23, v1

    move/from16 v24, v2

    invoke-static/range {v16 .. v25}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickFilterButtonKt;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    const/4 v4, 0x1

    goto/16 :goto_16

    :cond_1d
    const v0, 0xa3bec

    invoke-static {v1, v0, v8}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v16

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v0

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v16

    const v0, -0x5ad63998

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v7, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f1406f1

    invoke-static {v1, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1f
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    const/16 v20, 0x0

    goto :goto_15

    :cond_21
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_22

    const/16 v20, 0x1

    :goto_15
    shr-int/lit8 v0, v24, 0x12

    and-int/lit8 v0, v0, 0x70

    or-int/lit16 v0, v0, 0xd80

    shl-int/lit8 v3, v23, 0xf

    and-int/2addr v2, v3

    or-int v23, v0, v2

    const-string v18, "QAF_MoreFiltersName_text"

    const/16 v19, 0x1

    move-object/from16 v21, p10

    move-object/from16 v22, v1

    move-object/from16 v17, v11

    invoke-static/range {v16 .. v23}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersDropdownKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_13

    :goto_16
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_17

    :cond_23
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v18, 0x0

    throw v18

    :cond_24
    move-object v1, v10

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_17
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_25

    new-instance v0, Lry;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v13, p13

    move-object v1, v15

    invoke-direct/range {v0 .. v13}, Lry;-><init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/Alignment$Horizontal;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_25
    return-void
.end method

.method public static final b(ZLjava/util/List;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v14, p5

    move-object/from16 v7, p6

    move-object/from16 v0, p7

    move-object/from16 v3, p8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, -0x3d47038c

    move-object/from16 v8, p9

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int v6, p10, v6

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x20

    goto :goto_1

    :cond_1
    const/16 v9, 0x10

    :goto_1
    or-int/2addr v6, v9

    move-object/from16 v9, p2

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x100

    goto :goto_2

    :cond_2
    const/16 v11, 0x80

    :goto_2
    or-int/2addr v6, v11

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x800

    goto :goto_3

    :cond_3
    const/16 v11, 0x400

    :goto_3
    or-int/2addr v6, v11

    if-nez v5, :cond_4

    const/4 v11, -0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    :goto_4
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0x4000

    goto :goto_5

    :cond_5
    const/16 v11, 0x2000

    :goto_5
    or-int/2addr v6, v11

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v11

    if-eqz v11, :cond_6

    const/high16 v11, 0x20000

    goto :goto_6

    :cond_6
    const/high16 v11, 0x10000

    :goto_6
    or-int/2addr v6, v11

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/high16 v11, 0x100000

    goto :goto_7

    :cond_7
    const/high16 v11, 0x80000

    :goto_7
    or-int/2addr v6, v11

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/high16 v11, 0x800000

    goto :goto_8

    :cond_8
    const/high16 v11, 0x400000

    :goto_8
    or-int/2addr v6, v11

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/high16 v11, 0x4000000

    goto :goto_9

    :cond_9
    const/high16 v11, 0x2000000

    :goto_9
    or-int/2addr v6, v11

    const v11, 0x2492493

    and-int/2addr v11, v6

    const v13, 0x2492492

    const/16 v17, 0x1

    if-eq v11, v13, :cond_a

    move/from16 v11, v17

    goto :goto_a

    :cond_a
    const/4 v11, 0x0

    :goto_a
    and-int/lit8 v13, v6, 0x1

    invoke-virtual {v10, v13, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_22

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v13, :cond_b

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v11}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v11, Landroidx/compose/runtime/MutableState;

    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    const/4 v15, 0x0

    if-ne v12, v13, :cond_c

    new-instance v12, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt$FiltersOverlayScreen$1$1;

    invoke-direct {v12, v11, v15}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt$FiltersOverlayScreen$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v8, v12}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v12, "FiltersOverlayScreen"

    invoke-direct {v8, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v15

    sget-object v15, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v8, v15}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v15

    iget-object v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v1, v15, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    if-eqz p0, :cond_d

    const v15, 0x1514f919

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v15

    iget v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->c:F

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    const v15, 0x151659b9

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v15

    iget v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->b:F

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_b
    invoke-static {v15, v1, v2}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v1

    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v8, v1, v2, v4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v21

    const/high16 v1, 0x380000

    and-int/2addr v1, v6

    const/high16 v2, 0x100000

    if-ne v1, v2, :cond_e

    move/from16 v4, v17

    goto :goto_c

    :cond_e
    const/4 v4, 0x0

    :goto_c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v4, :cond_f

    if-ne v2, v13, :cond_10

    :cond_f
    new-instance v2, Lpy;

    const/4 v4, 0x2

    invoke-direct {v2, v7, v4}, Lpy;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v25, v2

    check-cast v25, Lkotlin/jvm/functions/Function0;

    const/16 v26, 0x1b

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v21 .. v26}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    iget-wide v8, v10, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v10, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move/from16 v18, v6

    iget-object v6, v10, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v6, :cond_21

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_11

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_d

    :cond_11
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_d
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v4, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v9, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v4, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v2, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->SORT_BY:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    sget-object v6, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    if-ne v5, v2, :cond_1b

    const v2, -0x487f5627

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v2, 0x7f1406f1

    invoke-static {v10, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v8, p1

    check-cast v8, Ljava/lang/Iterable;

    instance-of v9, v8, Ljava/util/Collection;

    if-eqz v9, :cond_13

    move-object v9, v8

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_13

    :cond_12
    const/4 v9, 0x0

    goto :goto_e

    :cond_13
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;

    iget-boolean v15, v15, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;->c:Z

    if-eqz v15, :cond_14

    move/from16 v9, v17

    :goto_e
    xor-int/lit8 v9, v9, 0x1

    new-instance v15, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;

    const/high16 v20, 0xe000000

    const-string v4, ""

    move-object/from16 v21, v11

    move/from16 v11, v17

    invoke-direct {v15, v4, v2, v9, v11}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, v8}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v14, :cond_15

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->h:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v6, v2, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    goto :goto_f

    :cond_15
    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->j:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v6, v2, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :goto_f
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v14, :cond_16

    sget-object v8, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    goto :goto_10

    :cond_16
    sget-object v8, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->p:Landroidx/compose/ui/BiasAlignment$Horizontal;

    :goto_10
    sget-object v15, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt$FiltersOverlayScreen$3$1;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt$FiltersOverlayScreen$3$1;

    move/from16 v17, v11

    sget-object v11, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt$FiltersOverlayScreen$3$2;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt$FiltersOverlayScreen$3$2;

    move-object/from16 v21, v12

    sget-object v12, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt$FiltersOverlayScreen$3$3;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt$FiltersOverlayScreen$3$3;

    move-object/from16 p9, v2

    const v2, 0x7f14125a

    invoke-static {v10, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v2

    and-int v2, v18, v20

    move/from16 v23, v4

    const/high16 v4, 0x4000000

    if-ne v2, v4, :cond_17

    move/from16 v4, v17

    :goto_11
    const/high16 v2, 0x100000

    goto :goto_12

    :cond_17
    const/4 v4, 0x0

    goto :goto_11

    :goto_12
    if-ne v1, v2, :cond_18

    move/from16 v1, v17

    goto :goto_13

    :cond_18
    const/4 v1, 0x0

    :goto_13
    or-int/2addr v1, v4

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_19

    if-ne v2, v13, :cond_1a

    :cond_19
    new-instance v2, Lem;

    const/4 v1, 0x5

    invoke-direct {v2, v3, v7, v1}, Lem;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v2, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v1, v18, 0x9

    and-int v1, v1, v20

    shr-int/lit8 v4, v18, 0x12

    and-int/lit8 v19, v4, 0xe

    move/from16 v18, v1

    move-object v1, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v10

    move-object v10, v15

    move-object/from16 v13, v22

    move/from16 v7, v23

    const/4 v4, 0x0

    move-object/from16 v6, p9

    move-object v15, v2

    move-object/from16 v2, v21

    invoke-static/range {v6 .. v19}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt;->a(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/Alignment$Horizontal;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v10, v17

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_15

    :cond_1b
    move-object v1, v6

    move-object/from16 v21, v11

    move-object v2, v12

    const/4 v4, 0x0

    const/high16 v20, 0xe000000

    sget-object v6, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->MORES_FILTERS:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    if-ne v5, v6, :cond_1f

    const v6, -0x4868ae3f

    invoke-static {v10, v6, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->h:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v1, v6, v7}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v9, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt$FiltersOverlayScreen$3$5;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt$FiltersOverlayScreen$3$5;

    sget-object v11, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt$FiltersOverlayScreen$3$6;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt$FiltersOverlayScreen$3$6;

    sget-object v12, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt$FiltersOverlayScreen$3$7;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt$FiltersOverlayScreen$3$7;

    const v14, 0x7f140c45

    invoke-static {v10, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v14

    const/high16 v15, 0x1c00000

    and-int v15, v18, v15

    const/high16 v4, 0x800000

    if-ne v15, v4, :cond_1c

    const/4 v15, 0x1

    goto :goto_14

    :cond_1c
    const/4 v15, 0x0

    :goto_14
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v15, :cond_1d

    if-ne v4, v13, :cond_1e

    :cond_1d
    new-instance v4, Lk0;

    const/16 v13, 0xb

    invoke-direct {v4, v0, v13}, Lk0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    move-object v15, v4

    check-cast v15, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v4, v18, 0x3

    and-int/lit16 v4, v4, 0x1c00

    or-int/lit16 v4, v4, 0x180

    shl-int/lit8 v13, v18, 0x9

    and-int v13, v13, v20

    or-int/2addr v4, v13

    shr-int/lit8 v13, v18, 0x12

    and-int/lit8 v19, v13, 0xe

    move-object/from16 v16, p6

    move/from16 v18, v4

    move-object/from16 v17, v10

    move-object v13, v14

    move/from16 v14, p5

    move-object v10, v9

    move-object/from16 v9, p2

    invoke-static/range {v6 .. v19}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FiltersOverlayScreenKt;->a(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/Alignment$Horizontal;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v10, v17

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :cond_1f
    const v6, -0x485e142c

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_15
    if-eqz p3, :cond_20

    const v4, -0x485da95e

    invoke-static {v10, v4, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v1, v2, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderStyle;ZLandroidx/compose/runtime/Composer;II)V

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_16
    const/4 v11, 0x1

    goto :goto_17

    :cond_20
    const/4 v4, 0x0

    const v1, -0x485bfd6c

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_16

    :goto_17
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_18

    :cond_21
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v20

    :cond_22
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_18
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_23

    new-instance v0, Lyr;

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p10

    move-object v9, v3

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v10}, Lyr;-><init>(ZLjava/util/List;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_23
    return-void
.end method
