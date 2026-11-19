.class public abstract Landroidx/compose/foundation/lazy/LazyListKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v2, p3

    move/from16 v12, p5

    move-object/from16 v13, p11

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v4, p15

    const-string v5, "LazyList"

    if-eqz v0, :cond_0

    invoke-static {v0, v5}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v6, 0x37213af3

    move-object/from16 v7, p12

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    and-int/lit8 v7, v14, 0x6

    if-nez v7, :cond_2

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v14

    goto :goto_1

    :cond_2
    move v7, v14

    :goto_1
    and-int/lit8 v10, v14, 0x30

    if-nez v10, :cond_4

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x20

    goto :goto_2

    :cond_3
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v7, v10

    :cond_4
    and-int/lit16 v10, v14, 0x180

    const/16 v16, 0x80

    if-nez v10, :cond_6

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x100

    goto :goto_3

    :cond_5
    move/from16 v10, v16

    :goto_3
    or-int/2addr v7, v10

    :cond_6
    and-int/lit16 v10, v14, 0xc00

    const/4 v11, 0x0

    const/16 v18, 0x400

    if-nez v10, :cond_8

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x800

    goto :goto_4

    :cond_7
    move/from16 v10, v18

    :goto_4
    or-int/2addr v7, v10

    :cond_8
    and-int/lit16 v10, v14, 0x6000

    if-nez v10, :cond_a

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x4000

    goto :goto_5

    :cond_9
    const/16 v10, 0x2000

    :goto_5
    or-int/2addr v7, v10

    :cond_a
    const/high16 v10, 0x30000

    and-int/2addr v10, v14

    if-nez v10, :cond_c

    move-object/from16 v10, p4

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    const/high16 v20, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v20, 0x10000

    :goto_6
    or-int v7, v7, v20

    goto :goto_7

    :cond_c
    move-object/from16 v10, p4

    :goto_7
    const/high16 v20, 0x180000

    and-int v21, v14, v20

    if-nez v21, :cond_e

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v21

    if-eqz v21, :cond_d

    const/high16 v21, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v21, 0x80000

    :goto_8
    or-int v7, v7, v21

    :cond_e
    const/high16 v21, 0xc00000

    and-int v22, v14, v21

    move-object/from16 v11, p6

    if-nez v22, :cond_10

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    const/high16 v23, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v23, 0x400000

    :goto_9
    or-int v7, v7, v23

    :cond_10
    const/high16 v23, 0x6000000

    and-int v24, v14, v23

    if-nez v24, :cond_11

    const/high16 v24, 0x2000000

    or-int v7, v7, v24

    :cond_11
    and-int/lit16 v8, v4, 0x200

    const/high16 v26, 0x30000000

    if-eqz v8, :cond_12

    or-int v7, v7, v26

    move-object/from16 v9, p7

    goto :goto_b

    :cond_12
    and-int v27, v14, v26

    move-object/from16 v9, p7

    if-nez v27, :cond_14

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_13

    const/high16 v28, 0x20000000

    goto :goto_a

    :cond_13
    const/high16 v28, 0x10000000

    :goto_a
    or-int v7, v7, v28

    :cond_14
    :goto_b
    move-object/from16 v28, v0

    and-int/lit16 v0, v4, 0x400

    if-eqz v0, :cond_15

    or-int/lit8 v29, v15, 0x6

    move/from16 v30, v29

    move/from16 v29, v0

    move-object/from16 v0, p8

    goto :goto_d

    :cond_15
    and-int/lit8 v29, v15, 0x6

    if-nez v29, :cond_17

    move/from16 v29, v0

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    const/16 v30, 0x4

    goto :goto_c

    :cond_16
    const/16 v30, 0x2

    :goto_c
    or-int v30, v15, v30

    goto :goto_d

    :cond_17
    move/from16 v29, v0

    move-object/from16 v0, p8

    move/from16 v30, v15

    :goto_d
    and-int/lit16 v0, v4, 0x800

    if-eqz v0, :cond_18

    or-int/lit8 v30, v30, 0x30

    move/from16 v31, v0

    :goto_e
    move/from16 v0, v30

    goto :goto_10

    :cond_18
    and-int/lit8 v31, v15, 0x30

    if-nez v31, :cond_1a

    move/from16 v31, v0

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_19

    const/16 v32, 0x20

    goto :goto_f

    :cond_19
    const/16 v32, 0x10

    :goto_f
    or-int v30, v30, v32

    goto :goto_e

    :cond_1a
    move/from16 v31, v0

    move-object/from16 v0, p9

    goto :goto_e

    :goto_10
    move-object/from16 v30, v5

    and-int/lit16 v5, v4, 0x1000

    if-eqz v5, :cond_1b

    or-int/lit16 v0, v0, 0x180

    move/from16 v16, v0

    move-object/from16 v0, p10

    goto :goto_11

    :cond_1b
    move/from16 v32, v0

    and-int/lit16 v0, v15, 0x180

    if-nez v0, :cond_1d

    move-object/from16 v0, p10

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1c

    const/16 v16, 0x100

    :cond_1c
    or-int v16, v32, v16

    goto :goto_11

    :cond_1d
    move-object/from16 v0, p10

    move/from16 v16, v32

    :goto_11
    and-int/lit16 v0, v15, 0xc00

    if-nez v0, :cond_1f

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v18, 0x800

    :cond_1e
    or-int v16, v16, v18

    :cond_1f
    move/from16 v0, v16

    const v16, 0x12492493

    and-int v4, v7, v16

    move/from16 v16, v5

    const v5, 0x12492492

    const/16 v18, 0x1

    if-ne v4, v5, :cond_21

    and-int/lit16 v4, v0, 0x493

    const/16 v5, 0x492

    if-eq v4, v5, :cond_20

    goto :goto_12

    :cond_20
    const/4 v4, 0x0

    goto :goto_13

    :cond_21
    :goto_12
    move/from16 v4, v18

    :goto_13
    and-int/lit8 v5, v7, 0x1

    invoke-virtual {v6, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v4, v14, 0x1

    const v5, -0xe000001

    const/16 v32, 0x0

    if-eqz v4, :cond_24

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_14

    :cond_22
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int v4, v7, v5

    move-object/from16 v5, p8

    move-object/from16 v11, p9

    move v7, v4

    :cond_23
    move-object/from16 v4, p10

    goto :goto_17

    :cond_24
    :goto_14
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int v4, v7, v5

    if-eqz v8, :cond_25

    move-object/from16 v9, v32

    :cond_25
    if-eqz v29, :cond_26

    move-object/from16 v5, v32

    goto :goto_15

    :cond_26
    move-object/from16 v5, p8

    :goto_15
    if-eqz v31, :cond_27

    move-object/from16 v7, v32

    goto :goto_16

    :cond_27
    move-object/from16 v7, p9

    :goto_16
    move-object v11, v7

    move v7, v4

    if-eqz v16, :cond_23

    move-object/from16 v4, v32

    :goto_17
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 v16, v7, 0x3

    and-int/lit8 v8, v16, 0xe

    shr-int/lit8 v29, v0, 0x6

    and-int/lit8 v29, v29, 0x70

    or-int v29, v8, v29

    invoke-static {v13, v6}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    and-int/lit8 v31, v29, 0xe

    move/from16 v33, v0

    xor-int/lit8 v0, v31, 0x6

    move/from16 p7, v7

    const/4 v7, 0x4

    if-le v0, v7, :cond_28

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_28
    and-int/lit8 v0, v29, 0x6

    if-ne v0, v7, :cond_2a

    :cond_29
    move/from16 v0, v18

    goto :goto_18

    :cond_2a
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_2c

    if-ne v7, v13, :cond_2b

    goto :goto_19

    :cond_2b
    move/from16 p8, v8

    goto :goto_1a

    :cond_2c
    :goto_19
    new-instance v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;-><init>()V

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->k()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v7

    move/from16 p8, v8

    new-instance v8, Lu00;

    const/4 v10, 0x7

    invoke-direct {v8, v10, v12}, Lu00;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-static {v7, v8}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v7

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->k()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v8

    new-instance v10, Landroidx/compose/foundation/lazy/c;

    invoke-direct {v10, v7, v1, v0}, Landroidx/compose/foundation/lazy/c;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;)V

    invoke-static {v8, v10}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v35

    new-instance v34, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$1;

    const-string v38, "getValue()Ljava/lang/Object;"

    const/16 v39, 0x0

    const-class v36, Landroidx/compose/runtime/State;

    const-string v37, "value"

    invoke-direct/range {v34 .. v39}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v7, v34

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1a
    check-cast v7, Lkotlin/reflect/KProperty0;

    shr-int/lit8 v0, p7, 0x9

    and-int/lit8 v8, v0, 0x70

    or-int v8, p8, v8

    and-int/lit8 v10, v8, 0xe

    xor-int/lit8 v10, v10, 0x6

    const/4 v12, 0x4

    if-le v10, v12, :cond_2d

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2e

    :cond_2d
    and-int/lit8 v10, v8, 0x6

    if-ne v10, v12, :cond_2f

    :cond_2e
    move/from16 v10, v18

    goto :goto_1b

    :cond_2f
    const/4 v10, 0x0

    :goto_1b
    and-int/lit8 v25, v8, 0x70

    xor-int/lit8 v12, v25, 0x30

    move/from16 p8, v0

    const/16 v0, 0x20

    if-le v12, v0, :cond_30

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-nez v12, :cond_31

    :cond_30
    and-int/lit8 v8, v8, 0x30

    if-ne v8, v0, :cond_32

    :cond_31
    move/from16 v0, v18

    goto :goto_1c

    :cond_32
    const/4 v0, 0x0

    :goto_1c
    or-int/2addr v0, v10

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v0, :cond_33

    if-ne v8, v13, :cond_34

    :cond_33
    new-instance v8, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;

    invoke-direct {v8, v1, v2}, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Z)V

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_34
    move-object v12, v8

    check-cast v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_35

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v6}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_35
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->g:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/graphics/GraphicsContext;

    sget-object v10, Landroidx/compose/ui/platform/CompositionLocalsKt;->x:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_36

    sget-object v32, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;->a:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion$StickToTopPlacement$1;

    :cond_36
    move-object/from16 v10, v32

    const v25, 0xfff0

    and-int v25, p7, v25

    const/high16 v31, 0x380000

    and-int v32, p8, v31

    or-int v25, v25, v32

    shl-int/lit8 v32, v33, 0x12

    const/high16 v34, 0x1c00000

    and-int v35, v32, v34

    or-int v25, v25, v35

    const/high16 v35, 0xe000000

    and-int v32, v32, v35

    or-int v25, v25, v32

    shl-int/lit8 v32, v33, 0x1b

    const/high16 v33, 0x70000000

    and-int v32, v32, v33

    move-object/from16 p7, v0

    or-int v0, v25, v32

    and-int/lit8 v25, v0, 0x70

    move-object/from16 p8, v7

    xor-int/lit8 v7, v25, 0x30

    move-object/from16 p9, v12

    const/16 v12, 0x20

    if-le v7, v12, :cond_37

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_38

    :cond_37
    and-int/lit8 v7, v0, 0x30

    if-ne v7, v12, :cond_39

    :cond_38
    move/from16 v7, v18

    goto :goto_1d

    :cond_39
    const/4 v7, 0x0

    :goto_1d
    and-int/lit16 v12, v0, 0x380

    xor-int/lit16 v12, v12, 0x180

    const/16 v1, 0x100

    if-le v12, v1, :cond_3a

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3b

    :cond_3a
    and-int/lit16 v12, v0, 0x180

    if-ne v12, v1, :cond_3c

    :cond_3b
    move/from16 v1, v18

    goto :goto_1e

    :cond_3c
    const/4 v1, 0x0

    :goto_1e
    or-int/2addr v1, v7

    and-int/lit16 v7, v0, 0x1c00

    xor-int/lit16 v7, v7, 0xc00

    const/16 v12, 0x800

    if-le v7, v12, :cond_3d

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-nez v17, :cond_3e

    goto :goto_1f

    :cond_3d
    const/4 v7, 0x0

    :goto_1f
    and-int/lit16 v7, v0, 0xc00

    if-ne v7, v12, :cond_3f

    :cond_3e
    move/from16 v7, v18

    goto :goto_20

    :cond_3f
    const/4 v7, 0x0

    :goto_20
    or-int/2addr v1, v7

    const v7, 0xe000

    and-int/2addr v7, v0

    xor-int/lit16 v7, v7, 0x6000

    const/16 v12, 0x4000

    if-le v7, v12, :cond_40

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    if-nez v7, :cond_41

    :cond_40
    and-int/lit16 v7, v0, 0x6000

    if-ne v7, v12, :cond_42

    :cond_41
    move/from16 v7, v18

    goto :goto_21

    :cond_42
    const/4 v7, 0x0

    :goto_21
    or-int/2addr v1, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v12

    or-int/2addr v1, v12

    and-int v7, v0, v31

    xor-int v7, v7, v20

    const/high16 v12, 0x100000

    if-le v7, v12, :cond_43

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_44

    :cond_43
    and-int v7, v0, v20

    if-ne v7, v12, :cond_45

    :cond_44
    move/from16 v7, v18

    goto :goto_22

    :cond_45
    const/4 v7, 0x0

    :goto_22
    or-int/2addr v1, v7

    and-int v7, v0, v34

    xor-int v7, v7, v21

    const/high16 v12, 0x800000

    if-le v7, v12, :cond_46

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_47

    :cond_46
    and-int v7, v0, v21

    if-ne v7, v12, :cond_48

    :cond_47
    move/from16 v7, v18

    goto :goto_23

    :cond_48
    const/4 v7, 0x0

    :goto_23
    or-int/2addr v1, v7

    and-int v7, v0, v35

    xor-int v7, v7, v23

    const/high16 v12, 0x4000000

    if-le v7, v12, :cond_49

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4a

    :cond_49
    and-int v7, v0, v23

    if-ne v7, v12, :cond_4b

    :cond_4a
    move/from16 v7, v18

    goto :goto_24

    :cond_4b
    const/4 v7, 0x0

    :goto_24
    or-int/2addr v1, v7

    and-int v7, v0, v33

    xor-int v7, v7, v26

    const/high16 v12, 0x20000000

    if-le v7, v12, :cond_4c

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4d

    :cond_4c
    and-int v0, v0, v26

    if-ne v0, v12, :cond_4e

    :cond_4d
    move/from16 v7, v18

    goto :goto_25

    :cond_4e
    const/4 v7, 0x0

    :goto_25
    or-int v0, v1, v7

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_50

    if-ne v1, v13, :cond_4f

    goto :goto_26

    :cond_4f
    move-object v0, v1

    move-object/from16 v32, v4

    move-object/from16 v20, v5

    move-object v14, v6

    move-object/from16 v17, v9

    move-object/from16 v19, v11

    move-object/from16 v15, v30

    const/4 v12, 0x4

    move-object/from16 v6, p1

    move-object/from16 v1, p8

    goto :goto_27

    :cond_50
    :goto_26
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

    move-object v1, v10

    move-object v10, v9

    move-object v9, v1

    move-object/from16 v1, p1

    move-object/from16 v7, p7

    move-object v14, v6

    move-object/from16 v15, v30

    const/4 v12, 0x4

    move-object v6, v4

    move-object/from16 v4, p8

    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion$StickToTopPlacement$1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;)V

    move-object/from16 v20, v5

    move-object/from16 v32, v6

    move-object/from16 v17, v10

    move-object/from16 v19, v11

    move-object v6, v1

    move-object v1, v4

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_27
    move-object v10, v0

    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    if-eqz p3, :cond_51

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_28
    move-object v2, v0

    goto :goto_29

    :cond_51
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_28

    :goto_29
    if-eqz p5, :cond_57

    const v0, -0x7bcec0e8

    invoke-static {v14, v0, v15}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    and-int/lit8 v3, v16, 0xe

    xor-int/lit8 v3, v3, 0x6

    if-le v3, v12, :cond_52

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    :cond_52
    and-int/lit8 v3, v16, 0x6

    if-ne v3, v12, :cond_54

    :cond_53
    :goto_2a
    const/4 v7, 0x0

    goto :goto_2b

    :cond_54
    const/16 v18, 0x0

    goto :goto_2a

    :goto_2b
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v3

    or-int v3, v18, v3

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_55

    if-ne v4, v13, :cond_56

    :cond_55
    new-instance v4, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;

    invoke-direct {v4, v6, v7}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;-><init>(Landroidx/compose/foundation/lazy/LazyListState;I)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_56
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;

    iget-object v3, v6, Landroidx/compose/foundation/lazy/LazyListState;->p:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;->a(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2c
    move-object v7, v0

    goto :goto_2d

    :cond_57
    const/4 v5, 0x0

    const/4 v7, 0x0

    const v0, -0x7bc835d1

    invoke-static {v14, v0, v7, v15}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    goto :goto_2c

    :goto_2d
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListState;->m:Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;

    move-object/from16 v9, v28

    invoke-interface {v9, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v3, v6, Landroidx/compose/foundation/lazy/LazyListState;->n:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move/from16 v4, p5

    move-object v3, v2

    move-object/from16 v2, p9

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v11, v1

    move-object v2, v3

    invoke-interface {v0, v7}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object v1, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->k:Landroidx/compose/ui/Modifier;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v7, v6, Landroidx/compose/foundation/lazy/LazyListState;->g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p6

    move-object v1, v6

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/ScrollableAreaKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    iget-object v9, v1, Landroidx/compose/foundation/lazy/LazyListState;->q:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    const/4 v12, 0x0

    move-object v7, v11

    move-object v11, v14

    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v8, v17

    move-object/from16 v10, v19

    move-object/from16 v9, v20

    move-object/from16 v11, v32

    goto :goto_2e

    :cond_58
    move-object v11, v6

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v10, p9

    move-object v8, v9

    move-object v14, v11

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    :goto_2e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_59

    move-object v2, v0

    new-instance v0, Lh70;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v40, v2

    move-object v2, v1

    move-object/from16 v1, v28

    invoke-direct/range {v0 .. v15}, Lh70;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v2, v40

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_59
    return-void
.end method
