.class public abstract Lcom/vuitton/android/presentation/compose/components/AccessibilityPagerButtonsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/compose/components/AccessibilityPagerButtonsKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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
.method public static final a(Landroidx/compose/ui/Modifier;ILcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v1, p4

    move/from16 v12, p7

    const-string v3, "AccessibilityArrowButton"

    if-eqz v0, :cond_0

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, -0x40b934d5

    move-object/from16 v6, p6

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    and-int/lit8 v5, p8, 0x1

    const/4 v6, 0x2

    if-eqz v5, :cond_1

    or-int/lit8 v7, v12, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v7, v12, 0x6

    if-nez v7, :cond_3

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x4

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_0
    or-int/2addr v7, v12

    goto :goto_1

    :cond_3
    move v7, v12

    :goto_1
    and-int/lit8 v8, v12, 0x30

    if-nez v8, :cond_5

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x20

    goto :goto_2

    :cond_4
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v7, v8

    :cond_5
    and-int/lit8 v8, p8, 0x4

    if-eqz v8, :cond_6

    or-int/lit16 v7, v7, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v10, v12, 0x180

    if-nez v10, :cond_9

    if-nez p2, :cond_7

    const/4 v10, -0x1

    goto :goto_3

    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    :goto_3
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x100

    goto :goto_4

    :cond_8
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v7, v10

    :cond_9
    :goto_5
    and-int/lit16 v10, v12, 0xc00

    if-nez v10, :cond_b

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_6

    :cond_a
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v7, v10

    :cond_b
    and-int/lit16 v10, v12, 0x6000

    if-nez v10, :cond_d

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/16 v10, 0x4000

    goto :goto_7

    :cond_c
    const/16 v10, 0x2000

    :goto_7
    or-int/2addr v7, v10

    :cond_d
    const/high16 v10, 0x30000

    and-int/2addr v10, v12

    if-nez v10, :cond_f

    move-object/from16 v10, p5

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/high16 v11, 0x20000

    goto :goto_8

    :cond_e
    const/high16 v11, 0x10000

    :goto_8
    or-int/2addr v7, v11

    goto :goto_9

    :cond_f
    move-object/from16 v10, p5

    :goto_9
    const v11, 0x12493

    and-int/2addr v11, v7

    const v13, 0x12492

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v11, v13, :cond_10

    move v11, v15

    goto :goto_a

    :cond_10
    move v11, v14

    :goto_a
    and-int/lit8 v13, v7, 0x1

    invoke-virtual {v9, v13, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_15

    if-eqz v5, :cond_11

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_11
    if-eqz v8, :cond_12

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v13, v3

    goto :goto_b

    :cond_12
    move-object/from16 v13, p2

    :goto_b
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    xor-int/lit8 v3, v4, 0x1

    new-instance v5, Lt;

    const/4 v8, 0x3

    invoke-direct {v5, v8}, Lt;-><init>(I)V

    and-int/lit8 v11, v7, 0xe

    invoke-static {v0, v3, v5, v9, v11}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v5, Lcom/vuitton/android/presentation/compose/components/AccessibilityPagerButtonsKt$WhenMappings;->a:[I

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v5, v5, v11

    if-eq v5, v15, :cond_14

    if-ne v5, v6, :cond_13

    const v5, 0x8c10bcd

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->b:F

    invoke-static {v11, v5, v6}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v5

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :cond_13
    const v0, 0x8c0e5d9

    invoke-static {v9, v0, v14}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_14
    const v5, 0x8c0f38d

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->f:J

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->b:F

    invoke-static {v11, v5, v6}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v5

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_c
    sget-object v11, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v3, v5, v6, v11}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->q:F

    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    new-instance v5, Lg2;

    invoke-direct {v5, v2, v13, v1}, Lg2;-><init>(ILcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;)V

    const v6, 0x633780c9

    invoke-static {v6, v5, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    shr-int/lit8 v6, v7, 0xf

    and-int/lit8 v6, v6, 0xe

    const/high16 v11, 0x180000

    or-int/2addr v6, v11

    shr-int/2addr v7, v8

    and-int/lit16 v7, v7, 0x380

    or-int/2addr v6, v7

    const/16 v11, 0x38

    move v10, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v5

    move v5, v4

    move-object v4, v3

    move-object/from16 v3, p5

    invoke-static/range {v3 .. v11}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object v3, v13

    goto :goto_d

    :cond_15
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v3, p2

    :goto_d
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_16

    move-object v1, v0

    new-instance v0, Lh2;

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p8

    move v7, v12

    invoke-direct/range {v0 .. v8}, Lh2;-><init>(Landroidx/compose/ui/Modifier;ILcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;FLandroidx/compose/runtime/Composer;II)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p7

    const-string v1, "AccessibilityPagerButtons-HYR8e34"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x3718f164

    move-object/from16 v6, p6

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    and-int/lit8 v3, v7, 0x6

    if-nez v3, :cond_2

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v7

    goto :goto_1

    :cond_2
    move v3, v7

    :goto_1
    and-int/lit8 v6, v7, 0x30

    if-nez v6, :cond_4

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_2

    :cond_3
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :cond_4
    and-int/lit8 v6, p8, 0x4

    if-eqz v6, :cond_5

    or-int/lit16 v3, v3, 0x180

    goto :goto_5

    :cond_5
    and-int/lit16 v9, v7, 0x180

    if-nez v9, :cond_8

    if-nez p2, :cond_6

    const/4 v9, -0x1

    goto :goto_3

    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    :goto_3
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v3, v9

    :cond_8
    :goto_5
    and-int/lit16 v9, v7, 0xc00

    if-nez v9, :cond_a

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x800

    goto :goto_6

    :cond_9
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v3, v9

    :cond_a
    and-int/lit16 v9, v7, 0x6000

    if-nez v9, :cond_c

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, 0x4000

    goto :goto_7

    :cond_b
    const/16 v9, 0x2000

    :goto_7
    or-int/2addr v3, v9

    :cond_c
    const/high16 v9, 0x30000

    and-int/2addr v9, v7

    if-nez v9, :cond_d

    const/high16 v9, 0x10000

    or-int/2addr v3, v9

    :cond_d
    const v9, 0x12493

    and-int/2addr v9, v3

    const v10, 0x12492

    if-eq v9, v10, :cond_e

    const/4 v9, 0x1

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    :goto_8
    and-int/lit8 v10, v3, 0x1

    invoke-virtual {v14, v10, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v9, v7, 0x1

    const v10, -0x70001

    if-eqz v9, :cond_10

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/2addr v3, v10

    move-object/from16 v10, p2

    move/from16 v16, p5

    goto :goto_b

    :cond_10
    :goto_9
    if-eqz v6, :cond_11

    sget-object v6, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_a

    :cond_11
    move-object/from16 v6, p2

    :goto_a
    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    and-int/2addr v3, v10

    move-object v10, v6

    move/from16 v16, v9

    :goto_b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v9, :cond_12

    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v6, v14}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    and-int/lit8 v13, v3, 0xe

    shr-int/lit8 v15, v3, 0x6

    and-int/lit8 v17, v15, 0x70

    or-int v13, v13, v17

    and-int/lit16 v15, v15, 0x380

    or-int/2addr v13, v15

    shr-int/lit8 v13, v13, 0x3

    and-int/lit8 v13, v13, 0x7e

    invoke-static {v4, v5, v14, v13}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v13

    iget-wide v11, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v14, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move-object/from16 v22, v0

    iget-object v0, v14, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v0, :cond_1c

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v0, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_13

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_13
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_c
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v13, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v12, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v0, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v15, v0, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v15

    const/16 v19, 0x0

    const/16 v20, 0xb

    move/from16 v18, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->H:I

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v11

    if-lez v11, :cond_14

    const/4 v11, 0x1

    goto :goto_d

    :cond_14
    const/4 v11, 0x0

    :goto_d
    const v12, 0x7f140359

    invoke-static {v14, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    and-int/lit8 v15, v3, 0x70

    move/from16 v16, v0

    const/16 v0, 0x20

    if-ne v15, v0, :cond_15

    const/16 v17, 0x1

    goto :goto_e

    :cond_15
    const/16 v17, 0x0

    :goto_e
    or-int v13, v13, v17

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v13, :cond_17

    if-ne v0, v9, :cond_16

    goto :goto_f

    :cond_16
    const/4 v13, 0x0

    goto :goto_10

    :cond_17
    :goto_f
    new-instance v0, Lcom/vuitton/android/presentation/compose/components/a;

    const/4 v13, 0x0

    invoke-direct {v0, v13, v2, v6}, Lcom/vuitton/android/presentation/compose/components/a;-><init>(ILandroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_10
    check-cast v0, Lkotlin/jvm/functions/Function0;

    and-int/lit16 v3, v3, 0x380

    move-object/from16 v17, v9

    move/from16 v9, v16

    const/16 v16, 0x0

    move/from16 p0, v15

    move v15, v3

    move/from16 v3, p0

    move/from16 v21, v13

    move-object/from16 v23, v17

    const/16 p0, 0x1

    move-object v13, v0

    const/16 v0, 0x20

    invoke-static/range {v8 .. v16}, Lcom/vuitton/android/presentation/compose/components/AccessibilityPagerButtonsKt;->a(Landroidx/compose/ui/Modifier;ILcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move v8, v15

    new-instance v15, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v15, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0xe

    const/16 v17, 0x0

    move/from16 v16, v18

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move/from16 v18, v16

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I:I

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v11

    if-ltz v11, :cond_18

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v11

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_18

    move/from16 v11, p0

    goto :goto_11

    :cond_18
    move/from16 v11, v21

    :goto_11
    const v12, 0x7f140342

    invoke-static {v14, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-ne v3, v0, :cond_19

    move/from16 v21, p0

    :cond_19
    or-int v0, v13, v21

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_1b

    move-object/from16 v0, v23

    if-ne v3, v0, :cond_1a

    goto :goto_12

    :cond_1a
    move/from16 v0, p0

    goto :goto_13

    :cond_1b
    :goto_12
    new-instance v3, Lcom/vuitton/android/presentation/compose/components/a;

    move/from16 v0, p0

    invoke-direct {v3, v0, v2, v6}, Lcom/vuitton/android/presentation/compose/components/a;-><init>(ILandroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_13
    move-object v13, v3

    check-cast v13, Lkotlin/jvm/functions/Function0;

    const/16 v16, 0x0

    move v15, v8

    move-object v8, v1

    invoke-static/range {v8 .. v16}, Lcom/vuitton/android/presentation/compose/components/AccessibilityPagerButtonsKt;->a(Landroidx/compose/ui/Modifier;ILcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v3, v10

    move/from16 v6, v18

    goto :goto_14

    :cond_1c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_1d
    move-object/from16 v22, v0

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v3, p2

    move/from16 v6, p5

    :goto_14
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1e

    new-instance v0, Li2;

    move/from16 v8, p8

    move-object/from16 v1, v22

    invoke-direct/range {v0 .. v8}, Li2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;FII)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void
.end method
