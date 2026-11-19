.class public abstract Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpToolBoxKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpToolBoxKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/unit/Dp;",
        "fabSize",
        "rowWidth",
        "animatedWidth",
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
.method public static final a(Landroidx/compose/ui/Modifier;FLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeCapsuleRenderContext;Landroidx/compose/runtime/Composer;I)V
    .locals 38

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p9

    const-string v1, "ThematicPlpThemeCapsule-Uww-Ezs"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x5328f281

    move-object/from16 v5, p8

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    and-int/lit8 v4, v9, 0x6

    const/4 v8, 0x2

    if-nez v4, :cond_2

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    move v4, v8

    :goto_0
    or-int/2addr v4, v9

    goto :goto_1

    :cond_2
    move v4, v9

    :goto_1
    and-int/lit8 v10, v9, 0x30

    if-nez v10, :cond_4

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x20

    goto :goto_2

    :cond_3
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v4, v10

    :cond_4
    and-int/lit16 v10, v9, 0x180

    if-nez v10, :cond_6

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x100

    goto :goto_3

    :cond_5
    const/16 v10, 0x80

    :goto_3
    or-int/2addr v4, v10

    :cond_6
    and-int/lit16 v10, v9, 0xc00

    if-nez v10, :cond_8

    move-object/from16 v10, p3

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x800

    goto :goto_4

    :cond_7
    const/16 v11, 0x400

    :goto_4
    or-int/2addr v4, v11

    goto :goto_5

    :cond_8
    move-object/from16 v10, p3

    :goto_5
    and-int/lit16 v11, v9, 0x6000

    if-nez v11, :cond_a

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v11, 0x4000

    goto :goto_6

    :cond_9
    const/16 v11, 0x2000

    :goto_6
    or-int/2addr v4, v11

    :cond_a
    const/high16 v11, 0x30000

    and-int/2addr v11, v9

    if-nez v11, :cond_c

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/high16 v11, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v11, 0x10000

    :goto_7
    or-int/2addr v4, v11

    :cond_c
    const/high16 v11, 0x180000

    and-int/2addr v11, v9

    if-nez v11, :cond_e

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const/high16 v11, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v11, 0x80000

    :goto_8
    or-int/2addr v4, v11

    :cond_e
    const/high16 v11, 0xc00000

    and-int/2addr v11, v9

    if-nez v11, :cond_10

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v11

    if-eqz v11, :cond_f

    const/high16 v11, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v11, 0x400000

    :goto_9
    or-int/2addr v4, v11

    :cond_10
    const v11, 0x492493

    and-int/2addr v11, v4

    const v13, 0x492492

    const/4 v15, 0x1

    const/4 v5, 0x0

    if-eq v11, v13, :cond_11

    move v11, v15

    goto :goto_a

    :cond_11
    move v11, v5

    :goto_a
    and-int/lit8 v13, v4, 0x1

    invoke-virtual {v14, v13, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_24

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v11, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpToolBoxKt$WhenMappings;->a:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v11, v11, v13

    const/4 v13, 0x3

    if-eq v11, v15, :cond_14

    if-eq v11, v8, :cond_13

    if-ne v11, v13, :cond_12

    const v11, 0x2cb6c24b

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v11, Lkotlin/Triple;

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->p:J

    new-instance v12, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v12, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    sget-object v8, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v8, Landroidx/compose/ui/graphics/Color;->h:J

    new-instance v13, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v13, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    new-instance v15, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v15, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-direct {v11, v12, v13, v15}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_12
    const v0, 0x2cb683b6

    invoke-static {v14, v0, v5}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_13
    const v8, 0x2cb6a442

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v11, Lkotlin/Triple;

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    new-instance v12, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v12, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    new-instance v13, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v13, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    new-instance v15, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v15, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-direct {v11, v12, v13, v15}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_14
    const v8, 0x2cb688ed

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v11, Lkotlin/Triple;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v8, Landroidx/compose/ui/graphics/Color;->h:J

    new-instance v12, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v12, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    new-instance v13, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v13, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    new-instance v15, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v15, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-direct {v11, v12, v13, v15}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_b
    iget-object v8, v11, Lkotlin/Triple;->b:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/graphics/Color;

    iget-wide v8, v8, Landroidx/compose/ui/graphics/Color;->a:J

    iget-object v12, v11, Lkotlin/Triple;->c:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/ui/graphics/Color;

    iget-wide v12, v12, Landroidx/compose/ui/graphics/Color;->a:J

    iget-object v11, v11, Lkotlin/Triple;->d:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v19, v12

    iget-wide v12, v11, Landroidx/compose/ui/graphics/Color;->a:J

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    const/4 v15, 0x0

    move-wide/from16 v21, v12

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v12, :cond_15

    invoke-static {v15}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v11, Landroidx/compose/runtime/MutableState;

    sget-object v13, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/unit/Density;

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroidx/compose/ui/unit/Dp;

    if-eqz v23, :cond_17

    instance-of v5, v6, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$Stable;

    if-nez v5, :cond_16

    goto :goto_d

    :cond_16
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v5, Landroidx/compose/ui/unit/Dp;->b:F

    :goto_c
    move-object/from16 v23, v12

    goto :goto_e

    :cond_17
    :goto_d
    move v5, v2

    goto :goto_c

    :goto_e
    const/16 v12, 0x96

    move-object/from16 v24, v13

    const/4 v13, 0x6

    move/from16 v25, v4

    move-object/from16 v26, v11

    const/4 v4, 0x0

    invoke-static {v12, v4, v15, v13}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v11

    move-object v4, v15

    const/16 v15, 0x30

    const/16 v27, 0x3

    const/16 v16, 0xc

    move/from16 v28, v12

    const/4 v12, 0x0

    move/from16 v29, v13

    const/4 v13, 0x0

    move v10, v5

    move-wide/from16 v33, v19

    move-object/from16 v37, v23

    move-object/from16 v35, v24

    move-object/from16 v5, v26

    const/4 v4, 0x1

    invoke-static/range {v10 .. v16}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v10

    sget-object v11, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpToolBoxKt$WhenMappings;->b:[I

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v4, :cond_19

    const/4 v12, 0x2

    if-ne v11, v12, :cond_18

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {v10, v12, v11}, Landroidx/compose/foundation/layout/SizeKt;->x(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;I)Landroidx/compose/ui/Modifier;

    move-result-object v10

    goto :goto_10

    :cond_18
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_19
    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/unit/Dp;

    if-eqz v13, :cond_1b

    instance-of v13, v6, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$Stable;

    if-eqz v13, :cond_1a

    goto :goto_f

    :cond_1a
    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v11, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/unit/Dp;

    iget v10, v10, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {v11, v10}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    goto :goto_10

    :cond_1b
    :goto_f
    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v12, v11}, Landroidx/compose/foundation/layout/SizeKt;->x(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;I)Landroidx/compose/ui/Modifier;

    move-result-object v10

    :goto_10
    invoke-interface {v0, v10}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v10, v2}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVShape;->e:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v10, v11}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    move-wide/from16 v12, v33

    invoke-static {v10, v12, v13, v11}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->c:F

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVShape;->e:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v10, v11, v8, v9, v12}, Landroidx/compose/foundation/BorderKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v26

    const/high16 v8, 0x380000

    and-int v8, v25, v8

    const/high16 v9, 0x100000

    if-ne v8, v9, :cond_1c

    move v15, v4

    goto :goto_11

    :cond_1c
    const/4 v15, 0x0

    :goto_11
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, v37

    if-nez v15, :cond_1d

    if-ne v8, v9, :cond_1e

    :cond_1d
    new-instance v8, Lw11;

    const/4 v10, 0x4

    invoke-direct {v8, v7, v10}, Lw11;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    move-object/from16 v30, v8

    check-cast v30, Lkotlin/jvm/functions/Function0;

    const/16 v31, 0x1f

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v26 .. v31}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v8

    move-object/from16 v13, v35

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x7

    if-nez v10, :cond_1f

    if-ne v11, v9, :cond_20

    :cond_1f
    new-instance v11, Lj1;

    invoke-direct {v11, v13, v5, v12}, Lj1;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v11}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v26

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    const/16 v30, 0x0

    const/16 v31, 0xe

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v27, v5

    invoke-static/range {v26 .. v31}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v10, 0x36

    invoke-static {v8, v9, v14, v10}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v8

    iget-wide v9, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v14, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v13, v14, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v13, :cond_23

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_21

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_21
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_12
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v8, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v10, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v8, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v8}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v5, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    instance-of v5, v6, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$ToolboxRestoring;

    xor-int/lit8 v11, v5, 0x1

    const/16 v8, 0x96

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-static {v8, v13, v10, v9}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v15

    const/4 v12, 0x0

    const/4 v4, 0x2

    invoke-static {v15, v12, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v12

    invoke-static {v8, v13, v10, v9}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v8

    invoke-static {v8, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v4

    new-instance v8, Lla;

    const/16 v9, 0x9

    invoke-direct {v8, v3, v9}, Lla;-><init>(Ljava/lang/String;I)V

    const v13, 0x64bfa3c5

    invoke-static {v13, v8, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v16

    const v18, 0x186c06

    const/16 v19, 0x12

    move-object/from16 v36, v10

    sget-object v10, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    move-object v13, v12

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v17, v14

    move-object/from16 v8, v36

    move-object v14, v4

    const/4 v4, 0x7

    invoke-static/range {v10 .. v19}, Landroidx/compose/animation/AnimatedVisibilityKt;->d(Landroidx/compose/foundation/layout/RowScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v14, v17

    if-nez v5, :cond_22

    const v5, -0xc6f6953

    invoke-static {v14, v5, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    invoke-static {v1, v8, v8, v4}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v15

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/16 v19, 0x0

    const/16 v20, 0xa

    const/16 v17, 0x0

    move/from16 v16, v1

    move/from16 v18, v4

    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v4, "thematicPlp_themeCapsuleTitle_text"

    invoke-static {v1, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    sget-object v4, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v23, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    shr-int/lit8 v4, v25, 0x9

    and-int/lit8 v30, v4, 0xe

    const/16 v31, 0x6180

    const v32, 0x1aff8

    move-object/from16 v29, v14

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide/from16 v12, v21

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v10, p3

    move-object/from16 v28, v1

    invoke-static/range {v10 .. v32}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v14, v29

    const/4 v13, 0x0

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    const/4 v4, 0x1

    goto :goto_14

    :cond_22
    const/4 v13, 0x0

    const v1, -0xc66763b

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :goto_14
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :cond_23
    const/4 v8, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v8

    :cond_24
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_15
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_25

    move-object v1, v0

    new-instance v0, Les;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Les;-><init>(Landroidx/compose/ui/Modifier;FLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeCapsuleRenderContext;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_25
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;FLcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p3

    move-object/from16 v9, p4

    move/from16 v1, p5

    move/from16 v14, p6

    move/from16 v15, p10

    const-string v4, "ThematicPlpToolBox-_-WMjBM"

    if-eqz v0, :cond_0

    invoke-static {v0, v4}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x20672538

    move-object/from16 v7, p9

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    iget-object v6, v11, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v7, v15, 0x6

    if-nez v7, :cond_2

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v15

    goto :goto_1

    :cond_2
    move v7, v15

    :goto_1
    and-int/lit8 v8, v15, 0x30

    if-nez v8, :cond_4

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x20

    goto :goto_2

    :cond_3
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v7, v8

    :cond_4
    and-int/lit16 v8, v15, 0x180

    if-nez v8, :cond_6

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x100

    goto :goto_3

    :cond_5
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v7, v8

    :cond_6
    and-int/lit16 v8, v15, 0xc00

    if-nez v8, :cond_8

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x800

    goto :goto_4

    :cond_7
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v7, v8

    :cond_8
    and-int/lit16 v8, v15, 0x6000

    if-nez v8, :cond_a

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x4000

    goto :goto_5

    :cond_9
    const/16 v8, 0x2000

    :goto_5
    or-int/2addr v7, v8

    :cond_a
    const/high16 v8, 0x30000

    and-int/2addr v8, v15

    if-nez v8, :cond_c

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_b

    const/high16 v8, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v8, 0x10000

    :goto_6
    or-int/2addr v7, v8

    :cond_c
    const/high16 v8, 0x180000

    and-int/2addr v8, v15

    if-nez v8, :cond_e

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_d

    const/high16 v8, 0x100000

    goto :goto_7

    :cond_d
    const/high16 v8, 0x80000

    :goto_7
    or-int/2addr v7, v8

    :cond_e
    const/high16 v8, 0xc00000

    and-int/2addr v8, v15

    if-nez v8, :cond_10

    move-object/from16 v8, p7

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const/high16 v10, 0x800000

    goto :goto_8

    :cond_f
    const/high16 v10, 0x400000

    :goto_8
    or-int/2addr v7, v10

    goto :goto_9

    :cond_10
    move-object/from16 v8, p7

    :goto_9
    const/high16 v10, 0x6000000

    and-int/2addr v10, v15

    if-nez v10, :cond_12

    move-object/from16 v10, p8

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    const/high16 v12, 0x4000000

    goto :goto_a

    :cond_11
    const/high16 v12, 0x2000000

    :goto_a
    or-int/2addr v7, v12

    :goto_b
    move/from16 v23, v7

    goto :goto_c

    :cond_12
    move-object/from16 v10, p8

    goto :goto_b

    :goto_c
    const v7, 0x2492493

    and-int v7, v23, v7

    const v12, 0x2492492

    const/4 v1, 0x0

    if-eq v7, v12, :cond_13

    const/4 v7, 0x1

    goto :goto_d

    :cond_13
    move v7, v1

    :goto_d
    and-int/lit8 v12, v23, 0x1

    invoke-virtual {v11, v12, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_28

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    instance-of v7, v9, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$Stable;

    if-eqz v7, :cond_14

    move/from16 v16, v5

    goto :goto_e

    :cond_14
    sget-object v12, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v12, 0x0

    move/from16 v16, v12

    :goto_e
    const/16 v12, 0x96

    const/4 v14, 0x0

    const/4 v13, 0x6

    invoke-static {v12, v1, v14, v13}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v17

    const/16 v21, 0x30

    const/16 v22, 0xc

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v11

    invoke-static/range {v16 .. v22}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v16

    const v12, 0x7f1402ed

    invoke-static {v11, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    if-eqz v2, :cond_15

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->b:Ljava/lang/String;

    if-nez v13, :cond_16

    :cond_15
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    :cond_16
    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const v14, 0x7f1402ec

    invoke-static {v14, v13, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f140307

    invoke-static {v11, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v14

    const v1, 0x7f140306

    invoke-static {v11, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_17

    const v5, -0x3cca8c4a

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-static {v5}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v5

    move-object/from16 v18, v5

    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v5, v18

    move-object/from16 v18, v6

    goto :goto_f

    :cond_17
    move-object/from16 v18, v6

    const/4 v5, 0x0

    const v6, -0x3cc934bf

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    :goto_f
    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    move/from16 v19, v7

    const/16 v7, 0x30

    invoke-static {v5, v6, v11, v7}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v5

    iget-wide v6, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    move/from16 v20, v6

    invoke-static {v11, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v21, v0

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v18, :cond_27

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v8, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_18

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_18
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_10
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v5, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v7, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v7, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v7}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v6, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_19

    const v13, 0x98e10d1

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 p0, v1

    move-object/from16 v22, v3

    move-object v3, v4

    move-object v1, v5

    move-object/from16 v30, v6

    move-object v14, v7

    move-object v2, v8

    move-object/from16 v20, v12

    move/from16 v5, p3

    goto/16 :goto_12

    :cond_19
    move-object/from16 v22, v5

    const v5, 0x98e10d2

    move-object/from16 v24, v7

    const-string v7, "thematicPlp_currentThemeCapsuleItem"

    invoke-static {v11, v5, v4, v7}, Ln00;->d(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz p6, :cond_1c

    const v7, 0x303cb6d5

    invoke-static {v11, v7, v4}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v7

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v25, v8

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v14, :cond_1a

    if-ne v8, v6, :cond_1b

    :cond_1a
    new-instance v8, Lnj0;

    const/16 v14, 0x19

    invoke-direct {v8, v13, v14}, Lnj0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-static {v7, v14, v8, v13}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v8, 0x3

    goto :goto_11

    :cond_1c
    move-object/from16 v25, v8

    const v7, 0x30410010

    invoke-static {v11, v7, v4}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v7

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v8, :cond_1d

    if-ne v13, v6, :cond_1e

    :cond_1d
    new-instance v13, Lnj0;

    const/16 v8, 0x1a

    invoke-direct {v13, v14, v8}, Lnj0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x3

    const/4 v14, 0x0

    invoke-static {v7, v14, v13, v8}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    invoke-interface {v5, v7}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    const v13, 0x7f1406e7

    invoke-static {v11, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    move/from16 v20, v8

    sget-object v8, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;->DEFAULT:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;

    move-object v14, v12

    move-object v12, v11

    sget-object v11, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeCapsuleRenderContext;->TOOLBOX:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeCapsuleRenderContext;

    shr-int/lit8 v26, v23, 0x6

    and-int/lit8 v27, v26, 0x70

    const v28, 0xc06000

    or-int v27, v27, v28

    shl-int/lit8 v28, v23, 0x3

    const/high16 v29, 0x70000

    and-int v28, v28, v29

    or-int v27, v27, v28

    const/high16 v28, 0x380000

    and-int v26, v26, v28

    or-int v26, v27, v26

    move-object/from16 p0, v1

    move-object/from16 v30, v6

    move-object v6, v7

    move-object v7, v13

    move-object/from16 v20, v14

    move-object/from16 v1, v22

    move-object/from16 v14, v24

    move-object/from16 v2, v25

    move/from16 v13, v26

    move-object/from16 v22, v3

    move-object v3, v4

    move-object v4, v5

    move/from16 v5, p3

    invoke-static/range {v4 .. v13}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpToolBoxKt;->a(Landroidx/compose/ui/Modifier;FLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeCapsuleRenderContext;Landroidx/compose/runtime/Composer;I)V

    move-object v11, v12

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/unit/Dp;

    iget v6, v6, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v6, v13}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    iget-wide v7, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v11, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v18, :cond_26

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_1f

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_13

    :cond_1f
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_13
    invoke-static {v11, v6, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v8, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7, v11, v15, v11, v14}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v0, v22

    invoke-static {v11, v4, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v19, :cond_25

    const v0, 0xf1222a6

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v1, "thematicPlp_changeGrid_button"

    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz p5, :cond_22

    const v1, 0xf15fa4b

    invoke-static {v11, v1, v3}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    move-object/from16 v14, v20

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_20

    move-object/from16 v2, v30

    if-ne v3, v2, :cond_21

    :cond_20
    new-instance v3, Lnj0;

    const/16 v2, 0x1b

    invoke-direct {v3, v14, v2}, Lnj0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x3

    const/4 v14, 0x0

    invoke-static {v1, v14, v3, v8}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_22
    move-object/from16 v2, v30

    const/4 v8, 0x3

    const v1, 0xf1a8ce8

    invoke-static {v11, v1, v3}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    move-object/from16 v3, p0

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_23

    if-ne v6, v2, :cond_24

    :cond_23
    new-instance v6, Lnj0;

    const/16 v2, 0x1c

    invoke-direct {v6, v3, v2}, Lnj0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    invoke-static {v1, v14, v6, v8}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_14
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v8, Lcom/vuitton/android/presentation/compose/components/FabStyle;->DEFAULT:Lcom/vuitton/android/presentation/compose/components/FabStyle;

    new-instance v0, Lfl0;

    move-object/from16 v3, p2

    invoke-direct {v0, v3}, Lfl0;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V

    const v1, -0x49eee972

    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    shr-int/lit8 v0, v23, 0xf

    and-int/lit16 v0, v0, 0x380

    or-int/lit16 v12, v0, 0xc30

    const/4 v13, 0x0

    move-object/from16 v9, p7

    invoke-static/range {v7 .. v13}, Lcom/vuitton/android/presentation/compose/components/FabNoElevationKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/compose/components/FabStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_15
    const/4 v0, 0x1

    goto :goto_16

    :cond_25
    move-object/from16 v3, p2

    const/4 v13, 0x0

    const v0, 0xf2abdb4

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :goto_16
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_17

    :cond_26
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v14, 0x0

    throw v14

    :cond_27
    const/4 v14, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v14

    :cond_28
    move-object/from16 v21, v0

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_17
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_29

    new-instance v0, Le41;

    move-object/from16 v2, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    move v4, v5

    move-object/from16 v1, v21

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v10}, Le41;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;FLcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_29
    return-void
.end method
