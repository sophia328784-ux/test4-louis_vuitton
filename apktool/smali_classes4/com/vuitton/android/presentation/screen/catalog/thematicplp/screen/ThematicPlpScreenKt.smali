.class public abstract Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u00a8\u0006\t\u00b2\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0004\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0006\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0008\u001a\u00020\u00078\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/unit/Dp;",
        "giftSelectionHeight",
        "",
        "isTransitioning",
        "scrollEnabled",
        "isZooming",
        "endOfListReached",
        "",
        "accumulatedOverscrollPx",
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
.method public static final a(Landroidx/compose/runtime/Composer;I)V
    .locals 32

    const v1, 0x7f601f38

    move-object/from16 v2, p0

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/lit8 v4, p1, 0x1

    invoke-virtual {v1, v4, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v4, "NoResultScreen"

    invoke-direct {v3, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v3, v5}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->e:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v7, 0x6

    invoke-static {v5, v6, v1, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v5

    iget-wide v6, v1, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v1, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v9, v1, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_1

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v5, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v7, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v5, v4, v6}, Ln00;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v5, 0x3

    invoke-static {v3, v10, v5}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v7, 0x7f140510

    invoke-static {v1, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->e:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v11, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    sget-object v9, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroidx/compose/ui/text/style/TextAlign;->e:I

    move-object v13, v4

    move-wide/from16 v30, v11

    move v11, v5

    move-wide/from16 v4, v30

    new-instance v12, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v12, v9}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v23, 0x0

    const v24, 0x1fbf8

    move v15, v2

    move v14, v6

    move-object v2, v7

    const-wide/16 v6, 0x0

    move-object/from16 v20, v8

    const/4 v8, 0x0

    move/from16 v16, v9

    move-object/from16 v17, v10

    const-wide/16 v9, 0x0

    move/from16 v18, v11

    const/4 v11, 0x0

    move-object/from16 v21, v13

    move/from16 v19, v14

    const-wide/16 v13, 0x0

    move/from16 v22, v15

    const/4 v15, 0x0

    move/from16 v25, v16

    const/16 v16, 0x0

    move-object/from16 v26, v17

    const/16 v17, 0x0

    move/from16 v27, v18

    const/16 v18, 0x0

    move/from16 v28, v19

    const/16 v19, 0x0

    move/from16 v29, v22

    const/16 v22, 0x30

    move-object/from16 v0, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v26

    invoke-static/range {v2 .. v24}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v2, v21

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v3, v14}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v11, 0x3

    invoke-static {v0, v1, v11}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v0, 0x7f14050f

    invoke-static {v2, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    new-instance v12, Landroidx/compose/ui/text/style/TextAlign;

    move/from16 v6, v25

    invoke-direct {v12, v6}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v20, v1

    move-object v2, v0

    invoke-static/range {v2 .. v24}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v2, v21

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2

    :cond_2
    move-object v1, v10

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v1

    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Le31;

    const/4 v2, 0x4

    move/from16 v3, p1

    invoke-direct {v1, v3, v2}, Le31;-><init>(II)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 57

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    move-object/from16 v9, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p11

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    const-string v10, "ThematicPlpScreen"

    if-eqz v0, :cond_0

    invoke-static {v0, v10}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;->f:Ljava/util/List;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;->a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;->e:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x2b477a7c

    move-object/from16 v6, p17

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    iget-object v6, v5, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    const/16 v16, 0x2

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    move/from16 v7, v16

    :goto_0
    or-int v7, p18, v7

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x10

    move-object/from16 v32, v10

    if-eqz v17, :cond_2

    const/16 v17, 0x20

    goto :goto_1

    :cond_2
    move/from16 v17, v18

    :goto_1
    or-int v7, v7, v17

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/16 v17, 0x100

    goto :goto_2

    :cond_3
    const/16 v17, 0x80

    :goto_2
    or-int v7, v7, v17

    move/from16 v10, p3

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    const/16 v19, 0x400

    const/16 v20, 0x800

    if-eqz v17, :cond_4

    move/from16 v17, v20

    goto :goto_3

    :cond_4
    move/from16 v17, v19

    :goto_3
    or-int v7, v7, v17

    move/from16 v10, p4

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    const/16 v21, 0x2000

    if-eqz v17, :cond_5

    const/16 v17, 0x4000

    goto :goto_4

    :cond_5
    move/from16 v17, v21

    :goto_4
    or-int v7, v7, v17

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    const/high16 v22, 0x10000

    if-eqz v17, :cond_6

    const/high16 v17, 0x20000

    goto :goto_5

    :cond_6
    move/from16 v17, v22

    :goto_5
    or-int v7, v7, v17

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    const/high16 v23, 0x80000

    if-eqz v17, :cond_7

    const/high16 v17, 0x100000

    goto :goto_6

    :cond_7
    move/from16 v17, v23

    :goto_6
    or-int v7, v7, v17

    move-object/from16 v10, p7

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/high16 v17, 0x800000

    goto :goto_7

    :cond_8
    const/high16 v17, 0x400000

    :goto_7
    or-int v7, v7, v17

    move-object/from16 v10, p8

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/high16 v17, 0x4000000

    goto :goto_8

    :cond_9
    const/high16 v17, 0x2000000

    :goto_8
    or-int v7, v7, v17

    move-object/from16 v8, p9

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    const/high16 v24, 0x20000000

    goto :goto_9

    :cond_a
    const/high16 v24, 0x10000000

    :goto_9
    or-int v34, v7, v24

    move-object/from16 v7, p10

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    const/16 v16, 0x4

    :cond_b
    const/16 v17, 0x180

    or-int v16, v17, v16

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/16 v18, 0x20

    :cond_c
    or-int v16, v16, v18

    move-object/from16 v10, p13

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v19, v20

    :cond_d
    or-int v16, v16, v19

    move-object/from16 v10, p14

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/16 v21, 0x4000

    :cond_e
    or-int v16, v16, v21

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    const/high16 v22, 0x20000

    :cond_f
    or-int v16, v16, v22

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v23, 0x100000

    :cond_10
    or-int v35, v16, v23

    const v16, 0x12492493

    move-object/from16 v17, v0

    and-int v0, v34, v16

    move-object/from16 v16, v1

    const v1, 0x12492492

    if-ne v0, v1, :cond_12

    const v0, 0x92493

    and-int v0, v35, v0

    const v1, 0x92492

    if-eq v0, v1, :cond_11

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    goto :goto_b

    :cond_12
    :goto_a
    const/4 v0, 0x1

    :goto_b
    and-int/lit8 v1, v34, 0x1

    invoke-virtual {v5, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_5f

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_13

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v5}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    move-object/from16 v27, v0

    check-cast v27, Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    sget-object v13, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    move-object/from16 v18, v6

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    const/4 v10, 0x0

    if-ne v6, v1, :cond_14

    invoke-static {v10}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v6, Landroidx/compose/runtime/MutableState;

    invoke-static {v5}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v10

    invoke-static {v10, v5}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v10

    invoke-interface {v10}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v10

    move-object/from16 v19, v6

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_15

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v6, Landroidx/compose/runtime/MutableState;

    move-object/from16 v20, v6

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_16

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Landroidx/compose/animation/core/AnimatableKt;->a(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    move-object/from16 v29, v6

    check-cast v29, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    const/16 v23, 0x0

    if-ne v6, v1, :cond_17

    invoke-static/range {v23 .. v23}, Landroidx/compose/animation/core/AnimatableKt;->a(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v28, v6

    check-cast v28, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_18

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v6, Landroidx/compose/runtime/MutableState;

    move-object/from16 v21, v6

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_19

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v6, Landroidx/compose/runtime/MutableState;

    move-object/from16 v22, v6

    const/4 v6, 0x3

    move/from16 v24, v10

    const/4 v7, 0x0

    invoke-static {v7, v5, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object v10

    invoke-static {v7, v5, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object v6

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;->c:Ljava/lang/String;

    if-eqz v4, :cond_1a

    iget-object v2, v4, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->a:Ljava/lang/String;

    goto :goto_c

    :cond_1a
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v25

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v26

    or-int v25, v25, v26

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v25, :cond_1c

    if-ne v8, v1, :cond_1b

    goto :goto_d

    :cond_1b
    move-object/from16 v25, v13

    goto :goto_e

    :cond_1c
    :goto_d
    new-instance v8, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$1$1;

    move-object/from16 v25, v13

    const/4 v13, 0x0

    invoke-direct {v8, v10, v6, v13}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_e
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v2, v8, v5}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1d

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object v7, v2

    check-cast v7, Landroidx/compose/runtime/MutableState;

    if-eqz v4, :cond_1e

    iget-object v2, v4, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->b:Ljava/lang/Integer;

    goto :goto_f

    :cond_1e
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v2, :cond_1f

    if-ne v8, v1, :cond_22

    :cond_1f
    if-eqz v4, :cond_20

    iget-object v2, v4, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->b:Ljava/lang/Integer;

    goto :goto_10

    :cond_20
    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_21

    sget v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/BottomScrollConstants;->b:F

    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v2

    goto :goto_11

    :cond_21
    sget v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/BottomScrollConstants;->a:F

    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v2

    :goto_11
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_23

    invoke-static/range {v23 .. v23}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v8, Landroidx/compose/runtime/MutableFloatState;

    sget-object v13, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_24

    move-object/from16 v26, v0

    move-object v0, v10

    :goto_12
    move/from16 v30, v2

    goto :goto_13

    :cond_24
    move-object/from16 v26, v0

    sget-object v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    move-object v0, v6

    goto :goto_12

    :goto_13
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_25

    new-instance v2, Lku0;

    move-object/from16 v31, v3

    const/4 v3, 0x7

    invoke-direct {v2, v3, v7}, Lku0;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_14

    :cond_25
    move-object/from16 v31, v3

    :goto_14
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/16 v3, 0x30

    invoke-static {v0, v2, v5, v3}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/helper/ThematicPlpHelperKt;->a(Landroidx/compose/foundation/gestures/ScrollableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_27

    if-ne v2, v1, :cond_26

    goto :goto_15

    :cond_26
    move-object v0, v2

    move-object v9, v4

    move-object/from16 v43, v6

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v39, v19

    move-object/from16 v40, v20

    move-object/from16 v41, v21

    move-object/from16 v42, v22

    move-object/from16 v38, v26

    move-object/from16 v4, v27

    move-object/from16 v37, v31

    move-object/from16 v2, p1

    move-object/from16 v31, v10

    move-object/from16 v26, v13

    move-object v13, v1

    move-object v10, v5

    move-object/from16 v1, v25

    move/from16 v5, v30

    move-object/from16 v25, v18

    goto :goto_16

    :cond_27
    :goto_15
    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;

    move-object/from16 v2, p1

    move-object/from16 v3, p10

    move-object v9, v4

    move-object/from16 v43, v6

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v39, v19

    move-object/from16 v40, v20

    move-object/from16 v41, v21

    move-object/from16 v42, v22

    move-object/from16 v6, v25

    move-object/from16 v38, v26

    move-object/from16 v4, v27

    move-object/from16 v37, v31

    move-object/from16 v31, v10

    move-object/from16 v26, v13

    move-object/from16 v25, v18

    move-object v13, v1

    move-object v10, v5

    move-object v1, v8

    move/from16 v5, v30

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;-><init>(Landroidx/compose/runtime/MutableFloatState;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;FLandroidx/compose/ui/hapticfeedback/HapticFeedback;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V

    move-object v8, v1

    move-object v1, v6

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_16
    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;

    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v15, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v16, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v44, v5

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object/from16 v45, v8

    const/4 v8, 0x0

    invoke-static {v7, v5, v10, v8}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v5

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v10, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v16, v7

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v25, :cond_5d

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v46, v15

    iget-boolean v15, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_28

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_17

    :cond_28
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_17
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v5, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v8, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v47, v1

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v8, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v8}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v27, v4

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/high16 v48, 0x380000

    move-object/from16 v30, v4

    const/4 v4, 0x1

    if-le v6, v4, :cond_2e

    const v4, 0x2c7ce6f9

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;->d:Ljava/util/List;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;->c:Ljava/lang/String;

    move-object/from16 v16, v4

    and-int v4, v34, v48

    move-object/from16 v17, v6

    const/high16 v6, 0x100000

    if-ne v4, v6, :cond_29

    const/4 v4, 0x1

    goto :goto_18

    :cond_29
    const/4 v4, 0x0

    :goto_18
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_2a

    if-ne v6, v13, :cond_2b

    :cond_2a
    new-instance v6, Lv9;

    const/4 v4, 0x6

    invoke-direct {v6, v12, v4}, Lv9;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2b
    move-object/from16 v18, v6

    check-cast v18, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v13, :cond_2c

    new-instance v4, Lz21;

    const/16 v6, 0x16

    invoke-direct {v4, v6}, Lz21;-><init>(I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2c
    move-object/from16 v19, v4

    check-cast v19, Lkotlin/jvm/functions/Function1;

    instance-of v4, v11, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$OverlayOpen;

    if-eqz v4, :cond_2d

    new-instance v49, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;

    const/16 v53, 0x3

    const/16 v54, 0x0

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    invoke-direct/range {v49 .. v54}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;-><init>(FJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v20, v49

    goto :goto_19

    :cond_2d
    const/16 v20, 0x0

    :goto_19
    const/16 v22, 0xc00

    move-object/from16 v21, v10

    invoke-static/range {v16 .. v22}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpHeaderKt;->c(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;Landroidx/compose/runtime/Composer;I)V

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :cond_2e
    const/4 v4, 0x0

    const v6, 0x2c844730

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1a
    iget-boolean v4, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;->g:Z

    sget-object v6, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    if-eqz v4, :cond_30

    const v0, 0x2c850ff6

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v4, v32

    invoke-direct {v0, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->d:F

    invoke-static {v1, v3, v4}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v3

    invoke-static {v0, v3, v4, v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_2f

    new-instance v0, Ll31;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ll31;-><init>(I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2f
    move-object/from16 v18, v0

    check-cast v18, Lkotlin/jvm/functions/Function0;

    const/16 v19, 0xe

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v16

    const/16 v20, 0x0

    const/16 v21, 0x6

    const/16 v18, 0x0

    move-object/from16 v19, v10

    invoke-static/range {v16 .. v21}, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderStyle;ZLandroidx/compose/runtime/Composer;II)V

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v13, p11

    move-object/from16 v12, p12

    :goto_1b
    const/4 v4, 0x1

    goto/16 :goto_3d

    :cond_30
    move-object/from16 v4, v32

    move-object/from16 v16, v14

    check-cast v16, Ljava/util/Collection;

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_5c

    if-eqz v9, :cond_5c

    const v11, 0x2c8f73e8

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v9, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->c:Ljava/util/List;

    iget-object v12, v9, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->a:Ljava/lang/String;

    invoke-static {v12, v14}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt;->c(Ljava/lang/String;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    move-result-object v12

    invoke-interface/range {v39 .. v39}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    check-cast v9, Landroidx/compose/ui/unit/Dp;

    if-eqz v9, :cond_31

    iget v9, v9, Landroidx/compose/ui/unit/Dp;->b:F

    move/from16 v23, v9

    goto :goto_1c

    :cond_31
    sget-object v9, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    :goto_1c
    add-float v9, v23, v24

    sget-object v16, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v4, v3}, Lpq0;->i(Ljava/lang/String;Landroidx/compose/foundation/layout/FillElement;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move/from16 v16, v9

    if-eqz v12, :cond_32

    iget-object v9, v12, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->e:Ljava/lang/String;

    if-eqz v9, :cond_32

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v32, v11

    move-object/from16 v49, v12

    invoke-static {v9}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v11

    new-instance v9, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v9, v11, v12}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    goto :goto_1d

    :cond_32
    move-object/from16 v32, v11

    move-object/from16 v49, v12

    const/4 v9, 0x0

    :goto_1d
    if-nez v9, :cond_33

    const v9, -0x40a0695d

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v11, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    const/4 v9, 0x0

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1e

    :cond_33
    const/4 v11, 0x0

    const v12, -0x40a07788

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v11, v9, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_1e
    invoke-static {v3, v11, v12, v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v0, v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_34

    new-instance v3, Lz21;

    const/16 v6, 0x17

    invoke-direct {v3, v6}, Lz21;-><init>(I)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_34
    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v9, 0x0

    invoke-static {v0, v9, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v3, v9}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v10, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v25, :cond_5b

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_35

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1f

    :cond_35
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1f
    invoke-static {v10, v3, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v9, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6, v10, v1, v10, v8}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v1, v30

    invoke-static {v10, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v26

    move-object/from16 v1, v37

    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModesKt;->a(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)F

    move-result v3

    invoke-static {v0, v3}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;->a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    invoke-interface/range {v40 .. v40}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v13, :cond_36

    new-instance v5, Lku0;

    const/16 v6, 0x8

    move-object/from16 v7, v41

    invoke-direct {v5, v6, v7}, Lku0;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_20

    :cond_36
    move-object/from16 v7, v41

    :goto_20
    move-object/from16 v19, v5

    check-cast v19, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    const/16 v11, 0x9

    if-ne v5, v13, :cond_37

    new-instance v5, Lku0;

    move-object/from16 v6, v42

    invoke-direct {v5, v11, v6}, Lku0;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_21

    :cond_37
    move-object/from16 v6, v42

    :goto_21
    move-object/from16 v22, v5

    check-cast v22, Lkotlin/jvm/functions/Function1;

    const/high16 v12, 0x70000

    and-int v5, v34, v12

    const/high16 v8, 0x20000

    if-ne v5, v8, :cond_38

    const/4 v8, 0x1

    goto :goto_22

    :cond_38
    const/4 v8, 0x0

    :goto_22
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    const/16 v15, 0x19

    if-nez v8, :cond_3a

    if-ne v9, v13, :cond_39

    goto :goto_23

    :cond_39
    move-object/from16 v8, p5

    goto :goto_24

    :cond_3a
    :goto_23
    new-instance v9, Ltf0;

    move-object/from16 v8, p5

    invoke-direct {v9, v8, v15}, Ltf0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_24
    move-object/from16 v25, v9

    check-cast v25, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v13, :cond_3b

    new-instance v9, Lku0;

    move/from16 v37, v11

    const/16 v11, 0xa

    move/from16 v41, v12

    move-object/from16 v12, v40

    invoke-direct {v9, v11, v12}, Lku0;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_25

    :cond_3b
    move/from16 v37, v11

    move/from16 v41, v12

    move-object/from16 v12, v40

    :goto_25
    move-object/from16 v30, v9

    check-cast v30, Lkotlin/jvm/functions/Function1;

    move-object/from16 v9, v27

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    move-object/from16 v15, v31

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    or-int v11, v11, v18

    move-object/from16 v20, v3

    move-object/from16 v3, v43

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    or-int v11, v11, v18

    move/from16 v18, v11

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v18, :cond_3d

    if-ne v11, v13, :cond_3c

    goto :goto_26

    :cond_3c
    move-object/from16 v42, v14

    goto :goto_27

    :cond_3d
    :goto_26
    new-instance v11, La41;

    move-object/from16 v42, v14

    const/4 v14, 0x0

    invoke-direct {v11, v9, v15, v3, v14}, La41;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridState;I)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_27
    move-object/from16 v24, v11

    check-cast v24, Lkotlin/jvm/functions/Function0;

    and-int v11, v35, v41

    const/high16 v14, 0x20000

    if-ne v11, v14, :cond_3e

    const/4 v11, 0x1

    goto :goto_28

    :cond_3e
    const/4 v11, 0x0

    :goto_28
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v11, v14

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v11, :cond_40

    if-ne v14, v13, :cond_3f

    goto :goto_29

    :cond_3f
    move-object/from16 v11, p15

    move-object/from16 v27, v9

    goto :goto_2a

    :cond_40
    :goto_29
    new-instance v14, Lz31;

    move-object/from16 v11, p15

    move-object/from16 v27, v9

    const/4 v9, 0x0

    invoke-direct {v14, v11, v2, v9}, Lz31;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;I)V

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_2a
    move-object/from16 v26, v14

    check-cast v26, Lkotlin/jvm/functions/Function0;

    new-instance v18, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;

    const v21, 0x3f70a3d7    # 0.94f

    move-object/from16 v56, v29

    move-object/from16 v29, v28

    move-object/from16 v28, v56

    invoke-direct/range {v18 .. v30}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;FLkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v14, v18

    move-object/from16 v9, v27

    move-object/from16 v43, v28

    move-object/from16 v11, v32

    move-object/from16 v32, v29

    invoke-static {v0, v11, v14}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v13, :cond_41

    new-instance v14, Lz21;

    move-object/from16 v31, v15

    const/16 v15, 0x18

    invoke-direct {v14, v15}, Lz21;-><init>(I)V

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_41
    move-object/from16 v31, v15

    :goto_2b
    check-cast v14, Lkotlin/jvm/functions/Function1;

    const/4 v15, 0x0

    invoke-static {v0, v15, v14}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual/range {v43 .. v43}, Landroidx/compose/animation/core/Animatable;->d()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v20

    invoke-interface/range {v45 .. v45}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v22

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    shr-int/lit8 v14, v34, 0x15

    and-int/lit8 v14, v14, 0x7e

    shr-int/lit8 v15, v35, 0x3

    and-int/lit16 v15, v15, 0x380

    or-int/2addr v14, v15

    const/16 v30, 0x0

    move-object/from16 v26, p7

    move-object/from16 v27, p8

    move-object/from16 v28, p13

    move-object/from16 v29, v10

    move/from16 v21, v16

    move-object/from16 v18, v17

    move-object/from16 v17, v31

    move/from16 v23, v44

    move-object/from16 v19, v49

    move-object/from16 v16, v0

    move/from16 v31, v14

    invoke-static/range {v16 .. v31}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridViewKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;FFFFZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v17

    move-object/from16 v17, v18

    move-object/from16 v0, v19

    move/from16 v16, v21

    new-instance v14, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v14, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v49, v4

    sget-object v4, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;

    invoke-static {v1, v4}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModesKt;->a(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)F

    move-result v1

    invoke-static {v14, v1}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;->a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v13, :cond_42

    new-instance v14, Lku0;

    move-object/from16 v20, v4

    const/16 v4, 0xc

    invoke-direct {v14, v4, v7}, Lku0;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_42
    move-object/from16 v20, v4

    :goto_2c
    move-object/from16 v19, v14

    check-cast v19, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v13, :cond_43

    new-instance v4, Lku0;

    const/16 v14, 0xd

    invoke-direct {v4, v14, v6}, Lku0;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_43
    move-object/from16 v22, v4

    check-cast v22, Lkotlin/jvm/functions/Function1;

    const/high16 v14, 0x20000

    if-ne v5, v14, :cond_44

    const/4 v4, 0x1

    goto :goto_2d

    :cond_44
    const/4 v4, 0x0

    :goto_2d
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v4, :cond_45

    if-ne v14, v13, :cond_46

    :cond_45
    new-instance v14, Ltf0;

    const/16 v4, 0x1a

    invoke-direct {v14, v8, v4}, Ltf0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_46
    move-object/from16 v25, v14

    check-cast v25, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v13, :cond_47

    new-instance v4, Lku0;

    const/16 v14, 0xe

    invoke-direct {v4, v14, v12}, Lku0;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_47
    move-object/from16 v30, v4

    check-cast v30, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v4, v14

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v4, v14

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v4, :cond_48

    if-ne v14, v13, :cond_49

    :cond_48
    new-instance v14, La41;

    const/4 v4, 0x1

    invoke-direct {v14, v9, v3, v15, v4}, La41;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridState;I)V

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_49
    move-object/from16 v24, v14

    check-cast v24, Lkotlin/jvm/functions/Function0;

    and-int v4, v35, v48

    const/high16 v14, 0x100000

    if-ne v4, v14, :cond_4a

    const/4 v4, 0x1

    goto :goto_2e

    :cond_4a
    const/4 v4, 0x0

    :goto_2e
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v4, v14

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v4, :cond_4c

    if-ne v14, v13, :cond_4b

    goto :goto_2f

    :cond_4b
    move-object/from16 v4, p16

    move-object/from16 v33, v3

    goto :goto_30

    :cond_4c
    :goto_2f
    new-instance v14, Lz31;

    move-object/from16 v4, p16

    move-object/from16 v33, v3

    const/4 v3, 0x1

    invoke-direct {v14, v4, v2, v3}, Lz31;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;I)V

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_30
    move-object/from16 v26, v14

    check-cast v26, Lkotlin/jvm/functions/Function0;

    new-instance v18, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;

    const v21, 0x3f87ae14    # 1.06f

    move-object/from16 v27, v9

    move-object/from16 v28, v32

    move-object/from16 v29, v43

    invoke-direct/range {v18 .. v30}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$handleZoomOnGrid$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;FLkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v14, v18

    move-object/from16 v4, v28

    move-object/from16 v3, v29

    invoke-static {v1, v11, v14}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v13, :cond_4d

    new-instance v11, Lz21;

    const/16 v14, 0x19

    invoke-direct {v11, v14}, Lz21;-><init>(I)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4d
    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    invoke-static {v1, v14, v11}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v0, :cond_4f

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->e:Ljava/lang/String;

    if-nez v0, :cond_4e

    goto :goto_32

    :cond_4e
    :goto_31
    move-object/from16 v19, v0

    goto :goto_33

    :cond_4f
    :goto_32
    const-string v0, ""

    goto :goto_31

    :goto_33
    invoke-virtual {v4}, Landroidx/compose/animation/core/Animatable;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v20

    invoke-interface/range {v45 .. v45}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v22

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    const/16 v30, 0x0

    move-object/from16 v26, p7

    move-object/from16 v27, p8

    move-object/from16 v28, p13

    move-object/from16 v29, v10

    move/from16 v21, v16

    move-object/from16 v18, v17

    move-object/from16 v17, v33

    move/from16 v23, v44

    move-object/from16 v16, v1

    invoke-static/range {v16 .. v31}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/RegularGridViewKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;Ljava/lang/String;FFFFZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v6, v17

    move-object/from16 v0, v18

    move-object/from16 v11, v29

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v7, v49

    invoke-direct {v1, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v1, v7}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->i:Landroidx/compose/ui/BiasAlignment;

    sget-object v10, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v10, v1, v7}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v21, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v1

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v7, v38

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v10, :cond_50

    if-ne v14, v13, :cond_51

    :cond_50
    new-instance v14, Lj1;

    move-object/from16 v10, v39

    const/4 v8, 0x6

    invoke-direct {v14, v7, v10, v8}, Lj1;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_51
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v14}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v13, :cond_52

    new-instance v7, Lz21;

    const/16 v8, 0x15

    invoke-direct {v7, v8}, Lz21;-><init>(I)V

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_52
    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    invoke-static {v1, v14, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    if-eqz v0, :cond_53

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->a:Ljava/lang/String;

    :goto_34
    move-object/from16 v14, v42

    goto :goto_35

    :cond_53
    const/4 v10, 0x0

    goto :goto_34

    :goto_35
    invoke-static {v10, v14}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt;->c(Ljava/lang/String;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    move-result-object v14

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;->a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->v:F

    move-object/from16 v7, v47

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    const/high16 v10, 0x20000

    if-ne v5, v10, :cond_54

    const/4 v5, 0x1

    goto :goto_36

    :cond_54
    const/4 v5, 0x0

    :goto_36
    or-int/2addr v5, v8

    const v17, 0xe000

    and-int v8, v35, v17

    const/16 v10, 0x4000

    if-ne v8, v10, :cond_55

    const/4 v8, 0x1

    goto :goto_37

    :cond_55
    const/4 v8, 0x0

    :goto_37
    or-int/2addr v5, v8

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_56

    if-ne v8, v13, :cond_57

    :cond_56
    move-object v5, v0

    goto :goto_38

    :cond_57
    move-object/from16 p0, v0

    move v15, v1

    move-object v1, v7

    const/16 v12, 0x20

    goto :goto_39

    :goto_38
    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;

    move-object/from16 v8, p5

    move-object/from16 p0, v5

    move-object v10, v12

    move-object v5, v15

    const/16 v12, 0x20

    move v15, v1

    move-object v1, v7

    move-object v7, v9

    move-object/from16 v9, p14

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;-><init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    move-object v9, v7

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v8, v0

    :goto_39
    move-object v7, v8

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    and-int/lit8 v2, v35, 0x70

    if-ne v2, v12, :cond_58

    const/4 v2, 0x1

    goto :goto_3a

    :cond_58
    const/4 v2, 0x0

    :goto_3a
    or-int/2addr v0, v2

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_5a

    if-ne v2, v13, :cond_59

    goto :goto_3b

    :cond_59
    move-object/from16 v13, p11

    move-object/from16 v12, p12

    goto :goto_3c

    :cond_5a
    :goto_3b
    new-instance v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/c;

    move-object/from16 v13, p11

    move-object/from16 v12, p12

    invoke-direct {v2, v1, v12, v9, v13}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/c;-><init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_3c
    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v0, v34, 0x6

    and-int v0, v0, v17

    shl-int/lit8 v1, v34, 0x3

    and-int v1, v1, v41

    or-int/2addr v0, v1

    shl-int/lit8 v1, v34, 0x9

    and-int v1, v1, v48

    or-int v10, v0, v1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v6, p3

    move/from16 v5, p4

    move-object v9, v11

    move-object v1, v14

    move v3, v15

    move-object/from16 v0, v16

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpToolBoxKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;FLcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v10, v9

    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_1b

    :cond_5b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v36, 0x0

    throw v36

    :cond_5c
    move-object/from16 v13, p11

    move-object/from16 v12, p12

    const/4 v14, 0x0

    const v0, 0x2d0fc828

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v10, v14}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt;->a(Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_1b

    :goto_3d
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_3e

    :cond_5d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v36, 0x0

    throw v36

    :cond_5e
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_5f
    move-object/from16 v13, p11

    move-object/from16 v12, p12

    move-object v10, v5

    move-object/from16 v46, v17

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_3e
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_60

    move-object v1, v0

    new-instance v0, Lfe;

    move-object v2, v13

    move-object v13, v12

    move-object v12, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p18

    move-object/from16 v55, v1

    move-object/from16 v1, v46

    invoke-direct/range {v0 .. v18}, Lfe;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    move-object/from16 v1, v55

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_60
    return-void
.end method

.method public static final c(Ljava/lang/String;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->a:Ljava/lang/String;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    return-object v0
.end method
