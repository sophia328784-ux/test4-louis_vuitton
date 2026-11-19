.class public abstract Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u00a8\u0006\u0005\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0004\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "skipInitialAnimation",
        "skipActiveFiltersAnimation",
        "isUserInteractionEnabled",
        "isFirstCategoryFocusedForAccessibility",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;ZZZFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v10, p2

    move/from16 v6, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v8, p9

    move-object/from16 v14, p10

    move-object/from16 v3, p11

    move-object/from16 v15, p12

    move/from16 v7, p14

    const-string v9, "QuickAccessFiltersEntryPoint-AlbwjTQ"

    if-eqz v0, :cond_0

    invoke-static {v0, v9}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->a:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, -0x315246b7

    move-object/from16 v5, p13

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    iget-object v5, v4, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v17, v5

    if-eqz v16, :cond_1

    const/16 v16, 0x4

    goto :goto_0

    :cond_1
    const/16 v16, 0x2

    :goto_0
    or-int v16, v7, v16

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    const/16 v19, 0x10

    if-eqz v18, :cond_2

    const/16 v18, 0x20

    goto :goto_1

    :cond_2
    move/from16 v18, v19

    :goto_1
    or-int v16, v16, v18

    and-int/lit16 v5, v7, 0x180

    const/16 v20, 0x80

    move/from16 v21, v5

    if-nez v21, :cond_4

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v21, 0x100

    goto :goto_2

    :cond_3
    move/from16 v21, v20

    :goto_2
    or-int v16, v16, v21

    :cond_4
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v21

    const/16 v22, 0x400

    if-eqz v21, :cond_5

    const/16 v21, 0x800

    goto :goto_3

    :cond_5
    move/from16 v21, v22

    :goto_3
    or-int v16, v16, v21

    const/high16 v21, 0x30000

    and-int v21, v7, v21

    if-nez v21, :cond_7

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v21

    if-eqz v21, :cond_6

    const/high16 v21, 0x20000

    goto :goto_4

    :cond_6
    const/high16 v21, 0x10000

    :goto_4
    or-int v16, v16, v21

    :cond_7
    and-int/lit8 v21, p15, 0x40

    move/from16 v5, p5

    if-nez v21, :cond_8

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v25

    if-eqz v25, :cond_8

    const/high16 v25, 0x100000

    goto :goto_5

    :cond_8
    const/high16 v25, 0x80000

    :goto_5
    or-int v16, v16, v25

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    const/high16 v25, 0x800000

    goto :goto_6

    :cond_9
    const/high16 v25, 0x400000

    :goto_6
    or-int v16, v16, v25

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    const/high16 v25, 0x4000000

    goto :goto_7

    :cond_a
    const/high16 v25, 0x2000000

    :goto_7
    or-int v16, v16, v25

    move-object/from16 v5, p8

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    const/high16 v26, 0x20000000

    goto :goto_8

    :cond_b
    const/high16 v26, 0x10000000

    :goto_8
    or-int v16, v16, v26

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    const/16 v26, 0x4

    goto :goto_9

    :cond_c
    const/16 v26, 0x2

    :goto_9
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    const/16 v19, 0x20

    :cond_d
    or-int v19, v26, v19

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    const/16 v20, 0x100

    :cond_e
    or-int v19, v19, v20

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    const/16 v22, 0x800

    :cond_f
    or-int v5, v19, v22

    const v19, 0x12492493

    move-object/from16 v22, v0

    and-int v0, v16, v19

    move-object/from16 v19, v1

    const v1, 0x12492492

    if-ne v0, v1, :cond_11

    and-int/lit16 v0, v5, 0x493

    const/16 v1, 0x492

    if-eq v0, v1, :cond_10

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    goto :goto_b

    :cond_11
    :goto_a
    const/4 v0, 0x1

    :goto_b
    and-int/lit8 v1, v16, 0x1

    invoke-virtual {v4, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v7, 0x1

    const v1, -0x380001

    if-eqz v0, :cond_14

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v0, p15, 0x40

    if-eqz v0, :cond_13

    and-int v16, v16, v1

    :cond_13
    move/from16 v0, p5

    goto :goto_d

    :cond_14
    :goto_c
    and-int/lit8 v0, p15, 0x40

    if-eqz v0, :cond_13

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    and-int v16, v16, v1

    :goto_d
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v10, :cond_16

    if-eqz p2, :cond_15

    const/4 v1, 0x0

    goto :goto_e

    :cond_15
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_e
    invoke-static {v1}, Landroidx/compose/animation/core/AnimatableKt;->a(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v1, Landroidx/compose/animation/core/Animatable;

    move/from16 v26, v0

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_17

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v0, Landroidx/compose/runtime/MutableState;

    move-object/from16 v27, v0

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_18

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object/from16 v28, v0

    check-cast v28, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_19

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object/from16 v29, v0

    check-cast v29, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_1a

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v4}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v30, v0

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    move-object/from16 v31, v0

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_1b

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object/from16 v32, v0

    check-cast v32, Landroidx/compose/runtime/MutableState;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v33

    and-int/lit16 v11, v5, 0x380

    move-object/from16 v34, v0

    const/16 v0, 0x100

    if-ne v11, v0, :cond_1c

    const/16 v23, 0x1

    goto :goto_f

    :cond_1c
    const/16 v23, 0x0

    :goto_f
    or-int v23, v33, v23

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v33

    or-int v23, v23, v33

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v23, :cond_1e

    if-ne v0, v10, :cond_1d

    goto :goto_10

    :cond_1d
    move-object/from16 v6, v30

    move-object/from16 v30, v17

    move-object/from16 v17, v6

    move-object v14, v4

    move v13, v5

    move/from16 v6, v16

    move-object/from16 v12, v19

    move/from16 v35, v26

    move-object/from16 v4, v27

    move-object/from16 v18, v31

    move-object/from16 v7, v34

    move-object/from16 v16, v9

    move-object/from16 v31, v22

    const/16 v9, 0x100

    goto :goto_11

    :cond_1e
    :goto_10
    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$1$1;

    move/from16 v23, v5

    const/4 v5, 0x0

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    move-object/from16 v6, v30

    move-object/from16 v30, v17

    move-object/from16 v17, v6

    move-object v14, v4

    move/from16 v6, v16

    move-object/from16 v12, v19

    move/from16 v13, v23

    move/from16 v35, v26

    move-object/from16 v4, v27

    move-object/from16 v18, v31

    move-object/from16 v7, v34

    move-object/from16 v16, v9

    move-object/from16 v31, v22

    const/16 v9, 0x100

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$1$1;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v2, v3

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_11
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v7, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v0, v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-ne v11, v9, :cond_1f

    const/4 v3, 0x1

    goto :goto_12

    :cond_1f
    const/4 v3, 0x0

    :goto_12
    or-int/2addr v0, v3

    and-int/lit16 v3, v6, 0x1c00

    const/16 v5, 0x800

    if-ne v3, v5, :cond_20

    const/4 v3, 0x1

    goto :goto_13

    :cond_20
    const/4 v3, 0x0

    :goto_13
    or-int/2addr v0, v3

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_22

    if-ne v3, v10, :cond_21

    goto :goto_14

    :cond_21
    move-object/from16 v39, v1

    move-object v0, v3

    move-object/from16 v3, p11

    goto :goto_15

    :cond_22
    :goto_14
    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;

    const/4 v5, 0x0

    move/from16 v3, p3

    move-object/from16 v39, v1

    move-object v1, v2

    move-object/from16 v2, p11

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    move-object v2, v1

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_15
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v7, v0, v14}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    if-ne v11, v9, :cond_23

    const/4 v0, 0x1

    goto :goto_16

    :cond_23
    const/4 v0, 0x0

    :goto_16
    and-int/lit8 v1, v13, 0xe

    const/4 v5, 0x4

    if-ne v1, v5, :cond_24

    const/4 v7, 0x1

    goto :goto_17

    :cond_24
    const/4 v7, 0x0

    :goto_17
    or-int/2addr v0, v7

    and-int/lit16 v7, v13, 0x1c00

    const/16 v5, 0x800

    if-ne v7, v5, :cond_25

    const/4 v5, 0x1

    goto :goto_18

    :cond_25
    const/4 v5, 0x0

    :goto_18
    or-int/2addr v0, v5

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_26

    if-ne v5, v10, :cond_27

    :cond_26
    new-instance v5, Lsm0;

    const/16 v0, 0x8

    invoke-direct {v5, v3, v8, v15, v0}, Lsm0;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v7, v7, v18

    const/high16 v18, 0x70000000

    and-int v9, v6, v18

    move-object/from16 v18, v0

    const/high16 v0, 0x20000000

    if-ne v9, v0, :cond_28

    const/4 v0, 0x1

    goto :goto_19

    :cond_28
    const/4 v0, 0x0

    :goto_19
    or-int/2addr v0, v7

    move-object/from16 v7, v17

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v0, v9

    const/16 v9, 0x100

    if-ne v11, v9, :cond_29

    const/16 v17, 0x1

    goto :goto_1a

    :cond_29
    const/16 v17, 0x0

    :goto_1a
    or-int v0, v0, v17

    const/4 v9, 0x4

    if-ne v1, v9, :cond_2a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_2a
    const/4 v1, 0x0

    :goto_1b
    or-int/2addr v0, v1

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2c

    if-ne v1, v10, :cond_2b

    goto :goto_1c

    :cond_2b
    move-object v0, v1

    move-object v9, v4

    move-object v4, v7

    move/from16 v23, v13

    move-object/from16 v40, v16

    move-object/from16 v1, v18

    move-object/from16 v17, v28

    move-object/from16 v8, v32

    const/16 v15, 0x100

    move-object v13, v5

    move/from16 v16, v6

    goto :goto_1d

    :cond_2c
    :goto_1c
    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;

    move/from16 v23, v13

    move-object/from16 v40, v16

    move-object/from16 v1, v18

    move-object/from16 v9, v32

    const/16 v15, 0x100

    move-object v13, v5

    move/from16 v16, v6

    move-object/from16 v6, v28

    move-object v5, v4

    move-object v4, v7

    move-object v7, v3

    move-object/from16 v3, p8

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;-><init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v17, v6

    move-object v8, v9

    move-object v9, v5

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1d
    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    if-ne v11, v15, :cond_2d

    const/4 v3, 0x1

    goto :goto_1e

    :cond_2d
    const/4 v3, 0x0

    :goto_1e
    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int v3, v16, v3

    const/high16 v6, 0x20000

    if-ne v3, v6, :cond_2e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_2e
    const/4 v3, 0x0

    :goto_1f
    or-int/2addr v0, v3

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_30

    if-ne v3, v10, :cond_2f

    goto :goto_20

    :cond_2f
    move-object v13, v5

    move-object v1, v8

    move-object/from16 v8, v29

    goto :goto_21

    :cond_30
    :goto_20
    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;

    move-object/from16 v3, p11

    move-object v6, v13

    move-object/from16 v7, v29

    move-object v13, v5

    move-object v5, v2

    move-object v2, v4

    move/from16 v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;-><init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    move-object v4, v2

    move-object v2, v5

    move-object v1, v8

    move-object v8, v7

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_21
    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    const/4 v15, 0x3

    if-nez v5, :cond_31

    if-ne v6, v10, :cond_32

    :cond_31
    new-instance v6, Lsa;

    invoke-direct {v6, v0, v15}, Lsa;-><init>(Landroidx/compose/animation/core/Animatable;I)V

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_32
    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, v31

    invoke-static {v0, v6}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v15, 0x0

    invoke-static {v6, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    move-object/from16 v28, v3

    move-object v15, v4

    iget-wide v3, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v14, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v18, v3

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move-object/from16 v29, v9

    if-eqz v30, :cond_4d

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    const/16 v32, 0x0

    iget-boolean v9, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_33

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_22

    :cond_33
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_22
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v0, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v4, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v18, v15

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v4, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v34, v13

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v5, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    if-eqz p3, :cond_41

    move-object/from16 v36, v1

    const v1, 0x4ba21c7c    # 2.1248248E7f

    move/from16 v19, v11

    move-object/from16 v11, v40

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v14, v1, v11, v7}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->i:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v5, v1, v7}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 p5, v8

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v10, :cond_34

    new-instance v8, Lqo;

    move-object/from16 v37, v10

    const/4 v10, 0x2

    invoke-direct {v8, v10}, Lqo;-><init>(I)V

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_23

    :cond_34
    move-object/from16 v37, v10

    const/4 v10, 0x2

    :goto_23
    check-cast v8, Lkotlin/jvm/functions/Function3;

    invoke-static {v1, v8}, Landroidx/compose/ui/layout/LayoutModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v8, 0x0

    invoke-static {v6, v8}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    move-object/from16 v38, v5

    move-object v8, v6

    iget-wide v5, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v14, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v30, :cond_40

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v39, v8

    iget-boolean v8, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_35

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_24

    :cond_35
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_24
    invoke-static {v14, v10, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v6, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v14, v15, v14, v4}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v14, v1, v13, v11}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    move-object/from16 v5, v38

    invoke-virtual {v5, v1, v7}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    xor-int/lit8 v6, p4, 0x1

    new-instance v7, Lxq0;

    const/4 v8, 0x0

    const/4 v10, 0x2

    invoke-direct {v7, v10, v8}, Lxq0;-><init>(IB)V

    invoke-static {v1, v6, v7, v14, v8}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/16 v6, 0x30

    const/4 v7, 0x1

    invoke-static {v6, v14, v1, v7}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersBackGradientKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Z)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v5, v1, v6}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v6, "QAF_ActiveFilters_view"

    invoke-static {v1, v6}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v6, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;->OpenActiveFiltersAnimation:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    if-ne v12, v6, :cond_36

    move-object/from16 v6, v17

    const/16 v17, 0x1

    goto :goto_25

    :cond_36
    move-object/from16 v6, v17

    const/16 v17, 0x0

    :goto_25
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_37

    iget-boolean v7, v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->p:Z

    if-eqz v7, :cond_37

    move/from16 v7, v19

    const/16 v19, 0x1

    goto :goto_26

    :cond_37
    move/from16 v7, v19

    const/16 v19, 0x0

    :goto_26
    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->m:Ljava/util/List;

    iget-object v10, v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->n:Ljava/util/List;

    move-object/from16 v20, v1

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->o:Ljava/util/List;

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    move-object/from16 v22, v1

    and-int/lit8 v1, v23, 0x70

    move/from16 v23, v6

    const/16 v6, 0x20

    if-ne v1, v6, :cond_38

    const/4 v1, 0x1

    goto :goto_27

    :cond_38
    const/4 v1, 0x0

    :goto_27
    or-int v1, v21, v1

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_3a

    move-object/from16 v1, v37

    if-ne v6, v1, :cond_39

    goto :goto_28

    :cond_39
    move/from16 v21, v7

    move-object/from16 v24, v10

    move-object/from16 v10, p10

    goto :goto_29

    :cond_3a
    move-object/from16 v1, v37

    :goto_28
    new-instance v6, Lwd0;

    move/from16 v21, v7

    const/16 v7, 0x1d

    move-object/from16 v24, v10

    move-object/from16 v10, p10

    invoke-direct {v6, v2, v10, v7}, Lwd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_29
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_3b

    new-instance v7, Lu00;

    move-object/from16 v25, v6

    const/16 v6, 0x18

    move-object/from16 v26, v8

    move-object/from16 v8, p5

    invoke-direct {v7, v6, v8}, Lu00;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_2a

    :cond_3b
    move-object/from16 v25, v6

    move-object/from16 v26, v8

    move-object/from16 v8, p5

    :goto_2a
    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object/from16 v6, v18

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    or-int v18, v18, v27

    move-object/from16 p5, v7

    move-object/from16 v33, v8

    move/from16 v7, v21

    const/16 v8, 0x100

    if-ne v7, v8, :cond_3c

    const/4 v7, 0x1

    goto :goto_2b

    :cond_3c
    const/4 v7, 0x0

    :goto_2b
    or-int v7, v18, v7

    const/high16 v8, 0x1c00000

    and-int v8, v16, v8

    move/from16 v16, v7

    const/high16 v7, 0x800000

    if-ne v8, v7, :cond_3d

    const/4 v7, 0x1

    goto :goto_2c

    :cond_3d
    const/4 v7, 0x0

    :goto_2c
    or-int v7, v16, v7

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_3f

    if-ne v8, v1, :cond_3e

    goto :goto_2d

    :cond_3e
    move-object/from16 v7, p6

    move-object/from16 v10, p11

    goto :goto_2e

    :cond_3f
    :goto_2d
    new-instance v8, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/c;

    move-object/from16 v7, p6

    move-object/from16 v10, p11

    invoke-direct {v8, v6, v2, v10, v7}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/c;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_2e
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/high16 v27, 0x6000000

    move-object/from16 v16, v20

    move/from16 v18, v23

    move-object/from16 v21, v24

    move-object/from16 v23, v25

    move-object/from16 v20, v26

    move-object/from16 v24, p5

    move-object/from16 v25, v8

    move-object/from16 v26, v14

    invoke-static/range {v16 .. v27}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->a(Landroidx/compose/ui/Modifier;ZZZLjava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v8, 0x0

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2f

    :cond_40
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v32

    :cond_41
    move-object/from16 v7, p6

    move-object/from16 v36, v1

    move-object/from16 v39, v6

    move-object/from16 v33, v8

    move-object v1, v10

    move-object/from16 v11, v40

    const/4 v8, 0x0

    move-object/from16 v10, p11

    const v6, 0x4bc7b1bf    # 2.6174334E7f

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2f
    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    move-object/from16 v38, v5

    move/from16 v5, v35

    invoke-static {v6, v8, v5, v7, v10}, Landroidx/compose/foundation/layout/PaddingKt;->l(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v6

    move-object/from16 v8, v39

    const/4 v7, 0x0

    invoke-static {v8, v7}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    move-object/from16 v37, v1

    iget-wide v1, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v14, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    if-eqz v30, :cond_4c

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v7, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_42

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_30

    :cond_42
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_30
    invoke-static {v14, v8, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v2, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1, v14, v15, v14, v4}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v14, v6, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->v:F

    invoke-static {v0}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;->OpenCategoriesAnimation:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    if-eq v12, v1, :cond_43

    const/16 v16, 0x0

    goto :goto_31

    :cond_43
    const/16 v16, 0x1

    :goto_31
    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVShape;->e:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v2, v3}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v3, Landroidx/compose/animation/core/EasingKt;->c:Landroidx/compose/animation/core/CubicBezierEasing;

    const/16 v4, 0x190

    const/4 v8, 0x0

    const/4 v10, 0x2

    invoke-static {v4, v8, v3, v10}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v6

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_44

    move-object/from16 v6, v37

    if-ne v7, v6, :cond_45

    goto :goto_32

    :cond_44
    move-object/from16 v6, v37

    :goto_32
    new-instance v7, La10;

    const/4 v8, 0x1

    invoke-direct {v7, v0, v8}, La10;-><init>(FI)V

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_45
    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v9, 0x4

    invoke-static {v3, v2, v7, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->b(Landroidx/compose/animation/core/TweenSpec;Landroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/animation/EnterTransition;

    move-result-object v18

    const/4 v3, 0x6

    move-object/from16 v7, v32

    const/4 v8, 0x0

    invoke-static {v4, v8, v7, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v4

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_46

    if-ne v7, v6, :cond_47

    :cond_46
    new-instance v7, La10;

    const/4 v10, 0x2

    invoke-direct {v7, v0, v10}, La10;-><init>(FI)V

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_47
    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v9, 0x4

    invoke-static {v3, v2, v7, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->k(Landroidx/compose/animation/core/TweenSpec;Landroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v19

    new-instance v0, Lyj0;

    move-object/from16 v2, p1

    move-object/from16 v13, p7

    move-object/from16 v3, v36

    invoke-direct {v0, v2, v13, v3, v9}, Lyj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v3, 0x76ba4165

    invoke-static {v3, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v21

    const/high16 v23, 0x30000

    const/16 v24, 0x10

    const/16 v20, 0x0

    move-object/from16 v22, v14

    invoke-static/range {v16 .. v24}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const v0, 0x7f14036c

    invoke-static {v14, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f14032a

    invoke-static {v14, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    if-ne v12, v1, :cond_48

    const/4 v10, 0x1

    goto :goto_33

    :cond_48
    move v10, v8

    :goto_33
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->g:Landroidx/compose/ui/BiasAlignment;

    move-object/from16 v7, v38

    invoke-virtual {v7, v1, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    move-object/from16 v4, v28

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    move-object/from16 v8, v34

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v1, :cond_49

    if-ne v9, v6, :cond_4a

    :cond_49
    move-object v1, v0

    goto :goto_34

    :cond_4a
    move-object v1, v0

    move/from16 v35, v5

    move-object v5, v8

    move-object v8, v6

    goto :goto_35

    :goto_34
    new-instance v0, Ld1;

    move-object/from16 v37, v6

    const/16 v6, 0x13

    move-object/from16 v35, v2

    move-object v2, v1

    move-object/from16 v1, v35

    move/from16 v35, v5

    move-object v5, v8

    move-object/from16 v8, v37

    invoke-direct/range {v0 .. v6}, Ld1;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;I)V

    move-object v1, v2

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v9, v0

    :goto_35
    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-static {v7, v2, v9, v0}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v17

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_4b

    new-instance v0, Lyn0;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Lyn0;-><init>(I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4b
    move-object/from16 v18, v0

    check-cast v18, Lkotlin/jvm/functions/Function1;

    new-instance v0, Le3;

    move-object v2, v4

    move-object v4, v3

    move-object v3, v2

    move-object/from16 v2, p1

    move-object/from16 v6, p11

    move-object/from16 v8, v29

    move-object/from16 v7, v33

    invoke-direct/range {v0 .. v8}, Le3;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const v1, -0x4794ac26

    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v22

    const v24, 0x186180

    const/16 v25, 0x28

    const/16 v19, 0x0

    const-string v20, "button_animation"

    const/16 v21, 0x0

    move-object/from16 v23, v14

    invoke-static/range {v16 .. v25}, Landroidx/compose/animation/AnimatedContentKt;->b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move/from16 v6, v35

    goto :goto_36

    :cond_4c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v32, 0x0

    throw v32

    :cond_4d
    const/16 v32, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v32

    :cond_4e
    move-object v14, v4

    move-object/from16 v31, v22

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v6, p5

    :goto_36
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_4f

    move-object v1, v0

    new-instance v0, Lbr0;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v41, v1

    move-object v8, v13

    move-object/from16 v1, v31

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v15}, Lbr0;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;ZZZFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;II)V

    move-object/from16 v1, v41

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4f
    return-void
.end method
