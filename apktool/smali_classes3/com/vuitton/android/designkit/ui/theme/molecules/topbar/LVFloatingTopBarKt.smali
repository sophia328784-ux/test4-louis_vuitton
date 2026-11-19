.class public abstract Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVFloatingTopBarKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVFloatingTopBarKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "system"
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarType;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v9, p9

    const-string v1, "LVFloatingTopBar"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x66146a6b

    move-object/from16 v3, p8

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, p10, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v5, v9, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v5, v9, 0x6

    if-nez v5, :cond_3

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v9

    goto :goto_1

    :cond_3
    move v5, v9

    :goto_1
    and-int/lit8 v6, v9, 0x30

    if-nez v6, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v5, v6

    :cond_5
    and-int/lit8 v6, p10, 0x4

    const/4 v7, -0x1

    if-eqz v6, :cond_6

    or-int/lit16 v5, v5, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v8, v9, 0x180

    if-nez v8, :cond_9

    if-nez p2, :cond_7

    move v8, v7

    goto :goto_3

    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    :goto_3
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_4

    :cond_8
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v5, v8

    :cond_9
    :goto_5
    and-int/lit8 v8, p10, 0x8

    if-eqz v8, :cond_a

    or-int/lit16 v5, v5, 0xc00

    goto :goto_8

    :cond_a
    and-int/lit16 v10, v9, 0xc00

    if-nez v10, :cond_d

    if-nez p3, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    :goto_6
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x800

    goto :goto_7

    :cond_c
    const/16 v7, 0x400

    :goto_7
    or-int/2addr v5, v7

    :cond_d
    :goto_8
    and-int/lit16 v7, v9, 0x6000

    move-object/from16 v14, p4

    if-nez v7, :cond_f

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/16 v7, 0x4000

    goto :goto_9

    :cond_e
    const/16 v7, 0x2000

    :goto_9
    or-int/2addr v5, v7

    :cond_f
    and-int/lit8 v7, p10, 0x20

    const/high16 v10, 0x30000

    if-eqz v7, :cond_11

    or-int/2addr v5, v10

    :cond_10
    move-object/from16 v10, p5

    goto :goto_b

    :cond_11
    and-int/2addr v10, v9

    if-nez v10, :cond_10

    move-object/from16 v10, p5

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/high16 v11, 0x20000

    goto :goto_a

    :cond_12
    const/high16 v11, 0x10000

    :goto_a
    or-int/2addr v5, v11

    :goto_b
    and-int/lit8 v11, p10, 0x40

    const/high16 v12, 0x180000

    if-eqz v11, :cond_14

    or-int/2addr v5, v12

    :cond_13
    move-object/from16 v12, p6

    goto :goto_d

    :cond_14
    and-int/2addr v12, v9

    if-nez v12, :cond_13

    move-object/from16 v12, p6

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    const/high16 v13, 0x100000

    goto :goto_c

    :cond_15
    const/high16 v13, 0x80000

    :goto_c
    or-int/2addr v5, v13

    :goto_d
    const/high16 v13, 0xc00000

    and-int/2addr v13, v9

    if-nez v13, :cond_16

    const/high16 v13, 0x400000

    or-int/2addr v5, v13

    :cond_16
    const v13, 0x492493

    and-int/2addr v13, v5

    const v15, 0x492492

    if-eq v13, v15, :cond_17

    const/4 v13, 0x1

    goto :goto_e

    :cond_17
    const/4 v13, 0x0

    :goto_e
    and-int/lit8 v15, v5, 0x1

    invoke-virtual {v2, v15, v13}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v13

    if-eqz v13, :cond_25

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v13, v9, 0x1

    const v15, -0x1c00001

    if-eqz v13, :cond_19

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v13

    if-eqz v13, :cond_18

    goto :goto_f

    :cond_18
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int v3, v5, v15

    move-object/from16 v6, p3

    move-object v5, v0

    move v7, v3

    move-object/from16 v19, v10

    move-object v8, v12

    move-object/from16 v3, p2

    move-object/from16 v0, p7

    goto :goto_14

    :cond_19
    :goto_f
    if-eqz v3, :cond_1a

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_1a
    if-eqz v6, :cond_1b

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;->Primary:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;

    goto :goto_10

    :cond_1b
    move-object/from16 v3, p2

    :goto_10
    if-eqz v8, :cond_1c

    sget-object v6, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_11

    :cond_1c
    move-object/from16 v6, p3

    :goto_11
    if-eqz v7, :cond_1e

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v8, :cond_1d

    new-instance v7, Lk40;

    const/16 v8, 0x11

    invoke-direct {v7, v8}, Lk40;-><init>(I)V

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v7, Lkotlin/jvm/functions/Function0;

    goto :goto_12

    :cond_1e
    move-object v7, v10

    :goto_12
    if-eqz v11, :cond_1f

    sget-object v8, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/ComposableSingletons$LVFloatingTopBarKt;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/ComposableSingletons$LVFloatingTopBarKt;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/ComposableSingletons$LVFloatingTopBarKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_13

    :cond_1f
    move-object v8, v12

    :goto_13
    invoke-static {v2}, Landroidx/compose/material3/TopAppBarDefaults;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v10

    and-int/2addr v5, v15

    move-object/from16 v19, v7

    move v7, v5

    move-object v5, v0

    move-object v0, v10

    :goto_14
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v10, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v10, Landroidx/compose/ui/graphics/Color;->h:J

    sget-object v12, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v5, v10, v11, v12}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v10, v0}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v13, 0x30

    invoke-static {v12, v11, v2, v13}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v11

    iget-wide v12, v2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v2, v10}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v4, v2, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v4, :cond_24

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v4, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v4, :cond_20

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_15

    :cond_20
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_15
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v11, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v13, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v4, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v10, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarType;->None:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarType;

    move-object/from16 v10, p1

    if-eq v10, v4, :cond_23

    const v4, 0x2e1856c3

    const-string v11, "header_navigation_button"

    invoke-static {v2, v4, v1, v11}, Ln00;->d(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v6, v3, v2}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVFloatingTopBarKt;->b(Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    move-result-object v11

    sget-object v12, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVFloatingTopBarKt$WhenMappings;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v12, v12, v13

    const/4 v13, 0x1

    if-eq v12, v13, :cond_22

    const/4 v13, 0x2

    if-ne v12, v13, :cond_21

    const v12, 0x5411787c

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->H:I

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_16

    :cond_21
    const/4 v13, 0x0

    const v0, 0x54116455

    invoke-static {v2, v0, v13}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_22
    const/4 v13, 0x0

    const v12, 0x54116e96

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->q:I

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_16
    const v13, 0xe000

    and-int v21, v7, v13

    shr-int/lit8 v13, v7, 0xf

    and-int/lit8 v22, v13, 0xe

    const/16 v23, 0x3e8

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v20, v2

    move-object v10, v4

    invoke-static/range {v10 .. v23}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;ZIZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_17

    :cond_23
    const/4 v13, 0x0

    const v4, 0x2e203411

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_17
    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v10, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/4 v13, 0x1

    invoke-virtual {v10, v4, v1, v13}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    shr-int/lit8 v1, v7, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    shr-int/lit8 v4, v7, 0xc

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarActionScopeInstance;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarActionScopeInstance;

    invoke-interface {v8, v4, v6, v2, v1}, Lkotlin/jvm/functions/Function4;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v1, v5

    move-object v4, v6

    move-object v7, v8

    move-object/from16 v6, v19

    move-object v8, v0

    goto :goto_18

    :cond_24
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_25
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p7

    move-object v1, v0

    move-object v6, v10

    move-object v7, v12

    :goto_18
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_26

    new-instance v0, Lsd;

    const/4 v11, 0x1

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lsd;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/Function;Ljava/lang/Object;III)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_26
    return-void
.end method

.method public static final b(Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVFloatingTopBarKt$WhenMappings;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const p0, 0x38f9174

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;->Primary:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;

    if-ne p1, p0, :cond_0

    const p0, 0x39049e1

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->f(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_0
    const p0, 0x3916d79

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->f(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;->h:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0

    :cond_1
    const p0, 0x85f56a6

    invoke-static {p2, p0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object p0

    throw p0

    :cond_2
    const p0, 0x38c1c80

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;->Primary:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;

    if-ne p1, p0, :cond_3

    const p0, 0x38cd5a7

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->f(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_3
    const p0, 0x38de1ff

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->f(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;->g:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0
.end method
