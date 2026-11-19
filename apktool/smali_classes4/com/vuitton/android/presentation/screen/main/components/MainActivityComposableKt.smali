.class public abstract Lcom/vuitton/android/presentation/screen/main/components/MainActivityComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/main/components/MainActivityComposableKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0008\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00048\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;",
        "filterViewState",
        "Landroidx/compose/ui/geometry/Rect;",
        "aiButtonBounds",
        "",
        "showCircularReveal",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lkotlinx/coroutines/flow/SharedFlow;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v2, p2

    move-object/from16 v14, p3

    move-object/from16 v7, p6

    move/from16 v0, p21

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x55a3495f

    move-object/from16 v4, p20

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    and-int/lit8 v4, v0, 0x6

    if-nez v4, :cond_2

    and-int/lit8 v4, v0, 0x8

    if-nez v4, :cond_0

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    :goto_1
    or-int/2addr v4, v0

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    and-int/lit8 v8, v0, 0x30

    if-nez v8, :cond_5

    and-int/lit8 v8, v0, 0x40

    if-nez v8, :cond_3

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    :goto_3
    if-eqz v8, :cond_4

    const/16 v8, 0x20

    goto :goto_4

    :cond_4
    const/16 v8, 0x10

    :goto_4
    or-int/2addr v4, v8

    :cond_5
    and-int/lit16 v8, v0, 0x180

    if-nez v8, :cond_8

    and-int/lit16 v8, v0, 0x200

    if-nez v8, :cond_6

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_5

    :cond_6
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    :goto_5
    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_6

    :cond_7
    const/16 v8, 0x80

    :goto_6
    or-int/2addr v4, v8

    :cond_8
    and-int/lit16 v8, v0, 0xc00

    const/16 v13, 0x400

    const/16 v16, 0x800

    if-nez v8, :cond_b

    and-int/lit16 v8, v0, 0x1000

    if-nez v8, :cond_9

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_7

    :cond_9
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    :goto_7
    if-eqz v8, :cond_a

    move/from16 v8, v16

    goto :goto_8

    :cond_a
    move v8, v13

    :goto_8
    or-int/2addr v4, v8

    :cond_b
    and-int/lit16 v8, v0, 0x6000

    const/16 v17, 0x2000

    const/16 v18, 0x4000

    if-nez v8, :cond_d

    move-object/from16 v8, p4

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    move/from16 v19, v18

    goto :goto_9

    :cond_c
    move/from16 v19, v17

    :goto_9
    or-int v4, v4, v19

    goto :goto_a

    :cond_d
    move-object/from16 v8, p4

    :goto_a
    const/high16 v19, 0x30000

    and-int v20, v0, v19

    move-object/from16 v5, p5

    if-nez v20, :cond_f

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    const/high16 v20, 0x20000

    goto :goto_b

    :cond_e
    const/high16 v20, 0x10000

    :goto_b
    or-int v4, v4, v20

    :cond_f
    const/high16 v20, 0x180000

    and-int v20, v0, v20

    const/high16 v21, 0x80000

    const/high16 v22, 0x100000

    if-nez v20, :cond_12

    const/high16 v20, 0x200000

    and-int v20, v0, v20

    if-nez v20, :cond_10

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    goto :goto_c

    :cond_10
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    :goto_c
    if-eqz v20, :cond_11

    move/from16 v20, v22

    goto :goto_d

    :cond_11
    move/from16 v20, v21

    :goto_d
    or-int v4, v4, v20

    :cond_12
    const/high16 v20, 0xc00000

    and-int v20, v0, v20

    const/high16 v23, 0x400000

    const/high16 v24, 0x800000

    move-object/from16 v6, p7

    if-nez v20, :cond_14

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    move/from16 v25, v24

    goto :goto_e

    :cond_13
    move/from16 v25, v23

    :goto_e
    or-int v4, v4, v25

    :cond_14
    const/high16 v25, 0x6000000

    and-int v25, v0, v25

    const/high16 v26, 0x2000000

    const/high16 v27, 0x4000000

    move-object/from16 v9, p8

    if-nez v25, :cond_16

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_15

    move/from16 v28, v27

    goto :goto_f

    :cond_15
    move/from16 v28, v26

    :goto_f
    or-int v4, v4, v28

    :cond_16
    const/high16 v28, 0x30000000

    and-int v28, v0, v28

    const/high16 v29, 0x10000000

    const/high16 v30, 0x20000000

    move-object/from16 v10, p9

    if-nez v28, :cond_18

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_17

    move/from16 v31, v30

    goto :goto_10

    :cond_17
    move/from16 v31, v29

    :goto_10
    or-int v4, v4, v31

    :cond_18
    move/from16 v31, v13

    move-object/from16 v13, p10

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_19

    const/16 v20, 0x4

    goto :goto_11

    :cond_19
    const/16 v20, 0x2

    :goto_11
    or-int v19, v19, v20

    move-object/from16 v11, p11

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/16 v28, 0x20

    goto :goto_12

    :cond_1a
    const/16 v28, 0x10

    :goto_12
    or-int v19, v19, v28

    move-object/from16 v12, p12

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1b

    const/16 v20, 0x100

    goto :goto_13

    :cond_1b
    const/16 v20, 0x80

    :goto_13
    or-int v19, v19, v20

    move-object/from16 v0, p13

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c

    move/from16 v31, v16

    :cond_1c
    or-int v16, v19, v31

    move-object/from16 v0, p14

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    move/from16 v17, v18

    :cond_1d
    or-int v16, v16, v17

    move-object/from16 v0, p16

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    move/from16 v21, v22

    :cond_1e
    or-int v16, v16, v21

    move-object/from16 v0, p17

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    move/from16 v23, v24

    :cond_1f
    or-int v16, v16, v23

    move-object/from16 v0, p18

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    move/from16 v26, v27

    :cond_20
    or-int v16, v16, v26

    move-object/from16 v0, p19

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_21

    move/from16 v29, v30

    :cond_21
    or-int v16, v16, v29

    const v17, 0x12492493

    and-int v0, v4, v17

    const v1, 0x12492492

    const/16 v18, 0x1

    if-ne v0, v1, :cond_23

    and-int v0, v16, v17

    if-eq v0, v1, :cond_22

    goto :goto_14

    :cond_22
    const/4 v0, 0x0

    goto :goto_15

    :cond_23
    :goto_14
    move/from16 v0, v18

    :goto_15
    and-int/lit8 v1, v4, 0x1

    invoke-virtual {v3, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lnb0;

    move-object v1, v10

    move-object v10, v8

    move-object v8, v9

    move-object v9, v1

    move-object/from16 v1, p0

    move-object/from16 v20, p14

    move-object/from16 v19, p15

    move-object/from16 v4, p17

    move-object/from16 v33, v3

    move-object v3, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v11

    move-object v6, v12

    move-object/from16 v5, p13

    move-object/from16 v7, p16

    move-object/from16 v12, p18

    move-object/from16 v11, p19

    invoke-direct/range {v0 .. v20}, Lnb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    const v1, 0x44d5333d

    move-object/from16 v2, v33

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Lcom/vuitton/android/presentation/compose/components/compositionlocalprovider/LVMainCompositionLocalProviderKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_16

    :cond_24
    move-object v2, v3

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_16
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_25

    move-object v1, v0

    new-instance v0, Lrb0;

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

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v21, p21

    move-object/from16 v34, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v21}, Lrb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lkotlinx/coroutines/flow/SharedFlow;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;I)V

    move-object/from16 v1, v34

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_25
    return-void
.end method
