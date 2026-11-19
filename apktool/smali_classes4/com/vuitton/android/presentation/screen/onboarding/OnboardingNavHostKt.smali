.class public abstract Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;",
        "onboardingViewState",
        "Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;",
        "welcomeViewState",
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
    .locals 4

    const v0, 0xbd5f9c

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    and-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v3, :cond_1

    new-instance v2, Lmg0;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lmg0;-><init>(I)V

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/16 v3, 0x36

    invoke-static {v1, v2, p0, v3, v0}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Ln50;

    const/16 v1, 0x18

    invoke-direct {v0, p1, v1}, Ln50;-><init>(II)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method

.method public static final b(Landroidx/navigation/NavHostController;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v1, p4

    move/from16 v2, p20

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, -0x1704d852

    move-object/from16 v6, p19

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    and-int/lit8 v6, v2, 0x6

    if-nez v6, :cond_1

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v2

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    and-int/lit8 v9, v2, 0x30

    if-nez v9, :cond_4

    and-int/lit8 v9, v2, 0x40

    if-nez v9, :cond_2

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    :goto_2
    if-eqz v9, :cond_3

    const/16 v9, 0x20

    goto :goto_3

    :cond_3
    const/16 v9, 0x10

    :goto_3
    or-int/2addr v6, v9

    :cond_4
    and-int/lit16 v9, v2, 0x180

    if-nez v9, :cond_7

    and-int/lit16 v9, v2, 0x200

    if-nez v9, :cond_5

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_4

    :cond_5
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    :goto_4
    if-eqz v9, :cond_6

    const/16 v9, 0x100

    goto :goto_5

    :cond_6
    const/16 v9, 0x80

    :goto_5
    or-int/2addr v6, v9

    :cond_7
    and-int/lit16 v9, v2, 0xc00

    if-nez v9, :cond_a

    and-int/lit16 v9, v2, 0x1000

    if-nez v9, :cond_8

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_6

    :cond_8
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    :goto_6
    if-eqz v9, :cond_9

    const/16 v9, 0x800

    goto :goto_7

    :cond_9
    const/16 v9, 0x400

    :goto_7
    or-int/2addr v6, v9

    :cond_a
    and-int/lit16 v9, v2, 0x6000

    const/16 v16, 0x2000

    if-nez v9, :cond_d

    const v9, 0x8000

    and-int/2addr v9, v2

    if-nez v9, :cond_b

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_8

    :cond_b
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    :goto_8
    if-eqz v9, :cond_c

    const/16 v9, 0x4000

    goto :goto_9

    :cond_c
    move/from16 v9, v16

    :goto_9
    or-int/2addr v6, v9

    :cond_d
    const/high16 v9, 0x30000

    and-int/2addr v9, v2

    const/high16 v18, 0x10000

    if-nez v9, :cond_f

    move-object/from16 v9, p5

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    const/high16 v20, 0x20000

    goto :goto_a

    :cond_e
    move/from16 v20, v18

    :goto_a
    or-int v6, v6, v20

    goto :goto_b

    :cond_f
    move-object/from16 v9, p5

    :goto_b
    const/high16 v20, 0x180000

    and-int v20, v2, v20

    const/high16 v21, 0x80000

    move-object/from16 v12, p6

    if-nez v20, :cond_11

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    const/high16 v23, 0x100000

    goto :goto_c

    :cond_10
    move/from16 v23, v21

    :goto_c
    or-int v6, v6, v23

    :cond_11
    const/high16 v23, 0xc00000

    and-int v23, v2, v23

    const/high16 v24, 0x400000

    move-object/from16 v10, p7

    if-nez v23, :cond_13

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    const/high16 v25, 0x800000

    goto :goto_d

    :cond_12
    move/from16 v25, v24

    :goto_d
    or-int v6, v6, v25

    :cond_13
    const/high16 v25, 0x6000000

    and-int v25, v2, v25

    const/high16 v26, 0x2000000

    move-object/from16 v13, p8

    if-nez v25, :cond_15

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_14

    const/high16 v27, 0x4000000

    goto :goto_e

    :cond_14
    move/from16 v27, v26

    :goto_e
    or-int v6, v6, v27

    :cond_15
    const/high16 v27, 0x30000000

    and-int v27, v2, v27

    move-object/from16 v11, p9

    if-nez v27, :cond_17

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    const/high16 v28, 0x20000000

    goto :goto_f

    :cond_16
    const/high16 v28, 0x10000000

    :goto_f
    or-int v6, v6, v28

    :cond_17
    move-object/from16 v2, p10

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_18

    const/16 v29, 0x4

    :goto_10
    move-object/from16 v8, p11

    goto :goto_11

    :cond_18
    const/16 v29, 0x2

    goto :goto_10

    :goto_11
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_19

    const/16 v30, 0x20

    goto :goto_12

    :cond_19
    const/16 v30, 0x10

    :goto_12
    or-int v29, v29, v30

    move-object/from16 v15, p12

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1a

    const/16 v17, 0x100

    goto :goto_13

    :cond_1a
    const/16 v17, 0x80

    :goto_13
    or-int v17, v29, v17

    move-object/from16 v7, p13

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1b

    const/16 v19, 0x800

    goto :goto_14

    :cond_1b
    const/16 v19, 0x400

    :goto_14
    or-int v17, v17, v19

    move-object/from16 v1, p14

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/16 v16, 0x4000

    :cond_1c
    or-int v16, v17, v16

    move-object/from16 v1, p15

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    const/high16 v18, 0x20000

    :cond_1d
    or-int v16, v16, v18

    move-object/from16 v1, p16

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    const/high16 v21, 0x100000

    :cond_1e
    or-int v16, v16, v21

    move-object/from16 v1, p17

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    const/high16 v24, 0x800000

    :cond_1f
    or-int v16, v16, v24

    move-object/from16 v1, p18

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    const/high16 v26, 0x4000000

    :cond_20
    or-int v1, v16, v26

    const v16, 0x12492493

    and-int v2, v6, v16

    const v7, 0x12492492

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-ne v2, v7, :cond_22

    const v2, 0x2492493

    and-int/2addr v2, v1

    const v7, 0x2492492

    if-eq v2, v7, :cond_21

    goto :goto_15

    :cond_21
    move/from16 v2, v16

    goto :goto_16

    :cond_22
    :goto_15
    move/from16 v2, v17

    :goto_16
    and-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_3b

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-static {v2, v5}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;->R0()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v7

    invoke-static {v7, v5}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v9, :cond_23

    new-instance v8, Lag0;

    const/16 v10, 0x19

    invoke-direct {v8, v10}, Lag0;-><init>(I)V

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    move-object/from16 v21, v8

    check-cast v21, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v9, :cond_24

    new-instance v8, Lch0;

    const/4 v10, 0x2

    invoke-direct {v8, v10}, Lch0;-><init>(I)V

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object/from16 v24, v8

    check-cast v24, Lkotlin/jvm/functions/Function1;

    const/high16 v8, 0x1c00000

    and-int v10, v1, v8

    move/from16 v18, v8

    const/high16 v8, 0x800000

    if-ne v10, v8, :cond_25

    move/from16 v8, v17

    goto :goto_17

    :cond_25
    move/from16 v8, v16

    :goto_17
    and-int/lit8 v10, v1, 0xe

    move/from16 v19, v8

    const/4 v8, 0x4

    if-ne v10, v8, :cond_26

    move/from16 v8, v17

    goto :goto_18

    :cond_26
    move/from16 v8, v16

    :goto_18
    or-int v8, v19, v8

    and-int/lit8 v10, v1, 0x70

    move/from16 v19, v8

    const/16 v8, 0x20

    if-ne v10, v8, :cond_27

    move/from16 v8, v17

    goto :goto_19

    :cond_27
    move/from16 v8, v16

    :goto_19
    or-int v8, v19, v8

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    and-int/lit16 v10, v6, 0x380

    const/16 v0, 0x100

    if-eq v10, v0, :cond_29

    and-int/lit16 v0, v6, 0x200

    if-eqz v0, :cond_28

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_1a

    :cond_28
    move/from16 v0, v16

    goto :goto_1b

    :cond_29
    :goto_1a
    move/from16 v0, v17

    :goto_1b
    or-int/2addr v0, v8

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v0, v8

    const/high16 v8, 0x70000000

    and-int/2addr v8, v6

    const/high16 v10, 0x20000000

    if-ne v8, v10, :cond_2a

    move/from16 v8, v17

    goto :goto_1c

    :cond_2a
    move/from16 v8, v16

    :goto_1c
    or-int/2addr v0, v8

    and-int/lit16 v8, v6, 0x1c00

    const/16 v10, 0x800

    if-eq v8, v10, :cond_2c

    and-int/lit16 v8, v6, 0x1000

    if-eqz v8, :cond_2b

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    goto :goto_1d

    :cond_2b
    move/from16 v8, v16

    goto :goto_1e

    :cond_2c
    :goto_1d
    move/from16 v8, v17

    :goto_1e
    or-int/2addr v0, v8

    const/high16 v8, 0x70000

    and-int v10, v6, v8

    move/from16 v19, v8

    const/high16 v8, 0x20000

    if-ne v10, v8, :cond_2d

    move/from16 v8, v17

    goto :goto_1f

    :cond_2d
    move/from16 v8, v16

    :goto_1f
    or-int/2addr v0, v8

    const/high16 v8, 0x380000

    and-int v10, v6, v8

    move/from16 v26, v8

    const/high16 v8, 0x100000

    if-ne v10, v8, :cond_2e

    move/from16 v8, v17

    goto :goto_20

    :cond_2e
    move/from16 v8, v16

    :goto_20
    or-int/2addr v0, v8

    const/high16 v8, 0xe000000

    and-int v10, v6, v8

    move/from16 v27, v8

    const/high16 v8, 0x4000000

    if-ne v10, v8, :cond_2f

    move/from16 v8, v17

    goto :goto_21

    :cond_2f
    move/from16 v8, v16

    :goto_21
    or-int/2addr v0, v8

    and-int v8, v6, v18

    const/high16 v10, 0x800000

    if-ne v8, v10, :cond_30

    move/from16 v8, v17

    goto :goto_22

    :cond_30
    move/from16 v8, v16

    :goto_22
    or-int/2addr v0, v8

    and-int/lit8 v8, v6, 0x70

    const/16 v10, 0x20

    if-eq v8, v10, :cond_32

    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_31

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    goto :goto_23

    :cond_31
    move/from16 v8, v16

    goto :goto_24

    :cond_32
    :goto_23
    move/from16 v8, v17

    :goto_24
    or-int/2addr v0, v8

    and-int/lit16 v8, v1, 0x1c00

    const/16 v10, 0x800

    if-ne v8, v10, :cond_33

    move/from16 v8, v17

    goto :goto_25

    :cond_33
    move/from16 v8, v16

    :goto_25
    or-int/2addr v0, v8

    and-int/lit16 v8, v1, 0x380

    const/16 v10, 0x100

    if-ne v8, v10, :cond_34

    move/from16 v8, v17

    goto :goto_26

    :cond_34
    move/from16 v8, v16

    :goto_26
    or-int/2addr v0, v8

    const v8, 0xe000

    and-int/2addr v8, v1

    const/16 v10, 0x4000

    if-ne v8, v10, :cond_35

    move/from16 v8, v17

    goto :goto_27

    :cond_35
    move/from16 v8, v16

    :goto_27
    or-int/2addr v0, v8

    and-int v8, v1, v19

    const/high16 v10, 0x20000

    if-ne v8, v10, :cond_36

    move/from16 v8, v17

    goto :goto_28

    :cond_36
    move/from16 v8, v16

    :goto_28
    or-int/2addr v0, v8

    and-int v8, v1, v26

    const/high16 v10, 0x100000

    if-ne v8, v10, :cond_37

    move/from16 v8, v17

    goto :goto_29

    :cond_37
    move/from16 v8, v16

    :goto_29
    or-int/2addr v0, v8

    and-int v1, v1, v27

    const/high16 v8, 0x4000000

    if-ne v1, v8, :cond_38

    move/from16 v16, v17

    :cond_38
    or-int v0, v0, v16

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3a

    if-ne v1, v9, :cond_39

    goto :goto_2a

    :cond_39
    move-object v10, v5

    move/from16 v22, v6

    goto :goto_2b

    :cond_3a
    :goto_2a
    new-instance v0, Lgh0;

    move-object/from16 v10, p5

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v1, p17

    move-object/from16 v20, p18

    move-object v9, v4

    move-object/from16 v31, v5

    move/from16 v22, v6

    move-object v8, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v16, v15

    move-object/from16 v4, p0

    move-object/from16 v13, p7

    move-object/from16 v15, p13

    move-object v6, v2

    move-object v5, v3

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    invoke-direct/range {v0 .. v20}, Lgh0;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v10, v31

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_2b
    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/high16 v0, 0x6c00000

    and-int/lit8 v1, v22, 0xe

    or-int/2addr v0, v1

    shr-int/lit8 v1, v22, 0x9

    and-int/lit8 v1, v1, 0x70

    or-int v11, v0, v1

    const/16 v12, 0x67c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v6, v21

    move-object/from16 v7, v24

    invoke-static/range {v0 .. v12}, Landroidx/navigation/compose/NavHostKt;->b(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_2c

    :cond_3b
    move-object v10, v5

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_3c

    move-object v1, v0

    new-instance v0, Lhh0;

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

    move/from16 v20, p20

    move-object/from16 v32, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v20}, Lhh0;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;I)V

    move-object/from16 v1, v32

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3c
    return-void
.end method

.method public static final c(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;)Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->c:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssetType;

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssetType;->NOTIFICATIONS:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssetType;

    if-ne v0, v1, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Notifications;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Notifications;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Geolocation;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Geolocation;

    return-object p0
.end method
