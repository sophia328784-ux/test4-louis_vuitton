.class public abstract Landroidx/compose/foundation/lazy/grid/LazyGridKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v2, p4

    move/from16 v11, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v12, p10

    move/from16 v13, p12

    const-string v14, "LazyGrid"

    if-eqz v0, :cond_0

    invoke-static {v0, v14}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v15, v0

    const v0, 0x2a3e8512

    move-object/from16 v5, p11

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v5, v13, 0x6

    if-nez v5, :cond_2

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v13

    goto :goto_1

    :cond_2
    move v5, v13

    :goto_1
    and-int/lit8 v10, v13, 0x30

    const/16 v16, 0x10

    if-nez v10, :cond_4

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x20

    goto :goto_2

    :cond_3
    move/from16 v10, v16

    :goto_2
    or-int/2addr v5, v10

    :cond_4
    and-int/lit16 v10, v13, 0x180

    if-nez v10, :cond_7

    and-int/lit16 v10, v13, 0x200

    if-nez v10, :cond_5

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    :goto_3
    if-eqz v10, :cond_6

    const/16 v10, 0x100

    goto :goto_4

    :cond_6
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v5, v10

    :cond_7
    and-int/lit16 v10, v13, 0xc00

    if-nez v10, :cond_9

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x800

    goto :goto_5

    :cond_8
    const/16 v10, 0x400

    :goto_5
    or-int/2addr v5, v10

    :cond_9
    and-int/lit16 v10, v13, 0x6000

    const/4 v8, 0x0

    if-nez v10, :cond_b

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x4000

    goto :goto_6

    :cond_a
    const/16 v10, 0x2000

    :goto_6
    or-int/2addr v5, v10

    :cond_b
    const/high16 v10, 0x30000

    and-int v19, v13, v10

    if-nez v19, :cond_d

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v19

    if-eqz v19, :cond_c

    const/high16 v19, 0x20000

    goto :goto_7

    :cond_c
    const/high16 v19, 0x10000

    :goto_7
    or-int v5, v5, v19

    :cond_d
    const/high16 v19, 0x180000

    and-int v20, v13, v19

    move/from16 v21, v10

    move-object/from16 v10, p5

    if-nez v20, :cond_f

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/high16 v22, 0x100000

    goto :goto_8

    :cond_e
    const/high16 v22, 0x80000

    :goto_8
    or-int v5, v5, v22

    :cond_f
    const/high16 v22, 0xc00000

    and-int v23, v13, v22

    if-nez v23, :cond_11

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v23

    if-eqz v23, :cond_10

    const/high16 v23, 0x800000

    goto :goto_9

    :cond_10
    const/high16 v23, 0x400000

    :goto_9
    or-int v5, v5, v23

    :cond_11
    const/high16 v23, 0x6000000

    and-int v23, v13, v23

    move-object/from16 v8, p7

    if-nez v23, :cond_13

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    const/high16 v24, 0x4000000

    goto :goto_a

    :cond_12
    const/high16 v24, 0x2000000

    :goto_a
    or-int v5, v5, v24

    :cond_13
    const/high16 v24, 0x30000000

    and-int v24, v13, v24

    if-nez v24, :cond_15

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    const/high16 v24, 0x20000000

    goto :goto_b

    :cond_14
    const/high16 v24, 0x10000000

    :goto_b
    or-int v5, v5, v24

    :cond_15
    and-int/lit8 v24, p13, 0x6

    if-nez v24, :cond_17

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_16

    const/16 v24, 0x4

    goto :goto_c

    :cond_16
    const/16 v24, 0x2

    :goto_c
    or-int v24, p13, v24

    goto :goto_d

    :cond_17
    move/from16 v24, p13

    :goto_d
    and-int/lit8 v25, p13, 0x30

    if-nez v25, :cond_19

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    const/16 v16, 0x20

    :cond_18
    or-int v24, v24, v16

    :cond_19
    const v16, 0x12492493

    and-int v9, v5, v16

    move/from16 v16, v5

    const v5, 0x12492492

    const/16 v8, 0x12

    const/16 v25, 0x1

    if-ne v9, v5, :cond_1b

    and-int/lit8 v5, v24, 0x13

    if-eq v5, v8, :cond_1a

    goto :goto_e

    :cond_1a
    const/4 v5, 0x0

    goto :goto_f

    :cond_1b
    :goto_e
    move/from16 v5, v25

    :goto_f
    and-int/lit8 v9, v16, 0x1

    invoke-virtual {v0, v9, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v5, v13, 0x1

    if-eqz v5, :cond_1d

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v5

    if-eqz v5, :cond_1c

    goto :goto_10

    :cond_1c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :cond_1d
    :goto_10
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 v26, v16, 0x3

    and-int/lit8 v27, v26, 0xe

    and-int/lit8 v5, v24, 0x70

    or-int v5, v27, v5

    invoke-static {v12, v0}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    and-int/lit8 v28, v5, 0xe

    move/from16 v29, v8

    xor-int/lit8 v8, v28, 0x6

    move/from16 v28, v5

    const/4 v5, 0x4

    if-le v8, v5, :cond_1e

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    :cond_1e
    and-int/lit8 v8, v28, 0x6

    if-ne v8, v5, :cond_20

    :cond_1f
    move/from16 v5, v25

    goto :goto_11

    :cond_20
    const/4 v5, 0x0

    :goto_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v5, :cond_21

    if-ne v8, v11, :cond_22

    :cond_21
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->k()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v5

    new-instance v8, Lu00;

    const/4 v10, 0x5

    invoke-direct {v8, v10, v9}, Lu00;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-static {v5, v8}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v5

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->k()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v8

    new-instance v9, Landroidx/compose/foundation/lazy/grid/c;

    invoke-direct {v9, v5, v1}, Landroidx/compose/foundation/lazy/grid/c;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    invoke-static {v8, v9}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v31

    new-instance v30, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderKt$rememberLazyGridItemProviderLambda$1$1;

    const-string v34, "getValue()Ljava/lang/Object;"

    const/16 v35, 0x0

    const-class v32, Landroidx/compose/runtime/State;

    const-string v33, "value"

    invoke-direct/range {v30 .. v35}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v8, v30

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v8, Lkotlin/reflect/KProperty0;

    shr-int/lit8 v5, v16, 0x9

    and-int/lit8 v5, v5, 0x70

    or-int v5, v27, v5

    and-int/lit8 v9, v5, 0xe

    xor-int/lit8 v9, v9, 0x6

    const/4 v10, 0x4

    if-le v9, v10, :cond_23

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_24

    :cond_23
    and-int/lit8 v9, v5, 0x6

    if-ne v9, v10, :cond_25

    :cond_24
    move/from16 v9, v25

    goto :goto_12

    :cond_25
    const/4 v9, 0x0

    :goto_12
    and-int/lit8 v18, v5, 0x70

    xor-int/lit8 v10, v18, 0x30

    const/4 v12, 0x0

    move/from16 v18, v5

    const/16 v5, 0x20

    if-le v10, v5, :cond_26

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v10

    if-nez v10, :cond_27

    :cond_26
    and-int/lit8 v10, v18, 0x30

    if-ne v10, v5, :cond_28

    :cond_27
    move/from16 v5, v25

    goto :goto_13

    :cond_28
    const/4 v5, 0x0

    :goto_13
    or-int/2addr v5, v9

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_29

    if-ne v9, v11, :cond_2a

    :cond_29
    new-instance v9, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;

    invoke-direct {v9, v1}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    move-object/from16 v18, v9

    check-cast v18, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v11, :cond_2b

    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v5, v0}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2b
    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->g:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/GraphicsContext;

    sget-object v10, Landroidx/compose/ui/platform/CompositionLocalsKt;->x:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_2c

    sget-object v10, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;->a:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion$StickToTopPlacement$1;

    goto :goto_14

    :cond_2c
    const/4 v10, 0x0

    :goto_14
    const v30, 0x7fff0

    and-int v30, v16, v30

    shl-int/lit8 v24, v24, 0x12

    const/high16 v29, 0x380000

    and-int v24, v24, v29

    or-int v24, v30, v24

    shr-int/lit8 v16, v16, 0x6

    const/high16 v30, 0x1c00000

    and-int v16, v16, v30

    or-int v12, v24, v16

    and-int/lit8 v16, v12, 0x70

    move-object/from16 v24, v5

    xor-int/lit8 v5, v16, 0x30

    move-object/from16 v16, v8

    const/16 v8, 0x20

    if-le v5, v8, :cond_2d

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    :cond_2d
    and-int/lit8 v5, v12, 0x30

    if-ne v5, v8, :cond_2f

    :cond_2e
    move/from16 v5, v25

    goto :goto_15

    :cond_2f
    const/4 v5, 0x0

    :goto_15
    and-int/lit16 v8, v12, 0x380

    xor-int/lit16 v8, v8, 0x180

    const/16 v1, 0x100

    if-le v8, v1, :cond_30

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_31

    :cond_30
    and-int/lit16 v8, v12, 0x180

    if-ne v8, v1, :cond_32

    :cond_31
    move/from16 v1, v25

    goto :goto_16

    :cond_32
    const/4 v1, 0x0

    :goto_16
    or-int/2addr v1, v5

    and-int/lit16 v5, v12, 0x1c00

    xor-int/lit16 v5, v5, 0xc00

    const/16 v8, 0x800

    if-le v5, v8, :cond_33

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    :cond_33
    and-int/lit16 v5, v12, 0xc00

    if-ne v5, v8, :cond_35

    :cond_34
    move/from16 v5, v25

    goto :goto_17

    :cond_35
    const/4 v5, 0x0

    :goto_17
    or-int/2addr v1, v5

    const v5, 0xe000

    and-int/2addr v5, v12

    xor-int/lit16 v5, v5, 0x6000

    const/16 v8, 0x4000

    if-le v5, v8, :cond_36

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-nez v17, :cond_37

    :cond_36
    and-int/lit16 v5, v12, 0x6000

    if-ne v5, v8, :cond_38

    :cond_37
    move/from16 v5, v25

    goto :goto_18

    :cond_38
    const/4 v5, 0x0

    :goto_18
    or-int/2addr v1, v5

    const/high16 v5, 0x70000

    and-int/2addr v5, v12

    xor-int v5, v5, v21

    const/high16 v8, 0x20000

    if-le v5, v8, :cond_39

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-nez v5, :cond_3a

    :cond_39
    and-int v5, v12, v21

    if-ne v5, v8, :cond_3b

    :cond_3a
    move/from16 v5, v25

    goto :goto_19

    :cond_3b
    const/4 v5, 0x0

    :goto_19
    or-int/2addr v1, v5

    and-int v5, v12, v29

    xor-int v5, v5, v19

    const/high16 v8, 0x100000

    if-le v5, v8, :cond_3c

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    :cond_3c
    and-int v5, v12, v19

    if-ne v5, v8, :cond_3e

    :cond_3d
    move/from16 v5, v25

    goto :goto_1a

    :cond_3e
    const/4 v5, 0x0

    :goto_1a
    or-int/2addr v1, v5

    and-int v5, v12, v30

    xor-int v5, v5, v22

    const/high16 v8, 0x800000

    if-le v5, v8, :cond_3f

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    :cond_3f
    and-int v5, v12, v22

    if-ne v5, v8, :cond_41

    :cond_40
    move/from16 v5, v25

    goto :goto_1b

    :cond_41
    const/4 v5, 0x0

    :goto_1b
    or-int/2addr v1, v5

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_42

    if-ne v5, v11, :cond_43

    :cond_42
    move-object v5, v0

    goto :goto_1c

    :cond_43
    move-object/from16 v6, p1

    move-object v12, v0

    move-object/from16 v1, v16

    const/4 v13, 0x4

    goto :goto_1d

    :goto_1c
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;

    move-object/from16 v1, p1

    move-object v12, v5

    move-object/from16 v8, v24

    const/4 v13, 0x4

    move-object v5, v3

    move-object v3, v4

    move-object/from16 v4, v16

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion$StickToTopPlacement$1;)V

    move-object v6, v1

    move-object v1, v4

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :goto_1d
    move-object v9, v5

    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    if-eqz p4, :cond_44

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_1e
    move-object v2, v0

    goto :goto_1f

    :cond_44
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_1e

    :goto_1f
    if-eqz p6, :cond_4a

    const v0, 0x1a048e3

    invoke-static {v12, v0, v14}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    xor-int/lit8 v3, v27, 0x6

    if-le v3, v13, :cond_45

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    :cond_45
    and-int/lit8 v3, v26, 0x6

    if-ne v3, v13, :cond_47

    :cond_46
    move/from16 v8, v25

    goto :goto_20

    :cond_47
    const/4 v8, 0x0

    :goto_20
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v8, :cond_48

    if-ne v3, v11, :cond_49

    :cond_48
    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;

    invoke-direct {v3, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_49
    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;

    iget-object v4, v6, Landroidx/compose/foundation/lazy/grid/LazyGridState;->n:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;->a(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_21
    move-object v7, v0

    goto :goto_22

    :cond_4a
    const/4 v3, 0x0

    const/4 v5, 0x0

    const v0, 0x1a4cdf0

    invoke-static {v12, v0, v3, v14}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    goto :goto_21

    :goto_22
    iget-object v0, v6, Landroidx/compose/foundation/lazy/grid/LazyGridState;->k:Landroidx/compose/foundation/lazy/grid/LazyGridState$remeasurementModifier$1;

    invoke-interface {v15, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v3, v6, Landroidx/compose/foundation/lazy/grid/LazyGridState;->l:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move/from16 v4, p6

    move-object v3, v2

    move-object/from16 v2, v18

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v16, v1

    move-object v2, v3

    invoke-interface {v0, v7}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v1, v6, Landroidx/compose/foundation/lazy/grid/LazyGridState;->m:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object v1, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->k:Landroidx/compose/ui/Modifier;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v7, v6, Landroidx/compose/foundation/lazy/grid/LazyGridState;->f:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p7

    move-object v1, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/ScrollableAreaKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object v0, v1

    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    const/4 v6, 0x0

    move-object v4, v9

    move-object v5, v12

    move-object/from16 v1, v16

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;Landroidx/compose/runtime/Composer;I)V

    goto :goto_23

    :cond_4b
    move-object v5, v0

    move-object v0, v1

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_23
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_4c

    new-instance v0, Lry;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, p13

    move-object v1, v15

    invoke-direct/range {v0 .. v13}, Lry;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4c
    return-void
.end method
