.class public abstract Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersContainerContentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "shouldTrackFiltersSwipe",
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
.method public static final a(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 43

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    const-string v1, "QuickAccessFiltersContainerContent"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v8, -0x2cc33c79

    move-object/from16 v9, p13

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    iget-object v9, v8, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    or-int/lit8 v10, p14, 0x6

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v11

    if-eqz v11, :cond_1

    const/16 v11, 0x20

    goto :goto_0

    :cond_1
    const/16 v11, 0x10

    :goto_0
    or-int/2addr v10, v11

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v11

    const/16 v16, 0x80

    if-eqz v11, :cond_2

    const/16 v11, 0x100

    goto :goto_1

    :cond_2
    move/from16 v11, v16

    :goto_1
    or-int/2addr v10, v11

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x800

    goto :goto_2

    :cond_3
    const/16 v11, 0x400

    :goto_2
    or-int/2addr v10, v11

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x4000

    goto :goto_3

    :cond_4
    const/16 v11, 0x2000

    :goto_3
    or-int/2addr v10, v11

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/high16 v11, 0x20000

    goto :goto_4

    :cond_5
    const/high16 v11, 0x10000

    :goto_4
    or-int/2addr v10, v11

    if-nez p6, :cond_6

    const/4 v11, -0x1

    goto :goto_5

    :cond_6
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    :goto_5
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v11

    if-eqz v11, :cond_7

    const/high16 v11, 0x100000

    goto :goto_6

    :cond_7
    const/high16 v11, 0x80000

    :goto_6
    or-int/2addr v10, v11

    move/from16 v11, p7

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-eqz v17, :cond_8

    const/high16 v17, 0x800000

    goto :goto_7

    :cond_8
    const/high16 v17, 0x400000

    :goto_7
    or-int v10, v10, v17

    move-object/from16 v14, p8

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/high16 v17, 0x4000000

    goto :goto_8

    :cond_9
    const/high16 v17, 0x2000000

    :goto_8
    or-int v10, v10, v17

    move-object/from16 v15, p9

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/high16 v17, 0x20000000

    goto :goto_9

    :cond_a
    const/high16 v17, 0x10000000

    :goto_9
    or-int v10, v10, v17

    move-object/from16 v17, v0

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    const/16 v19, 0x4

    goto :goto_a

    :cond_b
    const/16 v19, 0x2

    :goto_a
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v20, 0x20

    goto :goto_b

    :cond_c
    const/16 v20, 0x10

    :goto_b
    or-int v19, v19, v20

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    const/16 v16, 0x100

    :cond_d
    or-int v0, v19, v16

    const v16, 0x12492493

    and-int v3, v10, v16

    const v5, 0x12492492

    if-ne v3, v5, :cond_f

    and-int/lit16 v3, v0, 0x93

    const/16 v5, 0x92

    if-eq v3, v5, :cond_e

    goto :goto_c

    :cond_e
    const/4 v3, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v3, 0x1

    :goto_d
    and-int/lit8 v5, v10, 0x1

    invoke-virtual {v8, v5, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_3f

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    move-object/from16 v26, v9

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    and-int/lit8 v11, v10, 0x70

    const/16 v14, 0x20

    if-ne v11, v14, :cond_10

    const/4 v11, 0x1

    goto :goto_e

    :cond_10
    const/4 v11, 0x0

    :goto_e
    move/from16 v16, v11

    and-int/lit8 v11, v0, 0x70

    if-ne v11, v14, :cond_11

    const/4 v11, 0x1

    goto :goto_f

    :cond_11
    const/4 v11, 0x0

    :goto_f
    or-int v11, v16, v11

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    move/from16 v16, v11

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v7, 0x0

    if-nez v16, :cond_12

    if-ne v14, v11, :cond_13

    :cond_12
    new-instance v14, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersContainerContentKt$QuickAccessFiltersContainerContent$1$1;

    invoke-direct {v14, v2, v12, v7}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersContainerContentKt$QuickAccessFiltersContainerContent$1$1;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v9, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v14

    iget v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v21, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v9

    move/from16 v20, v14

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    xor-int/lit8 v14, p2, 0x1

    new-instance v7, Lxq0;

    const/4 v2, 0x1

    const/4 v12, 0x0

    invoke-direct {v7, v2, v12}, Lxq0;-><init>(IB)V

    invoke-static {v9, v14, v7, v8, v12}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v7, v9, v8, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v7

    iget-wide v14, v8, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v8, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v26, :cond_3e

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_14

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_14
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_10
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v7, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v12, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v9, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v38, v3

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v4, :cond_15

    iget-object v2, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel;

    :goto_11
    move-object/from16 v16, v14

    goto :goto_12

    :cond_15
    const/4 v2, 0x0

    goto :goto_11

    :goto_12
    instance-of v14, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;

    const/high16 v27, 0xe000000

    const/high16 v28, 0x1c00000

    if-eqz v14, :cond_20

    const v2, -0x4b1b5160

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v11, :cond_16

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v2, Landroidx/compose/runtime/MutableState;

    iget-object v14, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->a:Ljava/lang/String;

    move-object/from16 v29, v15

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v11, :cond_17

    new-instance v15, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersContainerContentKt$QuickAccessFiltersContainerContent$3$1$1;

    move-object/from16 v30, v3

    const/4 v3, 0x0

    invoke-direct {v15, v2, v3}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersContainerContentKt$QuickAccessFiltersContainerContent$3$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_13

    :cond_17
    move-object/from16 v30, v3

    :goto_13
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v14, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v14, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->a:Ljava/lang/String;

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel;

    move-object v15, v3

    check-cast v15, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;

    and-int v3, v10, v28

    move-object/from16 v31, v14

    const/high16 v14, 0x800000

    if-ne v3, v14, :cond_18

    const/4 v3, 0x1

    goto :goto_14

    :cond_18
    const/4 v3, 0x0

    :goto_14
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v3, v3, v17

    and-int v14, v10, v27

    move/from16 v17, v3

    const/high16 v3, 0x4000000

    if-ne v14, v3, :cond_19

    const/4 v14, 0x1

    goto :goto_15

    :cond_19
    const/4 v14, 0x0

    :goto_15
    or-int v14, v17, v14

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v14, v14, v17

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v14, :cond_1a

    if-ne v3, v11, :cond_1b

    :cond_1a
    new-instance v17, Ls0;

    const/16 v22, 0xc

    move/from16 v18, p7

    move-object/from16 v20, p8

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    invoke-direct/range {v17 .. v22}, Ls0;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v3, v17

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object/from16 v17, v3

    check-cast v17, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    and-int/lit16 v3, v0, 0x380

    const/16 v14, 0x100

    if-ne v3, v14, :cond_1c

    const/4 v3, 0x1

    goto :goto_16

    :cond_1c
    const/4 v3, 0x0

    :goto_16
    and-int/lit16 v14, v10, 0x1c00

    move/from16 p13, v0

    const/16 v0, 0x800

    if-ne v14, v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_17

    :cond_1d
    const/4 v0, 0x0

    :goto_17
    or-int/2addr v0, v3

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_1e

    if-ne v3, v11, :cond_1f

    :cond_1e
    new-instance v3, Lsm0;

    const/4 v0, 0x7

    invoke-direct {v3, v13, v4, v2, v0}, Lsm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    move-object/from16 v19, v3

    check-cast v19, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v0, v10, 0xf

    and-int/lit16 v0, v0, 0x380

    move/from16 v21, v0

    move-object/from16 v20, v8

    move-object/from16 v0, v16

    move-object/from16 v3, v29

    move-object/from16 v14, v31

    const/high16 v8, 0x4000000

    const/high16 v24, 0x800000

    move/from16 v16, p7

    invoke-static/range {v14 .. v21}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/SimpleFilterLineKt;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;ZLkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v14, v20

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v8, v24

    goto :goto_18

    :cond_20
    move/from16 p13, v0

    move-object/from16 v30, v3

    move-object v14, v8

    move-object v3, v15

    move-object/from16 v0, v16

    const/high16 v8, 0x800000

    const/4 v15, 0x0

    instance-of v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Range;

    if-eqz v2, :cond_21

    const v2, -0x4b088df3

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_18

    :cond_21
    const v2, -0x4b07663d

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_18
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v15

    iget v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    const/4 v8, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v8, v15, v4}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v2

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v15, 0x36

    invoke-static {v4, v8, v14, v15}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v4

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    iget-wide v5, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v14, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz v26, :cond_3d

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_22

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_19

    :cond_22
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_19
    invoke-static {v14, v4, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v14, v12, v14, v9}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v4, v30

    invoke-static {v14, v2, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/high16 v2, 0x3f000000    # 0.5f

    move-object/from16 v5, v38

    invoke-static {v5, v2}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v29

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/16 v33, 0x0

    const/16 v34, 0xa

    const/16 v31, 0x0

    move/from16 v30, v2

    move/from16 v32, v6

    invoke-static/range {v29 .. v34}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v15, 0x30

    invoke-static {v6, v8, v14, v15}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v15

    move-object/from16 v16, v6

    iget-wide v5, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v14, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz v26, :cond_3c

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    move/from16 v39, v10

    iget-boolean v10, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_23

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1a

    :cond_23
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1a
    invoke-static {v14, v15, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v14, v12, v14, v9}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v14, v2, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v2, p4

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    const v2, -0x75dff32f

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_2f

    const v2, -0x75df928d

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    const-string v10, "QAF_BooleanFilterItem_view"

    invoke-static {v1, v10}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v11, :cond_24

    new-instance v15, Lyn0;

    const/high16 v40, 0x70000

    const/16 v5, 0x11

    invoke-direct {v15, v5}, Lyn0;-><init>(I)V

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_1b

    :cond_24
    const/high16 v40, 0x70000

    :goto_1b
    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x1

    invoke-static {v10, v5, v15}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    iget-boolean v5, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->d:Z

    iget-boolean v15, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->e:Z

    sget-object v17, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Landroidx/compose/ui/semantics/Role;->d:I

    new-instance v13, Landroidx/compose/ui/semantics/Role;

    invoke-direct {v13, v6}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    and-int v6, v39, v28

    move-object/from16 v28, v8

    const/high16 v8, 0x800000

    if-ne v6, v8, :cond_25

    const/16 p13, 0x1

    :goto_1c
    move-object/from16 v8, v19

    goto :goto_1d

    :cond_25
    const/16 p13, 0x0

    goto :goto_1c

    :goto_1d
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v17, p13, v17

    move-object/from16 v19, v8

    and-int v8, v39, v27

    move-object/from16 v41, v1

    const/high16 v1, 0x4000000

    if-ne v8, v1, :cond_26

    const/4 v1, 0x1

    goto :goto_1e

    :cond_26
    const/4 v1, 0x0

    :goto_1e
    or-int v1, v17, v1

    move/from16 p13, v1

    move-object/from16 v1, v21

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v17, p13, v17

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v17, v17, v18

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v17, :cond_28

    if-ne v1, v11, :cond_27

    goto :goto_1f

    :cond_27
    move-object/from16 v42, v11

    move-object v11, v2

    move-object/from16 v2, v19

    goto :goto_20

    :cond_28
    :goto_1f
    new-instance v17, Lyq0;

    const/16 v23, 0x0

    move-object/from16 v18, v2

    move-object/from16 v20, v19

    move-object/from16 v22, v21

    move/from16 v19, p7

    move-object/from16 v21, p8

    invoke-direct/range {v17 .. v23}, Lyq0;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;ZLandroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function2;Landroid/content/Context;I)V

    move-object/from16 v42, v11

    move-object/from16 v1, v17

    move-object/from16 v11, v18

    move-object/from16 v2, v20

    move-object/from16 v21, v22

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_20
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v5, v15, v13, v1}, Landroidx/compose/foundation/selection/ToggleableKt;->b(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    move-object/from16 v10, v16

    const/4 v15, 0x0

    invoke-static {v10, v5, v14, v15}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v5

    move-object/from16 v18, v11

    iget-wide v10, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v14, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v26, :cond_2e

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_29

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_21

    :cond_29
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_21
    invoke-static {v14, v5, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v11, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v14, v12, v14, v9}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v14, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v11, v18

    iget-boolean v0, v11, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, -0x5a64ba7b

    invoke-virtual {v14, v1, v0}, Landroidx/compose/runtime/GapComposer;->A(ILjava/lang/Object;)V

    const-string v0, "QAF_BooleanFilterSwitchButtonItem_button"

    const/4 v1, 0x6

    move-object/from16 v5, v38

    const/4 v3, 0x0

    invoke-static {v5, v0, v3, v1}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-boolean v15, v11, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->e:Z

    iget-boolean v1, v11, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->d:Z

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    const/high16 v4, 0x800000

    if-ne v6, v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_22

    :cond_2a
    const/4 v4, 0x0

    :goto_22
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    const/high16 v6, 0x4000000

    if-ne v8, v6, :cond_2b

    const/4 v6, 0x1

    goto :goto_23

    :cond_2b
    const/4 v6, 0x0

    :goto_23
    or-int/2addr v4, v6

    move-object/from16 v6, v21

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v4, v7

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v4, v7

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_2c

    move-object/from16 v4, v42

    if-ne v7, v4, :cond_2d

    goto :goto_24

    :cond_2c
    move-object/from16 v4, v42

    :goto_24
    new-instance v17, Lyq0;

    const/16 v23, 0x1

    move/from16 v19, p7

    move-object/from16 v21, p8

    move-object/from16 v20, v2

    move-object/from16 v22, v6

    move-object/from16 v18, v11

    invoke-direct/range {v17 .. v23}, Lyq0;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;ZLandroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function2;Landroid/content/Context;I)V

    move-object/from16 v7, v17

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2d
    move-object/from16 v18, v7

    check-cast v18, Lkotlin/jvm/functions/Function1;

    const/16 v20, 0xc00

    const/16 v21, 0x0

    move/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v19, v14

    move-object v14, v0

    invoke-static/range {v14 .. v21}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchKt;->a(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v14, v19

    move-object/from16 v0, v41

    const/4 v15, 0x0

    invoke-static {v14, v15, v0}, Lo60;->f(Landroidx/compose/runtime/GapComposer;ZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v16

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v20, 0x0

    const/16 v21, 0xe

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v1

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    move-object/from16 v3, v28

    invoke-virtual {v2, v1, v3}, Landroidx/compose/foundation/layout/RowScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v2, "QAF_BooleanFilterNameItem_text"

    invoke-static {v1, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    iget-object v1, v11, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->b:Ljava/lang/String;

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->n:J

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    const/16 v35, 0x0

    const v36, 0x1fff8

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x0

    move-wide/from16 v16, v2

    move-object/from16 v32, v6

    move-object/from16 v33, v14

    move-object v14, v1

    invoke-static/range {v14 .. v36}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v14, v33

    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v7, p6

    goto/16 :goto_27

    :cond_2e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v3, 0x0

    throw v3

    :cond_2f
    move-object v0, v1

    move-object v4, v11

    move-object/from16 v5, v38

    const/4 v3, 0x0

    const/high16 v40, 0x70000

    const v1, -0x75c17426

    const-string v2, "QAF_MoreFilters_button"

    invoke-static {v14, v1, v0, v2}, Ln00;->d(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v9, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v10, 0x0

    const/16 v11, 0xb

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->x(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_30

    new-instance v2, Lyn0;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lyn0;-><init>(I)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_30
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v15, 0x0

    invoke-static {v1, v15, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v2, 0x7f140c45

    invoke-static {v14, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v15

    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->MORES_FILTERS:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    move-object/from16 v7, p6

    if-ne v7, v2, :cond_31

    const/16 v17, 0x1

    goto :goto_25

    :cond_31
    const/16 v17, 0x0

    :goto_25
    move-object/from16 v2, p4

    check-cast v2, Ljava/lang/Iterable;

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_33

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_32
    const/16 v18, 0x0

    goto :goto_26

    :cond_33
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->d:Z

    if-eqz v3, :cond_34

    const/16 v18, 0x1

    :goto_26
    shl-int/lit8 v2, p13, 0xf

    and-int v2, v2, v40

    or-int/lit16 v2, v2, 0x180

    const-string v16, "QAF_MoreFiltersName_text"

    move-object/from16 v19, p10

    move/from16 v21, v2

    move-object/from16 v20, v14

    move-object v14, v1

    invoke-static/range {v14 .. v21}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersDropdownKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v14, v20

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_27
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_28
    const/4 v2, 0x1

    goto :goto_29

    :cond_35
    move-object/from16 v7, p6

    move-object v0, v1

    move-object v4, v11

    move-object/from16 v5, v38

    const/4 v15, 0x0

    const/high16 v40, 0x70000

    const v1, -0x75b49aa3

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_28

    :goto_29
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v1, p5

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    const v1, -0x1c8e8902

    const-string v2, "QAF_SortByFiltersItem_button"

    invoke-static {v14, v1, v0, v2}, Ln00;->d(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v11, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v12, 0x0

    const/16 v13, 0xb

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->x(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_36

    new-instance v1, Lyn0;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lyn0;-><init>(I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_36
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v15, 0x0

    invoke-static {v0, v15, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, 0x7f14125a

    invoke-static {v14, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v15

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->SORT_BY:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    if-ne v7, v1, :cond_37

    const/16 v17, 0x1

    goto :goto_2a

    :cond_37
    const/16 v17, 0x0

    :goto_2a
    move-object/from16 v1, p5

    check-cast v1, Ljava/lang/Iterable;

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_39

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_38
    const/16 v18, 0x0

    goto :goto_2b

    :cond_39
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;->c:Z

    if-eqz v2, :cond_3a

    const/16 v18, 0x1

    :goto_2b
    shr-int/lit8 v1, v39, 0xc

    and-int v1, v1, v40

    or-int/lit16 v1, v1, 0x180

    const-string v16, "QAF_SortByFiltersItem_text"

    move-object/from16 v19, p9

    move/from16 v21, v1

    move-object/from16 v20, v14

    move-object v14, v0

    invoke-static/range {v14 .. v21}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersDropdownKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v14, v20

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2c
    const/4 v2, 0x1

    goto :goto_2d

    :cond_3b
    const/4 v15, 0x0

    const v0, -0x1c83f4bf

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2c

    :goto_2d
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object v1, v5

    goto :goto_2e

    :cond_3c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v37, 0x0

    throw v37

    :cond_3d
    const/16 v37, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v37

    :cond_3e
    const/16 v37, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v37

    :cond_3f
    move-object/from16 v7, p6

    move-object v14, v8

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v1, v17

    :goto_2e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_40

    new-instance v0, Lzq0;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lzq0;-><init>(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_40
    return-void
.end method

.method public static final b(ZLandroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function2;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;)V
    .locals 0

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    iget-object p0, p4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->c:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    sget-object p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterType;->BOOLEAN:Lcom/vuitton/android/presentation/screen/filter/model/FilterType;

    invoke-interface {p2, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x7f140336

    invoke-virtual {p3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p0}, Lcom/vuitton/android/presentation/utils/AccessibilityUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
