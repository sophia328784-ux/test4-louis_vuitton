.class public abstract Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
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
.method public static final a(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v1, p15

    move/from16 v3, p16

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, -0x4a16bdf1

    move-object/from16 v6, p14

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    and-int/lit8 v6, v1, 0x6

    if-nez v6, :cond_1

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v1

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    and-int/lit8 v9, v1, 0x30

    if-nez v9, :cond_3

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_2

    :cond_2
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v6, v9

    :cond_3
    and-int/lit16 v9, v1, 0x180

    if-nez v9, :cond_5

    move-object/from16 v9, p2

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/16 v14, 0x100

    goto :goto_3

    :cond_4
    const/16 v14, 0x80

    :goto_3
    or-int/2addr v6, v14

    goto :goto_4

    :cond_5
    move-object/from16 v9, p2

    :goto_4
    and-int/lit16 v14, v1, 0xc00

    if-nez v14, :cond_8

    and-int/lit16 v14, v1, 0x1000

    if-nez v14, :cond_6

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    goto :goto_5

    :cond_6
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    :goto_5
    if-eqz v14, :cond_7

    const/16 v14, 0x800

    goto :goto_6

    :cond_7
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v6, v14

    :cond_8
    and-int/lit16 v14, v1, 0x6000

    if-nez v14, :cond_a

    move-object/from16 v14, p4

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x4000

    goto :goto_7

    :cond_9
    const/16 v17, 0x2000

    :goto_7
    or-int v6, v6, v17

    goto :goto_8

    :cond_a
    move-object/from16 v14, p4

    :goto_8
    const/high16 v17, 0x30000

    and-int v17, v1, v17

    move-object/from16 v15, p5

    if-nez v17, :cond_c

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    const/high16 v19, 0x20000

    goto :goto_9

    :cond_b
    const/high16 v19, 0x10000

    :goto_9
    or-int v6, v6, v19

    :cond_c
    const/high16 v19, 0x180000

    and-int v19, v1, v19

    move-object/from16 v12, p6

    if-nez v19, :cond_e

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    const/high16 v20, 0x100000

    goto :goto_a

    :cond_d
    const/high16 v20, 0x80000

    :goto_a
    or-int v6, v6, v20

    :cond_e
    const/high16 v20, 0xc00000

    and-int v20, v1, v20

    move-object/from16 v11, p7

    if-nez v20, :cond_10

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    const/high16 v21, 0x800000

    goto :goto_b

    :cond_f
    const/high16 v21, 0x400000

    :goto_b
    or-int v6, v6, v21

    :cond_10
    const/high16 v21, 0x6000000

    and-int v21, v1, v21

    move-object/from16 v10, p8

    if-nez v21, :cond_12

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    const/high16 v22, 0x4000000

    goto :goto_c

    :cond_11
    const/high16 v22, 0x2000000

    :goto_c
    or-int v6, v6, v22

    :cond_12
    const/high16 v22, 0x30000000

    and-int v22, v1, v22

    move-object/from16 v13, p9

    if-nez v22, :cond_14

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    const/high16 v23, 0x20000000

    goto :goto_d

    :cond_13
    const/high16 v23, 0x10000000

    :goto_d
    or-int v6, v6, v23

    :cond_14
    and-int/lit8 v23, v3, 0x6

    move-object/from16 v8, p10

    if-nez v23, :cond_16

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_15

    const/16 v24, 0x4

    goto :goto_e

    :cond_15
    const/16 v24, 0x2

    :goto_e
    or-int v24, v3, v24

    goto :goto_f

    :cond_16
    move/from16 v24, v3

    :goto_f
    and-int/lit8 v25, v3, 0x30

    move-object/from16 v7, p11

    if-nez v25, :cond_18

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    const/16 v26, 0x20

    goto :goto_10

    :cond_17
    const/16 v26, 0x10

    :goto_10
    or-int v24, v24, v26

    :cond_18
    and-int/lit16 v1, v3, 0x180

    if-nez v1, :cond_1a

    move-object/from16 v1, p12

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_19

    const/16 v16, 0x100

    goto :goto_11

    :cond_19
    const/16 v16, 0x80

    :goto_11
    or-int v24, v24, v16

    goto :goto_12

    :cond_1a
    move-object/from16 v1, p12

    :goto_12
    and-int/lit16 v1, v3, 0xc00

    if-nez v1, :cond_1c

    move-object/from16 v1, p13

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    const/16 v18, 0x800

    goto :goto_13

    :cond_1b
    const/16 v18, 0x400

    :goto_13
    or-int v24, v24, v18

    :goto_14
    move/from16 v1, v24

    goto :goto_15

    :cond_1c
    move-object/from16 v1, p13

    goto :goto_14

    :goto_15
    const v16, 0x12492493

    and-int v3, v6, v16

    const v7, 0x12492492

    const/16 v16, 0x1

    const/16 v18, 0x0

    if-ne v3, v7, :cond_1e

    and-int/lit16 v3, v1, 0x493

    const/16 v7, 0x492

    if-eq v3, v7, :cond_1d

    goto :goto_16

    :cond_1d
    move/from16 v3, v18

    goto :goto_17

    :cond_1e
    :goto_16
    move/from16 v3, v16

    :goto_17
    and-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_38

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v7, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v3, v7, :cond_1f

    sget-object v24, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->a:Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection$Companion;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v24, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->b:I

    move/from16 v8, v24

    goto :goto_18

    :cond_1f
    sget-object v24, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->a:Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection$Companion;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v8, v18

    :goto_18
    if-ne v3, v7, :cond_20

    sget-object v3, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->a:Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v3, v18

    goto :goto_19

    :cond_20
    sget-object v3, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->a:Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->b:I

    :goto_19
    sget-object v7, Lcom/vuitton/android/presentation/screen/catalog/CatalogTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    sget-object v24, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Category;->INSTANCE:Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Category;

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v26

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v26, :cond_21

    if-ne v9, v10, :cond_22

    :cond_21
    new-instance v9, Lhb;

    const/4 v11, 0x2

    invoke-direct {v9, v8, v11}, Lhb;-><init>(II)V

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object/from16 v25, v9

    check-cast v25, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v9, :cond_23

    if-ne v11, v10, :cond_24

    :cond_23
    new-instance v11, Lhb;

    const/4 v9, 0x3

    invoke-direct {v11, v8, v9}, Lhb;-><init>(II)V

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object/from16 v26, v11

    check-cast v26, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_25

    if-ne v9, v10, :cond_26

    :cond_25
    new-instance v9, Lhb;

    const/4 v8, 0x4

    invoke-direct {v9, v3, v8}, Lhb;-><init>(II)V

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_26
    move-object/from16 v27, v9

    check-cast v27, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_27

    if-ne v9, v10, :cond_28

    :cond_27
    new-instance v9, Lhb;

    const/4 v8, 0x5

    invoke-direct {v9, v3, v8}, Lhb;-><init>(II)V

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_28
    move-object/from16 v28, v9

    check-cast v28, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v3, v6, 0x380

    const/16 v8, 0x100

    if-ne v3, v8, :cond_29

    move/from16 v3, v16

    goto :goto_1a

    :cond_29
    move/from16 v3, v18

    :goto_1a
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    and-int/lit16 v8, v1, 0x1c00

    const/16 v9, 0x800

    if-ne v8, v9, :cond_2a

    move/from16 v8, v16

    goto :goto_1b

    :cond_2a
    move/from16 v8, v18

    :goto_1b
    or-int/2addr v3, v8

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    and-int/lit8 v8, v1, 0x70

    const/16 v9, 0x20

    if-ne v8, v9, :cond_2b

    move/from16 v8, v16

    goto :goto_1c

    :cond_2b
    move/from16 v8, v18

    :goto_1c
    or-int/2addr v3, v8

    const/high16 v8, 0xe000000

    and-int/2addr v8, v6

    const/high16 v9, 0x4000000

    if-ne v8, v9, :cond_2c

    move/from16 v8, v16

    goto :goto_1d

    :cond_2c
    move/from16 v8, v18

    :goto_1d
    or-int/2addr v3, v8

    const/high16 v8, 0x70000000

    and-int/2addr v8, v6

    const/high16 v9, 0x20000000

    if-ne v8, v9, :cond_2d

    move/from16 v8, v16

    goto :goto_1e

    :cond_2d
    move/from16 v8, v18

    :goto_1e
    or-int/2addr v3, v8

    and-int/lit16 v8, v6, 0x1c00

    const/16 v9, 0x800

    if-eq v8, v9, :cond_2f

    and-int/lit16 v8, v6, 0x1000

    if-eqz v8, :cond_2e

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    goto :goto_1f

    :cond_2e
    move/from16 v8, v18

    goto :goto_20

    :cond_2f
    :goto_1f
    move/from16 v8, v16

    :goto_20
    or-int/2addr v3, v8

    const v8, 0xe000

    and-int/2addr v8, v6

    const/16 v9, 0x4000

    if-ne v8, v9, :cond_30

    move/from16 v8, v16

    goto :goto_21

    :cond_30
    move/from16 v8, v18

    :goto_21
    or-int/2addr v3, v8

    const/high16 v8, 0x70000

    and-int/2addr v8, v6

    const/high16 v9, 0x20000

    if-ne v8, v9, :cond_31

    move/from16 v8, v16

    goto :goto_22

    :cond_31
    move/from16 v8, v18

    :goto_22
    or-int/2addr v3, v8

    const/high16 v8, 0x1c00000

    and-int/2addr v8, v6

    const/high16 v9, 0x800000

    if-ne v8, v9, :cond_32

    move/from16 v8, v16

    goto :goto_23

    :cond_32
    move/from16 v8, v18

    :goto_23
    or-int/2addr v3, v8

    and-int/lit8 v8, v1, 0xe

    const/4 v9, 0x4

    if-ne v8, v9, :cond_33

    move/from16 v8, v16

    goto :goto_24

    :cond_33
    move/from16 v8, v18

    :goto_24
    or-int/2addr v3, v8

    and-int/lit16 v1, v1, 0x380

    const/16 v8, 0x100

    if-ne v1, v8, :cond_34

    move/from16 v1, v16

    goto :goto_25

    :cond_34
    move/from16 v1, v18

    :goto_25
    or-int/2addr v1, v3

    const/high16 v3, 0x380000

    and-int/2addr v3, v6

    const/high16 v8, 0x100000

    if-ne v3, v8, :cond_35

    goto :goto_26

    :cond_35
    move/from16 v16, v18

    :goto_26
    or-int v1, v1, v16

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_37

    if-ne v3, v10, :cond_36

    goto :goto_27

    :cond_36
    move-object v10, v5

    move/from16 v16, v6

    goto :goto_28

    :cond_37
    :goto_27
    new-instance v0, Lek;

    move-object/from16 v1, p2

    move-object/from16 v3, p13

    move-object v9, v4

    move-object/from16 v29, v5

    move/from16 v16, v6

    move-object v8, v13

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v5, p0

    move-object/from16 v13, p10

    move-object/from16 v6, p11

    move-object/from16 v14, p12

    move-object v4, v2

    move-object v2, v7

    move-object v15, v12

    move-object/from16 v12, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v15}, Lek;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v10, v29

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_28
    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v0, v16, 0xe

    or-int/lit8 v11, v0, 0x30

    const/16 v12, 0x43c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v8, v28

    invoke-static/range {v0 .. v12}, Landroidx/navigation/compose/NavHostKt;->b(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_29

    :cond_38
    move-object v10, v5

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_29
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_39

    move-object v1, v0

    new-instance v0, Lfk;

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

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v30, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Lfk;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V

    move-object/from16 v1, v30

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_39
    return-void
.end method
