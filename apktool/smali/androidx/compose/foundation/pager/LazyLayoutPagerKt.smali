.class public abstract Landroidx/compose/foundation/pager/LazyLayoutPagerKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v14, p5

    move/from16 v15, p6

    move/from16 v9, p8

    move/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v2, p11

    move-object/from16 v13, p12

    move-object/from16 v7, p13

    move/from16 v10, p17

    move/from16 v11, p18

    const-string v8, "Pager-eLwUrMk"

    if-eqz v0, :cond_0

    invoke-static {v0, v8}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object/from16 v16, v8

    const v8, -0x22247a99

    move-object/from16 v12, p16

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    and-int/lit8 v12, v10, 0x6

    const/16 v17, 0x2

    move/from16 p0, v12

    if-nez p0, :cond_2

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v18, 0x4

    goto :goto_0

    :cond_1
    move/from16 v18, v17

    :goto_0
    or-int v18, v10, v18

    goto :goto_1

    :cond_2
    move/from16 v18, v10

    :goto_1
    and-int/lit8 v19, v10, 0x30

    const/16 v20, 0x10

    if-nez v19, :cond_4

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/16 v19, 0x20

    goto :goto_2

    :cond_3
    move/from16 v19, v20

    :goto_2
    or-int v18, v18, v19

    :cond_4
    and-int/lit16 v12, v10, 0x180

    const/16 v19, 0x80

    move-object/from16 v21, v0

    if-nez v12, :cond_6

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v12, 0x100

    goto :goto_3

    :cond_5
    move/from16 v12, v19

    :goto_3
    or-int v18, v18, v12

    :cond_6
    and-int/lit16 v12, v10, 0xc00

    const/16 v22, 0x400

    if-nez v12, :cond_8

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x800

    goto :goto_4

    :cond_7
    move/from16 v12, v22

    :goto_4
    or-int v18, v18, v12

    :cond_8
    and-int/lit16 v12, v10, 0x6000

    const/16 v23, 0x2000

    if-nez v12, :cond_a

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x4000

    goto :goto_5

    :cond_9
    move/from16 v12, v23

    :goto_5
    or-int v18, v18, v12

    :cond_a
    const/high16 v12, 0x30000

    and-int v24, v10, v12

    const/high16 v25, 0x10000

    if-nez v24, :cond_c

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    const/high16 v24, 0x20000

    goto :goto_6

    :cond_b
    move/from16 v24, v25

    :goto_6
    or-int v18, v18, v24

    :cond_c
    const/high16 v24, 0x180000

    and-int v26, v10, v24

    const/high16 v27, 0x80000

    move/from16 v28, v12

    if-nez v26, :cond_e

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v26

    if-eqz v26, :cond_d

    const/high16 v26, 0x100000

    goto :goto_7

    :cond_d
    move/from16 v26, v27

    :goto_7
    or-int v18, v18, v26

    :cond_e
    const/high16 v26, 0xc00000

    and-int v29, v10, v26

    move-object/from16 v0, p7

    if-nez v29, :cond_10

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    const/high16 v30, 0x800000

    goto :goto_8

    :cond_f
    const/high16 v30, 0x400000

    :goto_8
    or-int v18, v18, v30

    :cond_10
    const/high16 v30, 0x6000000

    and-int v31, v10, v30

    if-nez v31, :cond_12

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v31

    if-eqz v31, :cond_11

    const/high16 v31, 0x4000000

    goto :goto_9

    :cond_11
    const/high16 v31, 0x2000000

    :goto_9
    or-int v18, v18, v31

    :cond_12
    const/high16 v31, 0x30000000

    and-int v32, v10, v31

    if-nez v32, :cond_14

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v32

    if-eqz v32, :cond_13

    const/high16 v32, 0x20000000

    goto :goto_a

    :cond_13
    const/high16 v32, 0x10000000

    :goto_a
    or-int v18, v18, v32

    :cond_14
    and-int/lit8 v32, v11, 0x6

    if-nez v32, :cond_16

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_15

    const/16 v17, 0x4

    :cond_15
    or-int v17, v11, v17

    goto :goto_b

    :cond_16
    move/from16 v17, v11

    :goto_b
    and-int/lit8 v32, v11, 0x30

    if-nez v32, :cond_18

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_17

    const/16 v20, 0x20

    :cond_17
    or-int v17, v17, v20

    :cond_18
    and-int/lit16 v12, v11, 0x180

    const/4 v15, 0x0

    if-nez v12, :cond_1a

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    const/16 v19, 0x100

    :cond_19
    or-int v17, v17, v19

    :cond_1a
    and-int/lit16 v12, v11, 0xc00

    if-nez v12, :cond_1c

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    const/16 v22, 0x800

    :cond_1b
    or-int v17, v17, v22

    :cond_1c
    and-int/lit16 v12, v11, 0x6000

    if-nez v12, :cond_1e

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    const/16 v23, 0x4000

    :cond_1d
    or-int v17, v17, v23

    :cond_1e
    and-int v12, v11, v28

    if-nez v12, :cond_20

    move-object/from16 v12, p14

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    const/high16 v25, 0x20000

    :cond_1f
    or-int v17, v17, v25

    goto :goto_c

    :cond_20
    move-object/from16 v12, p14

    :goto_c
    and-int v19, v11, v24

    move-object/from16 v15, p15

    if-nez v19, :cond_22

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    const/high16 v27, 0x100000

    :cond_21
    or-int v17, v17, v27

    :cond_22
    move/from16 v0, v17

    const v17, 0x12492493

    and-int v2, v18, v17

    const v10, 0x12492492

    const/16 v17, 0x1

    if-ne v2, v10, :cond_24

    const v2, 0x92493

    and-int/2addr v2, v0

    const v10, 0x92492

    if-eq v2, v10, :cond_23

    goto :goto_d

    :cond_23
    const/4 v2, 0x0

    goto :goto_e

    :cond_24
    :goto_d
    move/from16 v2, v17

    :goto_e
    and-int/lit8 v10, v18, 0x1

    invoke-virtual {v8, v10, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_6a

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-ltz v9, :cond_25

    goto :goto_f

    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "beyondViewportPageCount should be greater than or equal to 0, you selected "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_f
    and-int/lit8 v2, v18, 0x70

    const/16 v10, 0x20

    if-ne v2, v10, :cond_26

    move/from16 v10, v17

    goto :goto_10

    :cond_26
    const/4 v10, 0x0

    :goto_10
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    move/from16 v23, v10

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v23, :cond_27

    if-ne v14, v10, :cond_28

    :cond_27
    new-instance v14, Lu2;

    const/16 v11, 0x8

    invoke-direct {v14, v1, v11}, Lu2;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_28
    check-cast v14, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v23, v18, 0x3

    and-int/lit8 v25, v23, 0xe

    shr-int/lit8 v11, v0, 0xf

    and-int/lit8 v27, v11, 0x70

    or-int v27, v25, v27

    move/from16 v32, v11

    and-int/lit16 v11, v0, 0x380

    or-int v11, v27, v11

    move/from16 v27, v0

    invoke-static {v15, v8}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    move/from16 v33, v11

    const/4 v11, 0x0

    invoke-static {v11, v8}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v15

    and-int/lit8 v11, v33, 0xe

    xor-int/lit8 v11, v11, 0x6

    const/4 v9, 0x4

    if-le v11, v9, :cond_29

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2a

    :cond_29
    and-int/lit8 v11, v33, 0x6

    if-ne v11, v9, :cond_2b

    :cond_2a
    move/from16 v9, v17

    goto :goto_11

    :cond_2b
    const/4 v9, 0x0

    :goto_11
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v9, v11

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v9, v11

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v9, v11

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v9, :cond_2c

    if-ne v11, v10, :cond_2d

    :cond_2c
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->k()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v9

    new-instance v11, Landroidx/compose/foundation/pager/d;

    invoke-direct {v11, v0, v15, v14}, Landroidx/compose/foundation/pager/d;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v9, v11}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->k()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v9

    new-instance v11, Landroidx/compose/foundation/pager/f;

    invoke-direct {v11, v0, v1}, Landroidx/compose/foundation/pager/f;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/pager/PagerState;)V

    invoke-static {v9, v11}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v34

    new-instance v33, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$1;

    const-string v37, "getValue()Ljava/lang/Object;"

    const/16 v38, 0x0

    const-class v35, Landroidx/compose/runtime/State;

    const-string v36, "value"

    invoke-direct/range {v33 .. v38}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v11, v33

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2d
    check-cast v11, Lkotlin/reflect/KProperty0;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_2e

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v8}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2e
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/16 v9, 0x20

    if-ne v2, v9, :cond_2f

    move/from16 v9, v17

    goto :goto_12

    :cond_2f
    const/4 v9, 0x0

    :goto_12
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v9, :cond_30

    if-ne v14, v10, :cond_31

    :cond_30
    new-instance v14, Lu2;

    const/16 v9, 0x9

    invoke-direct {v14, v1, v9}, Lu2;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_31
    check-cast v14, Lkotlin/jvm/functions/Function0;

    const v9, 0xfff0

    and-int v9, v18, v9

    shr-int/lit8 v15, v18, 0x9

    const/high16 v33, 0x70000

    and-int v34, v15, v33

    or-int v9, v9, v34

    const/high16 v34, 0x380000

    and-int v15, v15, v34

    or-int/2addr v9, v15

    shl-int/lit8 v15, v27, 0x15

    const/high16 v35, 0x1c00000

    and-int v15, v15, v35

    or-int/2addr v9, v15

    shl-int/lit8 v15, v27, 0xf

    const/high16 v27, 0xe000000

    and-int v36, v15, v27

    or-int v9, v9, v36

    const/high16 v36, 0x70000000

    and-int v15, v15, v36

    or-int/2addr v9, v15

    and-int/lit8 v15, v9, 0x70

    xor-int/lit8 v15, v15, 0x30

    move/from16 v37, v2

    const/16 v2, 0x20

    if-le v15, v2, :cond_32

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_33

    :cond_32
    and-int/lit8 v15, v9, 0x30

    if-ne v15, v2, :cond_34

    :cond_33
    move/from16 v15, v17

    goto :goto_13

    :cond_34
    const/4 v15, 0x0

    :goto_13
    and-int/lit16 v2, v9, 0x380

    xor-int/lit16 v2, v2, 0x180

    const/16 v1, 0x100

    if-le v2, v1, :cond_35

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    :cond_35
    and-int/lit16 v2, v9, 0x180

    if-ne v2, v1, :cond_37

    :cond_36
    move/from16 v1, v17

    goto :goto_14

    :cond_37
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v1, v15

    and-int/lit16 v2, v9, 0x1c00

    xor-int/lit16 v2, v2, 0xc00

    const/16 v15, 0x800

    if-le v2, v15, :cond_38

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-nez v2, :cond_39

    :cond_38
    and-int/lit16 v2, v9, 0xc00

    if-ne v2, v15, :cond_3a

    :cond_39
    move/from16 v2, v17

    goto :goto_15

    :cond_3a
    const/4 v2, 0x0

    :goto_15
    or-int/2addr v1, v2

    const v2, 0xe000

    and-int/2addr v2, v9

    xor-int/lit16 v2, v2, 0x6000

    const/16 v15, 0x4000

    if-le v2, v15, :cond_3b

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v2

    if-nez v2, :cond_3c

    :cond_3b
    and-int/lit16 v2, v9, 0x6000

    if-ne v2, v15, :cond_3d

    :cond_3c
    move/from16 v2, v17

    goto :goto_16

    :cond_3d
    const/4 v2, 0x0

    :goto_16
    or-int/2addr v1, v2

    and-int v2, v9, v27

    xor-int v2, v2, v30

    const/high16 v15, 0x4000000

    if-le v2, v15, :cond_3e

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    :cond_3e
    and-int v2, v9, v30

    if-ne v2, v15, :cond_40

    :cond_3f
    move/from16 v2, v17

    goto :goto_17

    :cond_40
    const/4 v2, 0x0

    :goto_17
    or-int/2addr v1, v2

    and-int v2, v9, v36

    xor-int v2, v2, v31

    const/high16 v15, 0x20000000

    if-le v2, v15, :cond_41

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    :cond_41
    and-int v2, v9, v31

    if-ne v2, v15, :cond_43

    :cond_42
    move/from16 v2, v17

    goto :goto_18

    :cond_43
    const/4 v2, 0x0

    :goto_18
    or-int/2addr v1, v2

    and-int v2, v9, v34

    xor-int v2, v2, v24

    const/high16 v15, 0x100000

    if-le v2, v15, :cond_44

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v2

    if-nez v2, :cond_45

    :cond_44
    and-int v2, v9, v24

    if-ne v2, v15, :cond_46

    :cond_45
    move/from16 v2, v17

    goto :goto_19

    :cond_46
    const/4 v2, 0x0

    :goto_19
    or-int/2addr v1, v2

    and-int v2, v9, v35

    xor-int v2, v2, v26

    const/high16 v15, 0x800000

    if-le v2, v15, :cond_47

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    :cond_47
    and-int v2, v9, v26

    if-ne v2, v15, :cond_49

    :cond_48
    move/from16 v2, v17

    goto :goto_1a

    :cond_49
    const/4 v2, 0x0

    :goto_1a
    or-int/2addr v1, v2

    and-int/lit8 v2, v32, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v15, 0x4

    if-le v2, v15, :cond_4a

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    :cond_4a
    and-int/lit8 v2, v32, 0x6

    if-ne v2, v15, :cond_4c

    :cond_4b
    move/from16 v2, v17

    goto :goto_1b

    :cond_4c
    const/4 v2, 0x0

    :goto_1b
    or-int/2addr v1, v2

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    and-int v2, v9, v33

    xor-int v2, v2, v28

    const/high16 v15, 0x20000

    if-le v2, v15, :cond_4d

    move/from16 v2, p8

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v20

    if-nez v20, :cond_4e

    goto :goto_1c

    :cond_4d
    move/from16 v2, p8

    :goto_1c
    and-int v9, v9, v28

    if-ne v9, v15, :cond_4f

    :cond_4e
    move/from16 v9, v17

    goto :goto_1d

    :cond_4f
    const/4 v9, 0x0

    :goto_1d
    or-int/2addr v1, v9

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v1, :cond_50

    if-ne v9, v10, :cond_51

    :cond_50
    move-object v13, v0

    goto :goto_1e

    :cond_51
    move-object/from16 v6, p1

    move-object v13, v0

    move-object v14, v8

    move-object v0, v9

    move-object v1, v11

    move-object/from16 v39, v16

    const/4 v15, 0x4

    move v9, v2

    move-object/from16 v16, v10

    move-object/from16 v2, p4

    goto :goto_1f

    :goto_1e
    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;

    move-object v1, v14

    move-object v14, v8

    move-object v8, v1

    move-object/from16 v1, p1

    move-object v9, v7

    move-object v7, v11

    move-object/from16 v39, v16

    const/4 v15, 0x4

    move v11, v2

    move-object/from16 v16, v10

    move-object/from16 v2, p4

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v13}, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/pager/PageSize;Lkotlin/reflect/KProperty0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlinx/coroutines/CoroutineScope;)V

    move-object v6, v1

    move-object v1, v7

    move v9, v11

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1f
    move-object v10, v0

    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v2, v7, :cond_52

    move/from16 v0, v17

    goto :goto_20

    :cond_52
    const/4 v0, 0x0

    :goto_20
    xor-int/lit8 v3, v25, 0x6

    if-le v3, v15, :cond_53

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    :cond_53
    and-int/lit8 v3, v23, 0x6

    if-ne v3, v15, :cond_55

    :cond_54
    move/from16 v3, v17

    goto :goto_21

    :cond_55
    const/4 v3, 0x0

    :goto_21
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_56

    move-object/from16 v3, v16

    if-ne v5, v3, :cond_57

    goto :goto_22

    :cond_56
    move-object/from16 v3, v16

    :goto_22
    new-instance v5, Landroidx/compose/foundation/pager/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;

    invoke-direct {v5, v6, v0}, Landroidx/compose/foundation/pager/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Z)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_57
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    move/from16 v0, v37

    const/16 v8, 0x20

    if-ne v0, v8, :cond_58

    move/from16 v11, v17

    goto :goto_23

    :cond_58
    const/4 v11, 0x0

    :goto_23
    and-int v12, v18, v33

    const/high16 v15, 0x20000

    if-ne v12, v15, :cond_59

    move/from16 v12, v17

    goto :goto_24

    :cond_59
    const/4 v12, 0x0

    :goto_24
    or-int/2addr v11, v12

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_5b

    if-ne v12, v3, :cond_5a

    goto :goto_25

    :cond_5a
    move-object/from16 v11, p5

    goto :goto_26

    :cond_5b
    :goto_25
    new-instance v12, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    move-object/from16 v11, p5

    invoke-direct {v12, v11, v6}, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/TargetedFlingBehavior;Landroidx/compose/foundation/pager/PagerState;)V

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_26
    check-cast v12, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    sget-object v15, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v16, v1

    const v1, -0x32e58e40

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5c

    move/from16 v0, v17

    goto :goto_27

    :cond_5c
    const/4 v0, 0x0

    :goto_27
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_5d

    if-ne v1, v3, :cond_5e

    :cond_5d
    new-instance v1, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;

    invoke-direct {v1, v6, v15, v8}, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5e
    move-object v8, v1

    check-cast v8, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-eqz p6, :cond_67

    const v0, -0x32df239d

    move-object/from16 v1, v39

    invoke-static {v14, v0, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    shr-int/lit8 v1, v18, 0x15

    and-int/lit8 v1, v1, 0x70

    or-int v1, v25, v1

    and-int/lit8 v15, v1, 0xe

    xor-int/lit8 v15, v15, 0x6

    move/from16 v18, v1

    const/4 v1, 0x4

    if-le v15, v1, :cond_5f

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_60

    :cond_5f
    and-int/lit8 v15, v18, 0x6

    if-ne v15, v1, :cond_61

    :cond_60
    move/from16 v1, v17

    goto :goto_28

    :cond_61
    const/4 v1, 0x0

    :goto_28
    and-int/lit8 v15, v18, 0x70

    xor-int/lit8 v15, v15, 0x30

    move/from16 p0, v1

    const/16 v1, 0x20

    if-le v15, v1, :cond_62

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v15

    if-nez v15, :cond_63

    :cond_62
    and-int/lit8 v15, v18, 0x30

    if-ne v15, v1, :cond_64

    :cond_63
    move/from16 v1, v17

    goto :goto_29

    :cond_64
    const/4 v1, 0x0

    :goto_29
    or-int v1, p0, v1

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v1, :cond_65

    if-ne v15, v3, :cond_66

    :cond_65
    new-instance v15, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;

    invoke-direct {v15, v6, v9}, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_66
    check-cast v15, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;

    iget-object v1, v6, Landroidx/compose/foundation/pager/PagerState;->w:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    invoke-static {v0, v15, v1, v4, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;->a(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2a
    move-object v15, v0

    goto :goto_2b

    :cond_67
    move-object/from16 v1, v39

    const/4 v3, 0x0

    const v0, -0x32d894c5

    invoke-static {v14, v0, v3, v1}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    goto :goto_2a

    :goto_2b
    iget-object v0, v6, Landroidx/compose/foundation/pager/PagerState;->z:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    move-object/from16 v1, v21

    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v3, v6, Landroidx/compose/foundation/pager/PagerState;->x:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v3, v2

    move-object v2, v5

    move-object/from16 v1, v16

    move v5, v4

    move/from16 v4, p6

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v2, v3

    if-ne v2, v7, :cond_68

    move/from16 v1, v17

    goto :goto_2c

    :cond_68
    const/4 v1, 0x0

    :goto_2c
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    if-eqz p6, :cond_69

    new-instance v4, Lag;

    const/4 v5, 0x7

    invoke-direct {v4, v1, v6, v13, v5}, Lag;-><init>(ZLjava/lang/Object;Ljava/lang/Object;I)V

    const/4 v1, 0x0

    invoke-static {v3, v1, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_2d

    :cond_69
    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :goto_2d
    invoke-interface {v0, v15}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v7, v6, Landroidx/compose/foundation/pager/PagerState;->p:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move/from16 v5, p3

    move/from16 v4, p6

    move-object v1, v6

    move-object v6, v12

    move-object v12, v3

    move-object/from16 v3, p7

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/ScrollableAreaKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v7, v1

    new-instance v1, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1;

    invoke-direct {v1, v7}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    invoke-static {v12, v7, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v12, p11

    const/4 v1, 0x0

    invoke-static {v0, v12, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v3, v7, Landroidx/compose/foundation/pager/PagerState;->u:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    const/4 v6, 0x0

    move-object v4, v10

    move-object v5, v14

    move-object/from16 v1, v16

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2e

    :cond_6a
    move-object/from16 v11, p5

    move-object/from16 v12, p11

    move-object v7, v1

    move-object v14, v8

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_6b

    move-object v1, v0

    new-instance v0, Lg90;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v40, v1

    move-object v2, v7

    move-object v6, v11

    move-object/from16 v1, v21

    move/from16 v7, p6

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v18}, Lg90;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    move-object/from16 v1, v40

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_6b
    return-void
.end method
