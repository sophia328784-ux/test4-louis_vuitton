.class public abstract Lcom/vuitton/android/presentation/screen/feed/components/FeedForYouSuccessScreenKt;
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
.method public static final a(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v4, p4

    move/from16 v5, p18

    move/from16 v6, p19

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0x5f3fc5ac

    move-object/from16 v8, p17

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v8, v5

    and-int/lit8 v11, v5, 0x30

    if-nez v11, :cond_2

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/16 v11, 0x20

    goto :goto_1

    :cond_1
    const/16 v11, 0x10

    :goto_1
    or-int/2addr v8, v11

    :cond_2
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x100

    goto :goto_2

    :cond_3
    const/16 v11, 0x80

    :goto_2
    or-int/2addr v8, v11

    and-int/lit16 v11, v5, 0xc00

    const/16 v16, 0x400

    if-nez v11, :cond_5

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x800

    goto :goto_3

    :cond_4
    move/from16 v11, v16

    :goto_3
    or-int/2addr v8, v11

    :cond_5
    and-int/lit16 v11, v5, 0x6000

    const/16 v17, 0x2000

    if-nez v11, :cond_7

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x4000

    goto :goto_4

    :cond_6
    move/from16 v11, v17

    :goto_4
    or-int/2addr v8, v11

    :cond_7
    and-int/lit8 v11, p20, 0x20

    const/high16 v19, 0x10000

    const/high16 v20, 0x30000

    if-eqz v11, :cond_8

    or-int v8, v8, v20

    move-object/from16 v15, p5

    goto :goto_6

    :cond_8
    and-int v22, v5, v20

    move-object/from16 v15, p5

    if-nez v22, :cond_a

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    const/high16 v23, 0x20000

    goto :goto_5

    :cond_9
    move/from16 v23, v19

    :goto_5
    or-int v8, v8, v23

    :cond_a
    :goto_6
    and-int/lit8 v23, p20, 0x40

    const/high16 v24, 0x80000

    const/high16 v25, 0x180000

    if-eqz v23, :cond_b

    or-int v8, v8, v25

    move-object/from16 v14, p6

    goto :goto_8

    :cond_b
    and-int v26, v5, v25

    move-object/from16 v14, p6

    if-nez v26, :cond_d

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    const/high16 v27, 0x100000

    goto :goto_7

    :cond_c
    move/from16 v27, v24

    :goto_7
    or-int v8, v8, v27

    :cond_d
    :goto_8
    const/high16 v27, 0xc00000

    and-int v27, v5, v27

    move/from16 v13, p7

    if-nez v27, :cond_f

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v28

    if-eqz v28, :cond_e

    const/high16 v28, 0x800000

    goto :goto_9

    :cond_e
    const/high16 v28, 0x400000

    :goto_9
    or-int v8, v8, v28

    :cond_f
    const/high16 v28, 0x6000000

    and-int v28, v5, v28

    move-object/from16 v12, p8

    if-nez v28, :cond_11

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    const/high16 v29, 0x4000000

    goto :goto_a

    :cond_10
    const/high16 v29, 0x2000000

    :goto_a
    or-int v8, v8, v29

    :cond_11
    const/high16 v29, 0x30000000

    and-int v29, v5, v29

    move-object/from16 v10, p9

    if-nez v29, :cond_13

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    const/high16 v30, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v30, 0x10000000

    :goto_b
    or-int v8, v8, v30

    :cond_13
    and-int/lit8 v30, v6, 0x6

    move-object/from16 v9, p10

    if-nez v30, :cond_15

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    const/16 v31, 0x4

    goto :goto_c

    :cond_14
    const/16 v31, 0x2

    :goto_c
    or-int v31, v6, v31

    goto :goto_d

    :cond_15
    move/from16 v31, v6

    :goto_d
    and-int/lit8 v32, v6, 0x30

    move-object/from16 v5, p11

    if-nez v32, :cond_17

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_16

    const/16 v18, 0x20

    goto :goto_e

    :cond_16
    const/16 v18, 0x10

    :goto_e
    or-int v31, v31, v18

    :cond_17
    and-int/lit16 v5, v6, 0x180

    if-nez v5, :cond_19

    move-object/from16 v5, p12

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    const/16 v21, 0x100

    goto :goto_f

    :cond_18
    const/16 v21, 0x80

    :goto_f
    or-int v31, v31, v21

    goto :goto_10

    :cond_19
    move-object/from16 v5, p12

    :goto_10
    and-int/lit16 v5, v6, 0xc00

    if-nez v5, :cond_1b

    move-object/from16 v5, p13

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    const/16 v16, 0x800

    :cond_1a
    or-int v31, v31, v16

    goto :goto_11

    :cond_1b
    move-object/from16 v5, p13

    :goto_11
    and-int/lit16 v5, v6, 0x6000

    if-nez v5, :cond_1d

    move-object/from16 v5, p14

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    const/16 v17, 0x4000

    :cond_1c
    or-int v31, v31, v17

    goto :goto_12

    :cond_1d
    move-object/from16 v5, p14

    :goto_12
    and-int v16, v6, v20

    move-object/from16 v5, p15

    if-nez v16, :cond_1f

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    const/high16 v19, 0x20000

    :cond_1e
    or-int v31, v31, v19

    :cond_1f
    and-int v16, v6, v25

    move-object/from16 v5, p16

    if-nez v16, :cond_21

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_20

    const/high16 v24, 0x100000

    :cond_20
    or-int v31, v31, v24

    :cond_21
    move/from16 v5, v31

    const v16, 0x12492493

    and-int v6, v8, v16

    const v9, 0x12492492

    if-ne v6, v9, :cond_23

    const v6, 0x92493

    and-int/2addr v6, v5

    const v9, 0x92492

    if-eq v6, v9, :cond_22

    goto :goto_13

    :cond_22
    const/4 v6, 0x0

    goto :goto_14

    :cond_23
    :goto_13
    const/4 v6, 0x1

    :goto_14
    and-int/lit8 v9, v8, 0x1

    invoke-virtual {v7, v9, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_41

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v11, :cond_25

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v6, :cond_24

    new-instance v9, Lew;

    const/16 v11, 0x1d

    invoke-direct {v9, v11}, Lew;-><init>(I)V

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    check-cast v9, Lkotlin/jvm/functions/Function0;

    goto :goto_15

    :cond_25
    move-object v9, v15

    :goto_15
    if-eqz v23, :cond_27

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v6, :cond_26

    new-instance v11, Ltx;

    const/4 v15, 0x0

    invoke-direct {v11, v15}, Ltx;-><init>(I)V

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_16

    :cond_26
    const/4 v15, 0x0

    :goto_16
    check-cast v11, Lkotlin/jvm/functions/Function0;

    goto :goto_17

    :cond_27
    const/4 v15, 0x0

    move-object v11, v14

    :goto_17
    sget-object v14, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v14, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    sget-object v15, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Context;

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt;->a(Landroidx/compose/runtime/Composer;)Z

    move-result v10

    move-object/from16 p5, v9

    and-int/lit16 v9, v8, 0x1c00

    move/from16 v17, v8

    const/16 v8, 0x800

    if-ne v9, v8, :cond_28

    const/4 v8, 0x1

    goto :goto_18

    :cond_28
    const/4 v8, 0x0

    :goto_18
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    or-int/2addr v8, v9

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_29

    if-ne v9, v6, :cond_2a

    :cond_29
    new-instance v31, Lcom/vuitton/android/presentation/compose/NestedScroll;

    new-instance v8, Llx;

    const/4 v9, 0x1

    invoke-direct {v8, v10, v1, v0, v9}, Llx;-><init>(ZLandroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;I)V

    new-instance v10, Ltx;

    invoke-direct {v10, v9}, Ltx;-><init>(I)V

    const/16 v35, 0x1

    const/16 v36, 0x0

    const/16 v32, 0x0

    move-object/from16 v33, v8

    move-object/from16 v34, v10

    invoke-direct/range {v31 .. v36}, Lcom/vuitton/android/presentation/compose/NestedScroll;-><init>(FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v9, v31

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v9, Lcom/vuitton/android/presentation/compose/NestedScroll;

    and-int/lit8 v8, v17, 0xe

    const/4 v10, 0x4

    if-ne v8, v10, :cond_2b

    const/4 v10, 0x1

    goto :goto_19

    :cond_2b
    const/4 v10, 0x0

    :goto_19
    const v18, 0xe000

    and-int v0, v17, v18

    move/from16 p6, v10

    const/16 v10, 0x4000

    if-ne v0, v10, :cond_2c

    const/4 v0, 0x1

    goto :goto_1a

    :cond_2c
    const/4 v0, 0x0

    :goto_1a
    or-int v0, p6, v0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    move/from16 p6, v0

    const/4 v0, 0x0

    if-nez p6, :cond_2d

    if-ne v10, v6, :cond_2e

    :cond_2d
    new-instance v10, Lcom/vuitton/android/presentation/screen/feed/components/FeedForYouSuccessScreenKt$FeedForYouSuccessScreen$3$1;

    invoke-direct {v10, v1, v4, v0}, Lcom/vuitton/android/presentation/screen/feed/components/FeedForYouSuccessScreenKt$FeedForYouSuccessScreen$3$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2e
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v4, v10, v7}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v10, :cond_30

    if-ne v0, v6, :cond_2f

    goto :goto_1b

    :cond_2f
    const/4 v10, 0x1

    goto :goto_1c

    :cond_30
    :goto_1b
    new-instance v0, Lmx;

    const/4 v10, 0x1

    invoke-direct {v0, v14, v10}, Lmx;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1c
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v0, v7, v8}, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt;->c(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_32

    if-ne v10, v6, :cond_31

    goto :goto_1d

    :cond_31
    const/4 v8, 0x0

    goto :goto_1e

    :cond_32
    :goto_1d
    new-instance v10, Lcom/vuitton/android/presentation/screen/feed/components/FeedForYouSuccessScreenKt$FeedForYouSuccessScreen$5$1;

    const/4 v8, 0x0

    invoke-direct {v10, v14, v8}, Lcom/vuitton/android/presentation/screen/feed/components/FeedForYouSuccessScreenKt$FeedForYouSuccessScreen$5$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1e
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v0, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v10, "FeedForYouSuccessScreen"

    invoke-direct {v0, v10}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v10, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v10}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v9, v8}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    const/high16 v9, 0x380000

    and-int v10, v5, v9

    move/from16 p6, v9

    const/high16 v9, 0x100000

    if-ne v10, v9, :cond_33

    const/4 v9, 0x1

    goto :goto_1f

    :cond_33
    const/4 v9, 0x0

    :goto_1f
    or-int/2addr v8, v9

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    const/high16 v9, 0x1c00000

    and-int v9, v17, v9

    const/high16 v10, 0x800000

    if-ne v9, v10, :cond_34

    const/4 v9, 0x1

    goto :goto_20

    :cond_34
    const/4 v9, 0x0

    :goto_20
    or-int/2addr v8, v9

    const/high16 v9, 0x70000

    and-int v10, v17, v9

    move/from16 v19, v9

    const/high16 v9, 0x20000

    if-ne v10, v9, :cond_35

    const/4 v9, 0x1

    goto :goto_21

    :cond_35
    const/4 v9, 0x0

    :goto_21
    or-int/2addr v8, v9

    and-int/lit8 v9, v5, 0xe

    const/4 v10, 0x4

    if-ne v9, v10, :cond_36

    const/4 v9, 0x1

    goto :goto_22

    :cond_36
    const/4 v9, 0x0

    :goto_22
    or-int/2addr v8, v9

    and-int v9, v17, p6

    const/high16 v10, 0x100000

    if-ne v9, v10, :cond_37

    const/4 v9, 0x1

    goto :goto_23

    :cond_37
    const/4 v9, 0x0

    :goto_23
    or-int/2addr v8, v9

    const/high16 v9, 0x70000000

    and-int v9, v17, v9

    const/high16 v10, 0x20000000

    if-ne v9, v10, :cond_38

    const/4 v9, 0x1

    goto :goto_24

    :cond_38
    const/4 v9, 0x0

    :goto_24
    or-int/2addr v8, v9

    const/high16 v9, 0xe000000

    and-int v9, v17, v9

    const/high16 v10, 0x4000000

    if-ne v9, v10, :cond_39

    const/4 v9, 0x1

    goto :goto_25

    :cond_39
    const/4 v9, 0x0

    :goto_25
    or-int/2addr v8, v9

    and-int v9, v5, v19

    const/high16 v10, 0x20000

    if-ne v9, v10, :cond_3a

    const/4 v9, 0x1

    goto :goto_26

    :cond_3a
    const/4 v9, 0x0

    :goto_26
    or-int/2addr v8, v9

    and-int/lit8 v9, v5, 0x70

    const/16 v10, 0x20

    if-ne v9, v10, :cond_3b

    const/4 v9, 0x1

    goto :goto_27

    :cond_3b
    const/4 v9, 0x0

    :goto_27
    or-int/2addr v8, v9

    and-int/lit16 v9, v5, 0x380

    const/16 v10, 0x100

    if-ne v9, v10, :cond_3c

    const/4 v9, 0x1

    goto :goto_28

    :cond_3c
    const/4 v9, 0x0

    :goto_28
    or-int/2addr v8, v9

    and-int v9, v5, v18

    const/16 v10, 0x4000

    if-ne v9, v10, :cond_3d

    const/4 v9, 0x1

    goto :goto_29

    :cond_3d
    const/4 v9, 0x0

    :goto_29
    or-int/2addr v8, v9

    and-int/lit16 v5, v5, 0x1c00

    const/16 v9, 0x800

    if-ne v5, v9, :cond_3e

    const/4 v10, 0x1

    goto :goto_2a

    :cond_3e
    const/4 v10, 0x0

    :goto_2a
    or-int v5, v8, v10

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_40

    if-ne v8, v6, :cond_3f

    goto :goto_2b

    :cond_3f
    move-object/from16 v15, p5

    move-object/from16 p5, v0

    move-object v0, v7

    move-object v14, v11

    move/from16 v19, v17

    goto :goto_2c

    :cond_40
    :goto_2b
    new-instance v2, Lux;

    move-object/from16 v9, p5

    move-object/from16 v10, p10

    move-object/from16 v16, p12

    move-object/from16 v18, p13

    move-object/from16 v5, p16

    move-object/from16 p5, v0

    move-object v4, v3

    move-object v0, v7

    move v8, v13

    move-object v6, v14

    move-object v7, v15

    move/from16 v19, v17

    move-object/from16 v3, p1

    move-object/from16 v15, p11

    move-object/from16 v17, p14

    move-object/from16 v14, p15

    move-object v13, v12

    move-object/from16 v12, p9

    invoke-direct/range {v2 .. v18}, Lux;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Landroid/content/Context;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    move-object v15, v9

    move-object v14, v11

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v8, v2

    :goto_2c
    check-cast v8, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v2, v19, 0x3

    and-int/lit8 v10, v2, 0x70

    const/16 v11, 0x1fc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v0

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/lazy/LazyDslKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object v0, v9

    :goto_2d
    move-object v7, v14

    move-object v6, v15

    goto :goto_2e

    :cond_41
    move-object v0, v7

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_2d

    :goto_2e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_42

    move-object v1, v0

    new-instance v0, Lvx;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v37, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v20}, Lvx;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v1, v37

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_42
    return-void
.end method
