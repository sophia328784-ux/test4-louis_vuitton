.class public abstract Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;",
        "viewState",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/catalog/CatalogViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p8

    move/from16 v10, p12

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x68751993

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    and-int/lit8 v0, v10, 0x6

    const/4 v1, 0x4

    if-nez v0, :cond_1

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v10

    goto :goto_1

    :cond_1
    move v0, v10

    :goto_1
    and-int/lit8 v4, v10, 0x30

    move-object/from16 v12, p1

    if-nez v4, :cond_3

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    :cond_3
    and-int/lit16 v4, v10, 0x180

    if-nez v4, :cond_5

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v0, v4

    :cond_5
    and-int/lit16 v4, v10, 0xc00

    if-nez v4, :cond_8

    and-int/lit16 v4, v10, 0x1000

    if-nez v4, :cond_6

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_4

    :cond_6
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    :goto_4
    if-eqz v4, :cond_7

    const/16 v4, 0x800

    goto :goto_5

    :cond_7
    const/16 v4, 0x400

    :goto_5
    or-int/2addr v0, v4

    :cond_8
    and-int/lit16 v4, v10, 0x6000

    if-nez v4, :cond_a

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x4000

    goto :goto_6

    :cond_9
    const/16 v4, 0x2000

    :goto_6
    or-int/2addr v0, v4

    :cond_a
    const/high16 v4, 0x30000

    and-int/2addr v4, v10

    if-nez v4, :cond_d

    const/high16 v4, 0x40000

    and-int/2addr v4, v10

    if-nez v4, :cond_b

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_7

    :cond_b
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    :goto_7
    if-eqz v4, :cond_c

    const/high16 v4, 0x20000

    goto :goto_8

    :cond_c
    const/high16 v4, 0x10000

    :goto_8
    or-int/2addr v0, v4

    :cond_d
    const/high16 v4, 0x180000

    and-int/2addr v4, v10

    move-object/from16 v15, p6

    if-nez v4, :cond_f

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/high16 v4, 0x100000

    goto :goto_9

    :cond_e
    const/high16 v4, 0x80000

    :goto_9
    or-int/2addr v0, v4

    :cond_f
    const/high16 v4, 0xc00000

    and-int/2addr v4, v10

    if-nez v4, :cond_11

    move-object/from16 v4, p7

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/high16 v5, 0x800000

    goto :goto_a

    :cond_10
    const/high16 v5, 0x400000

    :goto_a
    or-int/2addr v0, v5

    goto :goto_b

    :cond_11
    move-object/from16 v4, p7

    :goto_b
    const/high16 v5, 0x6000000

    and-int/2addr v5, v10

    if-nez v5, :cond_13

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/high16 v5, 0x4000000

    goto :goto_c

    :cond_12
    const/high16 v5, 0x2000000

    :goto_c
    or-int/2addr v0, v5

    :cond_13
    const/high16 v5, 0x30000000

    and-int/2addr v5, v10

    if-nez v5, :cond_15

    move-object/from16 v5, p9

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const/high16 v16, 0x20000000

    goto :goto_d

    :cond_14
    const/high16 v16, 0x10000000

    :goto_d
    or-int v0, v0, v16

    goto :goto_e

    :cond_15
    move-object/from16 v5, p9

    :goto_e
    and-int/lit8 v16, p13, 0x6

    move-object/from16 v13, p10

    if-nez v16, :cond_17

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    goto :goto_f

    :cond_16
    const/4 v1, 0x2

    :goto_f
    or-int v1, p13, v1

    move/from16 v17, v1

    goto :goto_10

    :cond_17
    move/from16 v17, p13

    :goto_10
    const v1, 0x12492493

    and-int/2addr v1, v0

    const v11, 0x12492492

    const/16 v19, 0x1

    const/16 v20, 0x0

    if-ne v1, v11, :cond_19

    and-int/lit8 v1, v17, 0x3

    const/4 v11, 0x2

    if-eq v1, v11, :cond_18

    goto :goto_11

    :cond_18
    move/from16 v1, v20

    goto :goto_12

    :cond_19
    :goto_11
    move/from16 v1, v19

    :goto_12
    and-int/lit8 v11, v0, 0x1

    invoke-virtual {v14, v11, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/catalog/CatalogViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v11

    invoke-static {v11, v14}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v0

    move-object/from16 v0, v21

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v21

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    or-int v21, v21, v23

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    or-int v21, v21, v23

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    or-int v21, v21, v23

    move-object/from16 v23, v0

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v21, :cond_1b

    if-ne v0, v5, :cond_1a

    goto :goto_13

    :cond_1a
    move-object v3, v1

    move-object v10, v5

    move-object v1, v11

    move/from16 v11, v22

    move-object/from16 v8, v23

    goto :goto_14

    :cond_1b
    :goto_13
    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;

    move-object/from16 v21, v5

    const/4 v5, 0x0

    move-object v4, v3

    move-object/from16 v10, v21

    move-object/from16 v8, v23

    move-object v3, v1

    move-object v1, v11

    move/from16 v11, v22

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;Landroid/content/Context;Landroidx/navigation/NavHostController;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_14
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v8, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1c

    if-ne v1, v10, :cond_1d

    :cond_1c
    new-instance v1, Lje;

    const/4 v0, 0x2

    invoke-direct {v1, v3, v0}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object/from16 v18, v1

    check-cast v18, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    if-nez v0, :cond_1e

    if-ne v1, v10, :cond_1f

    :cond_1e
    new-instance v1, Lje;

    invoke-direct {v1, v3, v2}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    move-object/from16 v21, v1

    check-cast v21, Lkotlin/jvm/functions/Function0;

    and-int/lit16 v0, v11, 0x1c00

    const/16 v1, 0x800

    if-eq v0, v1, :cond_21

    and-int/lit16 v1, v11, 0x1000

    if-eqz v1, :cond_20

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_15

    :cond_20
    move/from16 v1, v20

    goto :goto_16

    :cond_21
    :goto_15
    move/from16 v1, v19

    :goto_16
    const/high16 v4, 0xe000000

    and-int/2addr v4, v11

    const/high16 v5, 0x4000000

    if-ne v4, v5, :cond_22

    move/from16 v4, v19

    goto :goto_17

    :cond_22
    move/from16 v4, v20

    :goto_17
    or-int/2addr v1, v4

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_23

    if-ne v4, v10, :cond_24

    :cond_23
    new-instance v4, Ltf;

    const/16 v1, 0xb

    invoke-direct {v4, v6, v9, v1}, Ltf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object/from16 v16, v4

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_25

    if-ne v4, v10, :cond_26

    :cond_25
    new-instance v4, Lm;

    invoke-direct {v4, v7, v3, v2}, Lm;-><init>(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroid/content/Context;I)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_26
    move-object/from16 v22, v4

    check-cast v22, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_27

    if-ne v2, v10, :cond_28

    :cond_27
    new-instance v2, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$6$1;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$6$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_28
    move-object/from16 v23, v2

    check-cast v23, Lkotlin/jvm/functions/Function2;

    const/16 v1, 0x800

    if-eq v0, v1, :cond_2a

    and-int/lit16 v0, v11, 0x1000

    if-eqz v0, :cond_29

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_18

    :cond_29
    move/from16 v19, v20

    :cond_2a
    :goto_18
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v19, :cond_2b

    if-ne v0, v10, :cond_2c

    :cond_2b
    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt$CatalogComposable$7$1;

    const-string v5, "trackCategory(Ljava/lang/String;Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/catalog/CatalogViewModel;

    const-string v4, "trackCategory"

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2c
    check-cast v0, Lkotlin/reflect/KFunction;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v1, v11, 0x6

    and-int/lit8 v2, v1, 0xe

    shl-int/lit8 v3, v11, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v2, v3

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v1, v2

    shr-int/lit8 v2, v11, 0xf

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/high16 v2, 0x70000

    shl-int/lit8 v3, v17, 0xf

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/high16 v2, 0x70000000

    shl-int/lit8 v3, v11, 0x6

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    shr-int/lit8 v2, v11, 0x12

    and-int/lit8 v2, v2, 0xe

    move-object/from16 v3, p5

    move-object/from16 v9, p7

    move-object/from16 v4, p9

    move-object v5, v13

    move-object v10, v15

    move-object/from16 v6, v18

    move-object/from16 v7, v21

    move-object/from16 v11, v22

    move-object v13, v0

    move v15, v1

    move-object v1, v8

    move-object/from16 v8, v16

    move-object/from16 v0, p2

    move/from16 v16, v2

    move-object v2, v12

    move-object/from16 v12, v23

    invoke-static/range {v0 .. v16}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt;->a(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    goto :goto_19

    :cond_2d
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_19
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_2e

    new-instance v0, Lxj;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lxj;-><init>(Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/catalog/CatalogViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2e
    return-void
.end method
