.class public abstract Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridKt;
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
.method public static final a(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v5, p4

    move/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    const-string v12, "LazyStaggeredGrid-w41Enmo"

    if-eqz v0, :cond_0

    invoke-static {v0, v12}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v13, v0

    const v0, -0x71897a5e

    move-object/from16 v2, p10

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    and-int/lit8 v0, v11, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v11

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_1
    and-int/lit8 v4, v11, 0x30

    if-nez v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_2

    :cond_3
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    :cond_4
    and-int/lit16 v4, v11, 0x180

    if-nez v4, :cond_7

    and-int/lit16 v4, v11, 0x200

    if-nez v4, :cond_5

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_3

    :cond_5
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_6

    const/16 v4, 0x100

    goto :goto_4

    :cond_6
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v0, v4

    :cond_7
    and-int/lit16 v4, v11, 0xc00

    if-nez v4, :cond_9

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x800

    goto :goto_5

    :cond_8
    const/16 v4, 0x400

    :goto_5
    or-int/2addr v0, v4

    :cond_9
    and-int/lit16 v4, v11, 0x6000

    if-nez v4, :cond_b

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x4000

    goto :goto_6

    :cond_a
    const/16 v4, 0x2000

    :goto_6
    or-int/2addr v0, v4

    :cond_b
    const/high16 v4, 0x30000

    and-int v17, v11, v4

    move/from16 v18, v4

    const/4 v4, 0x0

    if-nez v17, :cond_d

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-eqz v17, :cond_c

    const/high16 v17, 0x20000

    goto :goto_7

    :cond_c
    const/high16 v17, 0x10000

    :goto_7
    or-int v0, v0, v17

    :cond_d
    const/high16 v17, 0x180000

    and-int v19, v11, v17

    move-object/from16 v4, p5

    if-nez v19, :cond_f

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    const/high16 v20, 0x100000

    goto :goto_8

    :cond_e
    const/high16 v20, 0x80000

    :goto_8
    or-int v0, v0, v20

    :cond_f
    const/high16 v20, 0xc00000

    and-int v20, v11, v20

    if-nez v20, :cond_11

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x800000

    goto :goto_9

    :cond_10
    const/high16 v20, 0x400000

    :goto_9
    or-int v0, v0, v20

    :cond_11
    const/high16 v20, 0x6000000

    and-int v21, v11, v20

    move-object/from16 v7, p7

    if-nez v21, :cond_13

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    const/high16 v22, 0x4000000

    goto :goto_a

    :cond_12
    const/high16 v22, 0x2000000

    :goto_a
    or-int v0, v0, v22

    :cond_13
    const/high16 v22, 0x30000000

    and-int v22, v11, v22

    const/4 v6, 0x0

    if-nez v22, :cond_15

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v22

    if-eqz v22, :cond_14

    const/high16 v22, 0x20000000

    goto :goto_b

    :cond_14
    const/high16 v22, 0x10000000

    :goto_b
    or-int v0, v0, v22

    :cond_15
    move/from16 v22, v0

    and-int/lit8 v0, p12, 0x6

    if-nez v0, :cond_17

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x4

    goto :goto_c

    :cond_16
    const/4 v0, 0x2

    :goto_c
    or-int v0, p12, v0

    goto :goto_d

    :cond_17
    move/from16 v0, p12

    :goto_d
    and-int/lit8 v23, p12, 0x30

    if-nez v23, :cond_19

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    const/16 v23, 0x20

    goto :goto_e

    :cond_18
    const/16 v23, 0x10

    :goto_e
    or-int v0, v0, v23

    :cond_19
    const v23, 0x12492493

    and-int v6, v22, v23

    const v2, 0x12492492

    const/16 v15, 0x12

    const/16 v24, 0x1

    if-ne v6, v2, :cond_1b

    and-int/lit8 v2, v0, 0x13

    if-eq v2, v15, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 v2, 0x0

    goto :goto_10

    :cond_1b
    :goto_f
    move/from16 v2, v24

    :goto_10
    and-int/lit8 v6, v22, 0x1

    invoke-virtual {v14, v6, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_1d

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_11

    :cond_1c
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :cond_1d
    :goto_11
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v25, v22, 0xe

    and-int/lit8 v2, v0, 0x70

    or-int v2, v25, v2

    invoke-static {v10, v14}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    and-int/lit8 v26, v2, 0xe

    move/from16 v27, v15

    xor-int/lit8 v15, v26, 0x6

    move/from16 v26, v0

    const/4 v0, 0x4

    if-le v15, v0, :cond_1e

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1f

    :cond_1e
    and-int/lit8 v2, v2, 0x6

    if-ne v2, v0, :cond_20

    :cond_1f
    move/from16 v0, v24

    goto :goto_12

    :cond_20
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_21

    if-ne v2, v15, :cond_22

    :cond_21
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->k()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    new-instance v2, Lu00;

    const/16 v4, 0x8

    invoke-direct {v2, v4, v6}, Lu00;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-static {v0, v2}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->k()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v2

    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/c;

    invoke-direct {v4, v0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/c;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)V

    invoke-static {v2, v4}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v29

    new-instance v28, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderKt$rememberStaggeredGridItemProviderLambda$1$1;

    const-string v32, "getValue()Ljava/lang/Object;"

    const/16 v33, 0x0

    const-class v30, Landroidx/compose/runtime/State;

    const-string v31, "value"

    invoke-direct/range {v28 .. v33}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v2, v28

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object v4, v2

    check-cast v4, Lkotlin/reflect/KProperty0;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_23

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v14}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->g:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/GraphicsContext;

    shr-int/lit8 v2, v22, 0x6

    move-object/from16 v28, v6

    and-int/lit16 v6, v2, 0x380

    or-int v6, v25, v6

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v2, v6

    shl-int/lit8 v6, v22, 0x9

    const v29, 0xe000

    and-int v6, v6, v29

    or-int/2addr v2, v6

    shr-int/lit8 v30, v22, 0xc

    const/high16 v6, 0x70000

    and-int v31, v30, v6

    or-int v2, v2, v31

    shl-int/lit8 v26, v26, 0x12

    const/high16 v27, 0x380000

    and-int v26, v26, v27

    or-int v2, v2, v26

    shl-int/lit8 v26, v22, 0x12

    const/high16 v31, 0xe000000

    and-int v26, v26, v31

    or-int v2, v2, v26

    and-int/lit8 v26, v2, 0xe

    move/from16 v32, v6

    xor-int/lit8 v6, v26, 0x6

    const/4 v7, 0x4

    if-le v6, v7, :cond_24

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    :cond_24
    and-int/lit8 v6, v2, 0x6

    if-ne v6, v7, :cond_26

    :cond_25
    move/from16 v6, v24

    goto :goto_13

    :cond_26
    const/4 v6, 0x0

    :goto_13
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    and-int/lit16 v7, v2, 0x380

    xor-int/lit16 v7, v7, 0x180

    const/16 v1, 0x100

    if-le v7, v1, :cond_27

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    :cond_27
    and-int/lit16 v7, v2, 0x180

    if-ne v7, v1, :cond_29

    :cond_28
    move/from16 v1, v24

    goto :goto_14

    :cond_29
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v1, v6

    and-int/lit16 v6, v2, 0x1c00

    xor-int/lit16 v6, v6, 0xc00

    const/4 v7, 0x0

    move/from16 p10, v1

    const/16 v1, 0x800

    if-le v6, v1, :cond_2a

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-nez v6, :cond_2b

    :cond_2a
    and-int/lit16 v6, v2, 0xc00

    if-ne v6, v1, :cond_2c

    :cond_2b
    move/from16 v1, v24

    goto :goto_15

    :cond_2c
    const/4 v1, 0x0

    :goto_15
    or-int v1, p10, v1

    and-int v6, v2, v29

    xor-int/lit16 v6, v6, 0x6000

    const/16 v7, 0x4000

    if-le v6, v7, :cond_2d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-nez v6, :cond_2e

    :cond_2d
    and-int/lit16 v6, v2, 0x6000

    if-ne v6, v7, :cond_2f

    :cond_2e
    move/from16 v6, v24

    goto :goto_16

    :cond_2f
    const/4 v6, 0x0

    :goto_16
    or-int/2addr v1, v6

    and-int v6, v2, v32

    xor-int v6, v6, v18

    const/high16 v7, 0x20000

    if-le v6, v7, :cond_30

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v6

    if-nez v6, :cond_31

    :cond_30
    and-int v6, v2, v18

    if-ne v6, v7, :cond_32

    :cond_31
    move/from16 v6, v24

    goto :goto_17

    :cond_32
    const/4 v6, 0x0

    :goto_17
    or-int/2addr v1, v6

    and-int v6, v2, v27

    xor-int v6, v6, v17

    const/high16 v7, 0x100000

    if-le v6, v7, :cond_33

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v6

    if-nez v6, :cond_34

    :cond_33
    and-int v6, v2, v17

    if-ne v6, v7, :cond_35

    :cond_34
    move/from16 v6, v24

    goto :goto_18

    :cond_35
    const/4 v6, 0x0

    :goto_18
    or-int/2addr v1, v6

    and-int v6, v2, v31

    xor-int v6, v6, v20

    const/high16 v7, 0x4000000

    if-le v6, v7, :cond_36

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    :cond_36
    and-int v2, v2, v20

    if-ne v2, v7, :cond_38

    :cond_37
    move/from16 v2, v24

    goto :goto_19

    :cond_38
    const/4 v2, 0x0

    :goto_19
    or-int/2addr v1, v2

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_39

    if-ne v2, v15, :cond_3a

    :cond_39
    move-object v7, v0

    goto :goto_1a

    :cond_3a
    const/16 v8, 0x20

    move-object/from16 v6, p0

    move-object v1, v4

    goto :goto_1b

    :goto_1a
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;

    const/16 v8, 0x20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, v28

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/layout/PaddingValuesImpl;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    move-object v6, v1

    move-object v1, v4

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_1b
    move-object/from16 v16, v2

    check-cast v16, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    and-int/lit8 v0, v30, 0x70

    or-int v0, v25, v0

    and-int/lit8 v2, v0, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v7, 0x4

    if-le v2, v7, :cond_3b

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    :cond_3b
    and-int/lit8 v2, v0, 0x6

    if-ne v2, v7, :cond_3d

    :cond_3c
    move/from16 v4, v24

    goto :goto_1c

    :cond_3d
    const/4 v4, 0x0

    :goto_1c
    and-int/lit8 v2, v0, 0x70

    xor-int/lit8 v2, v2, 0x30

    const/4 v5, 0x0

    if-le v2, v8, :cond_3e

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-nez v2, :cond_3f

    :cond_3e
    and-int/lit8 v0, v0, 0x30

    if-ne v0, v8, :cond_40

    :cond_3f
    move/from16 v0, v24

    goto :goto_1d

    :cond_40
    const/4 v0, 0x0

    :goto_1d
    or-int/2addr v0, v4

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_41

    if-ne v2, v15, :cond_42

    :cond_41
    new-instance v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSemanticsKt$rememberLazyStaggeredGridSemanticState$1$1;

    invoke-direct {v2, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSemanticsKt$rememberLazyStaggeredGridSemanticState$1$1;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_42
    check-cast v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSemanticsKt$rememberLazyStaggeredGridSemanticState$1$1;

    if-eqz p6, :cond_48

    const v0, -0x6d59b7f6

    invoke-static {v14, v0, v12}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    xor-int/lit8 v3, v25, 0x6

    const/4 v7, 0x4

    if-le v3, v7, :cond_43

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    :cond_43
    and-int/lit8 v3, v22, 0x6

    if-ne v3, v7, :cond_45

    :cond_44
    move/from16 v4, v24

    goto :goto_1e

    :cond_45
    const/4 v4, 0x0

    :goto_1e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v4, :cond_46

    if-ne v3, v15, :cond_47

    :cond_46
    new-instance v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridBeyondBoundsState;

    invoke-direct {v3, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridBeyondBoundsState;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_47
    check-cast v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridBeyondBoundsState;

    iget-object v4, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->k:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    move-object/from16 v7, p1

    invoke-static {v0, v3, v4, v5, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;->a(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1f
    move-object v8, v0

    goto :goto_20

    :cond_48
    move-object/from16 v7, p1

    const/4 v3, 0x0

    const v0, -0x6d551120

    invoke-static {v14, v0, v3, v12}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    goto :goto_1f

    :goto_20
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->i:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$remeasurementModifier$1;

    invoke-interface {v13, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v3, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->j:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move/from16 v4, p6

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v12, v1

    invoke-interface {v0, v8}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v1, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->t:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object v1, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->k:Landroidx/compose/ui/Modifier;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v7, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->r:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move-object v1, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/ScrollableAreaKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v7, v1

    iget-object v3, v7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->m:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    const/4 v6, 0x0

    move-object v2, v0

    move-object v1, v12

    move-object v5, v14

    move-object/from16 v4, v16

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;Landroidx/compose/runtime/Composer;I)V

    goto :goto_21

    :cond_49
    move-object v7, v1

    move-object v5, v14

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_21
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_4a

    new-instance v0, Li90;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v12, p12

    move-object v1, v7

    move-object v4, v13

    move/from16 v7, p6

    invoke-direct/range {v0 .. v12}, Li90;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;FLkotlin/jvm/functions/Function1;II)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4a
    return-void
.end method
