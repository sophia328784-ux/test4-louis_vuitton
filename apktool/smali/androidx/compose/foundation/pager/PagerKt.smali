.class public abstract Landroidx/compose/foundation/pager/PagerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p15

    move/from16 v3, p16

    move/from16 v4, p17

    const-string v5, "HorizontalPager--8jOkeI"

    if-eqz v0, :cond_0

    invoke-static {v0, v5}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v6, 0x6eeaae29

    move-object/from16 v7, p14

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    and-int/lit8 v7, v2, 0x6

    if-nez v7, :cond_2

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v2

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    and-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_3

    or-int/lit8 v7, v7, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v2, 0x30

    if-nez v9, :cond_5

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v7, v9

    :cond_5
    :goto_3
    and-int/lit8 v9, v4, 0x4

    if-eqz v9, :cond_7

    or-int/lit16 v7, v7, 0x180

    :cond_6
    move-object/from16 v10, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v10, v2, 0x180

    if-nez v10, :cond_6

    move-object/from16 v10, p2

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x100

    goto :goto_4

    :cond_8
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v7, v11

    :goto_5
    and-int/lit8 v11, v4, 0x8

    if-eqz v11, :cond_a

    or-int/lit16 v7, v7, 0xc00

    :cond_9
    move-object/from16 v12, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v12, v2, 0xc00

    if-nez v12, :cond_9

    move-object/from16 v12, p3

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x800

    goto :goto_6

    :cond_b
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v7, v13

    :goto_7
    and-int/lit8 v13, v4, 0x10

    if-eqz v13, :cond_d

    or-int/lit16 v7, v7, 0x6000

    :cond_c
    move/from16 v14, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v14, v2, 0x6000

    if-nez v14, :cond_c

    move/from16 v14, p4

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v16, 0x4000

    goto :goto_8

    :cond_e
    const/16 v16, 0x2000

    :goto_8
    or-int v7, v7, v16

    :goto_9
    and-int/lit8 v16, v4, 0x20

    const/high16 v17, 0x30000

    if-eqz v16, :cond_f

    or-int v7, v7, v17

    move/from16 v15, p5

    goto :goto_b

    :cond_f
    and-int v18, v2, v17

    move/from16 v15, p5

    if-nez v18, :cond_11

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v18, 0x10000

    :goto_a
    or-int v7, v7, v18

    :cond_11
    :goto_b
    and-int/lit8 v18, v4, 0x40

    const/high16 v19, 0x180000

    if-eqz v18, :cond_13

    or-int v7, v7, v19

    :cond_12
    move-object/from16 v19, v0

    move-object/from16 v0, p6

    goto :goto_d

    :cond_13
    and-int v19, v2, v19

    if-nez v19, :cond_12

    move-object/from16 v19, v0

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    const/high16 v20, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v20, 0x80000

    :goto_c
    or-int v7, v7, v20

    :goto_d
    const/high16 v20, 0xc00000

    and-int v20, v2, v20

    if-nez v20, :cond_17

    and-int/lit16 v0, v4, 0x80

    if-nez v0, :cond_15

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    const/high16 v20, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v0, p7

    :cond_16
    const/high16 v20, 0x400000

    :goto_e
    or-int v7, v7, v20

    goto :goto_f

    :cond_17
    move-object/from16 v0, p7

    :goto_f
    and-int/lit16 v0, v4, 0x100

    const/high16 v20, 0x6000000

    if-eqz v0, :cond_19

    or-int v7, v7, v20

    :cond_18
    move/from16 v20, v0

    move/from16 v0, p8

    goto :goto_11

    :cond_19
    and-int v20, v2, v20

    if-nez v20, :cond_18

    move/from16 v20, v0

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v21

    if-eqz v21, :cond_1a

    const/high16 v21, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v21, 0x2000000

    :goto_10
    or-int v7, v7, v21

    :goto_11
    and-int/lit16 v0, v4, 0x200

    const/high16 v21, 0x30000000

    if-eqz v0, :cond_1c

    or-int v7, v7, v21

    :cond_1b
    move/from16 v21, v0

    move/from16 v0, p9

    goto :goto_13

    :cond_1c
    and-int v21, v2, v21

    if-nez v21, :cond_1b

    move/from16 v21, v0

    move/from16 v0, p9

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v22

    if-eqz v22, :cond_1d

    const/high16 v22, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v22, 0x10000000

    :goto_12
    or-int v7, v7, v22

    :goto_13
    or-int/lit8 v22, v3, 0x6

    and-int/lit8 v23, v3, 0x30

    if-nez v23, :cond_1e

    or-int/lit8 v22, v3, 0x16

    :cond_1e
    move/from16 v0, v22

    or-int/lit16 v1, v0, 0x180

    move/from16 v22, v1

    and-int/lit16 v1, v3, 0xc00

    if-nez v1, :cond_1f

    or-int/lit16 v1, v0, 0x580

    goto :goto_14

    :cond_1f
    move/from16 v1, v22

    :goto_14
    and-int/lit16 v0, v3, 0x6000

    if-nez v0, :cond_21

    move-object/from16 v0, p13

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    const/16 v22, 0x4000

    goto :goto_15

    :cond_20
    const/16 v22, 0x2000

    :goto_15
    or-int v1, v1, v22

    goto :goto_16

    :cond_21
    move-object/from16 v0, p13

    :goto_16
    const v22, 0x12492493

    and-int v0, v7, v22

    const v2, 0x12492492

    const/16 v22, 0x1

    const/16 v23, 0x0

    if-ne v0, v2, :cond_23

    and-int/lit16 v0, v1, 0x2493

    const/16 v2, 0x2492

    if-eq v0, v2, :cond_22

    goto :goto_17

    :cond_22
    move/from16 v0, v23

    goto :goto_18

    :cond_23
    :goto_17
    move/from16 v0, v22

    :goto_18
    and-int/lit8 v2, v7, 0x1

    invoke-virtual {v6, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, p15, 0x1

    const v2, -0x1c00001

    if-eqz v0, :cond_26

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_1a

    :cond_24
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_25

    and-int/2addr v7, v2

    :cond_25
    and-int/lit16 v0, v1, -0x1c71

    move-object/from16 v13, p6

    move-object/from16 v5, p7

    move/from16 v3, p9

    move-object/from16 v11, p10

    move-object/from16 v16, v6

    move v1, v7

    move-object v2, v10

    move-object v10, v12

    move v8, v14

    move/from16 v6, p8

    move-object/from16 v14, p11

    move-object/from16 v7, p12

    :goto_19
    move v9, v15

    goto/16 :goto_22

    :cond_26
    :goto_1a
    if-eqz v8, :cond_27

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    :cond_27
    move-object/from16 v0, v19

    :goto_1b
    const/4 v5, 0x0

    if-eqz v9, :cond_28

    sget-object v8, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v5}, Landroidx/compose/foundation/layout/PaddingKt;->a(F)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v8

    goto :goto_1c

    :cond_28
    move-object v8, v10

    :goto_1c
    if-eqz v11, :cond_29

    sget-object v9, Landroidx/compose/foundation/pager/PageSize$Fill;->a:Landroidx/compose/foundation/pager/PageSize$Fill;

    goto :goto_1d

    :cond_29
    move-object v9, v12

    :goto_1d
    if-eqz v13, :cond_2a

    move/from16 v14, v23

    :cond_2a
    if-eqz v16, :cond_2b

    sget-object v10, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    move v15, v5

    :cond_2b
    if-eqz v18, :cond_2c

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    goto :goto_1e

    :cond_2c
    move-object/from16 v5, p6

    :goto_1e
    and-int/lit16 v10, v4, 0x80

    if-eqz v10, :cond_2d

    and-int/lit8 v10, v7, 0xe

    or-int v10, v10, v17

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 p1, p0

    move-object/from16 p4, v6

    move/from16 p5, v10

    move/from16 p6, v11

    move-object/from16 p2, v12

    move-object/from16 p3, v13

    invoke-static/range {p1 .. p6}, Landroidx/compose/foundation/pager/PagerDefaults;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;Landroidx/compose/animation/core/TweenSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    move-result-object v6

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    and-int/2addr v7, v2

    goto :goto_1f

    :cond_2d
    move-object/from16 v10, p0

    move-object v11, v6

    move-object/from16 v6, p7

    :goto_1f
    if-eqz v20, :cond_2e

    goto :goto_20

    :cond_2e
    move/from16 v22, p8

    :goto_20
    if-eqz v21, :cond_2f

    goto :goto_21

    :cond_2f
    move/from16 v23, p9

    :goto_21
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    and-int/lit8 v12, v7, 0xe

    or-int/lit16 v12, v12, 0x1b0

    invoke-static {v10, v2, v11, v12}, Landroidx/compose/foundation/pager/PagerDefaults;->b(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v2

    invoke-static {v11}, Landroidx/compose/foundation/OverscrollKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v12

    and-int/lit16 v1, v1, -0x1c71

    sget-object v13, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->a:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    move-object/from16 v19, v0

    move v0, v1

    move v1, v7

    move-object v10, v9

    move-object/from16 v16, v11

    move-object v7, v12

    move/from16 v3, v23

    move-object v11, v2

    move-object v2, v8

    move v8, v14

    move-object v14, v13

    move-object v13, v5

    move-object v5, v6

    move/from16 v6, v22

    goto/16 :goto_19

    :goto_22
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v12, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v12, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    shr-int/lit8 v15, v1, 0x3

    and-int/lit8 v15, v15, 0xe

    or-int/lit16 v15, v15, 0x6000

    shl-int/lit8 v17, v1, 0x3

    and-int/lit8 v17, v17, 0x70

    or-int v15, v15, v17

    move/from16 p1, v0

    and-int/lit16 v0, v1, 0x380

    or-int/2addr v0, v15

    shr-int/lit8 v15, v1, 0x12

    and-int/lit16 v15, v15, 0x1c00

    or-int/2addr v0, v15

    shr-int/lit8 v15, v1, 0x6

    const/high16 v17, 0x70000

    and-int v18, v15, v17

    or-int v0, v0, v18

    const/high16 v18, 0x380000

    and-int v20, v15, v18

    or-int v0, v0, v20

    shl-int/lit8 v20, v1, 0xc

    const/high16 v21, 0xe000000

    and-int v21, v20, v21

    or-int v0, v0, v21

    const/high16 v21, 0x70000000

    and-int v20, v20, v21

    or-int v0, v0, v20

    shr-int/lit8 v1, v1, 0x9

    and-int/lit8 v1, v1, 0xe

    or-int/lit16 v1, v1, 0xc00

    move/from16 p2, v0

    shl-int/lit8 v0, p1, 0x6

    move/from16 v20, v1

    and-int/lit16 v1, v0, 0x380

    or-int v1, v20, v1

    const v20, 0xe000

    and-int v15, v15, v20

    or-int/2addr v1, v15

    shl-int/lit8 v15, p1, 0x9

    and-int v15, v15, v17

    or-int/2addr v1, v15

    and-int v0, v0, v18

    or-int v18, v1, v0

    move-object/from16 v1, p0

    move/from16 v17, p2

    move-object/from16 v15, p13

    move-object/from16 v0, v19

    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move v4, v8

    move-object v8, v5

    move v5, v4

    move v4, v9

    move v9, v6

    move v6, v4

    move-object v4, v13

    move-object v13, v7

    move-object v7, v4

    move-object v4, v10

    move-object v12, v14

    move v10, v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_23

    :cond_30
    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move-object v3, v10

    move-object v4, v12

    move v5, v14

    move v6, v15

    move-object/from16 v2, v19

    move/from16 v10, p9

    move-object/from16 v12, p11

    :goto_23
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_31

    move-object v1, v0

    new-instance v0, Lsl0;

    move-object/from16 v14, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v24, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v17}, Lsl0;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;III)V

    move-object/from16 v1, v24

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_31
    return-void
.end method

.method public static final b(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_0

    const-string v2, "VerticalPager--8jOkeI"

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x5ecb3657

    move-object/from16 v3, p11

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int v3, p12, v3

    const v4, 0x365b6d80

    or-int/2addr v3, v4

    const v4, 0x12492493

    and-int/2addr v4, v3

    const v5, 0x12492492

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    and-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v4, p12, 0x1

    const v5, -0x1c00001

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/2addr v3, v5

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v11, p7

    move-object/from16 v14, p8

    move-object/from16 v7, p9

    move-object v8, v2

    move-object v2, v1

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v4, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v4, 0x0

    invoke-static {v4}, Landroidx/compose/foundation/layout/PaddingKt;->a(F)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v4

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    and-int/lit8 v8, v3, 0xe

    const/high16 v9, 0x30000

    or-int/2addr v8, v9

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 p1, v1

    move-object/from16 p4, v2

    move/from16 p5, v8

    move/from16 p6, v9

    move-object/from16 p2, v10

    move-object/from16 p3, v11

    invoke-static/range {p1 .. p6}, Landroidx/compose/foundation/pager/PagerDefaults;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;Landroidx/compose/animation/core/TweenSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v8, p4

    and-int/2addr v5, v3

    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    and-int/lit8 v3, v3, 0xe

    or-int/lit16 v3, v3, 0x1b0

    invoke-static {v2, v9, v8, v3}, Landroidx/compose/foundation/pager/PagerDefaults;->b(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v3

    invoke-static {v8}, Landroidx/compose/foundation/OverscrollKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v9

    sget-object v10, Landroidx/compose/foundation/pager/PageSize$Fill;->a:Landroidx/compose/foundation/pager/PageSize$Fill;

    sget-object v11, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->a:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    move-object v12, v7

    move-object v7, v9

    move-object v14, v11

    move-object v11, v3

    move v3, v5

    move-object v5, v1

    :goto_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object v2, v4

    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    shl-int/lit8 v1, v3, 0x3

    and-int/lit8 v1, v1, 0x70

    const v3, 0x36186d86

    or-int v17, v1, v3

    const v18, 0x1b6d86

    const/4 v3, 0x0

    move-object/from16 v16, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v15, p10

    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object v3, v2

    move-object v4, v10

    move-object v8, v11

    move-object v9, v14

    move-object v10, v7

    move v7, v6

    move-object v6, v5

    move-object v5, v12

    goto :goto_4

    :cond_5
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    :goto_4
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_6

    move-object v2, v0

    new-instance v0, Lzl;

    move-object/from16 v1, p0

    move-object/from16 v11, p10

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lzl;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method
