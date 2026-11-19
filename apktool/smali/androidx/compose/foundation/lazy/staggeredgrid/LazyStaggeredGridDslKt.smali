.class public abstract Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;
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
.method public static final a(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$Fixed;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p3

    const-string v2, "LazyVerticalStaggeredGrid-6qCrX9Q"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, -0x2281ca08

    move-object/from16 v4, p9

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    or-int v3, p10, v3

    or-int/lit16 v3, v3, 0xb0

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x800

    goto :goto_1

    :cond_2
    const/16 v7, 0x400

    :goto_1
    or-int/2addr v3, v7

    const v7, 0x5b6000

    or-int/2addr v3, v7

    move/from16 v7, p6

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x4000000

    goto :goto_2

    :cond_3
    const/high16 v8, 0x2000000

    :goto_2
    or-int/2addr v3, v8

    const/high16 v8, 0x10000000

    or-int/2addr v3, v8

    move-object/from16 v9, p8

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v5

    goto :goto_3

    :cond_4
    move v8, v4

    :goto_3
    const v10, 0x12492493

    and-int/2addr v10, v3

    const v11, 0x12492492

    const/4 v14, 0x0

    if-ne v10, v11, :cond_6

    and-int/lit8 v10, v8, 0x3

    if-eq v10, v4, :cond_5

    goto :goto_4

    :cond_5
    move v4, v14

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v4, 0x1

    :goto_5
    and-int/lit8 v10, v3, 0x1

    invoke-virtual {v12, v10, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v4, p10, 0x1

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const v11, -0x71c00381

    if-eqz v4, :cond_8

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int v2, v3, v11

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    move-object v3, v0

    move v4, v2

    move-object/from16 v2, p2

    move-object/from16 v0, p4

    goto :goto_7

    :cond_8
    :goto_6
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-array v2, v14, [Ljava/lang/Object;

    sget-object v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->x:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->y:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v15

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v16

    or-int v15, v15, v16

    move/from16 p1, v11

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v15, :cond_9

    if-ne v11, v10, :cond_a

    :cond_9
    new-instance v11, Lc70;

    const/16 v15, 0xe

    invoke-direct {v11, v15}, Lc70;-><init>(I)V

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v4, v11, v12, v14}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    sget-object v4, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v4, 0x0

    invoke-static {v4}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v4

    invoke-static {v12}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    move-result-object v11

    invoke-static {v12}, Landroidx/compose/foundation/OverscrollKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v15

    and-int v3, v3, p1

    move v7, v3

    move-object v3, v0

    move-object v0, v4

    move v4, v7

    move-object v7, v11

    move-object v9, v15

    :goto_7
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object v11, v3

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->a()F

    move-result v15

    and-int/lit8 v16, v4, 0xe

    or-int/lit8 v16, v16, 0x30

    shr-int/lit8 v13, v4, 0x3

    and-int/lit16 v14, v13, 0x380

    or-int v14, v16, v14

    and-int/lit8 v16, v14, 0xe

    move-object/from16 p2, v2

    xor-int/lit8 v2, v16, 0x6

    if-le v2, v5, :cond_b

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    and-int/lit8 v2, v14, 0x6

    if-ne v2, v5, :cond_d

    :cond_c
    const/4 v2, 0x1

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    :goto_8
    and-int/lit16 v5, v14, 0x380

    xor-int/lit16 v5, v5, 0x180

    move/from16 p4, v2

    const/16 v2, 0x100

    if-le v5, v2, :cond_e

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    :cond_e
    and-int/lit16 v5, v14, 0x180

    if-ne v5, v2, :cond_10

    :cond_f
    const/4 v2, 0x1

    goto :goto_9

    :cond_10
    const/4 v2, 0x0

    :goto_9
    or-int v2, p4, v2

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_11

    if-ne v5, v10, :cond_12

    :cond_11
    new-instance v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;

    new-instance v2, Lrv;

    const/16 v10, 0x12

    invoke-direct {v2, v6, v1, v0, v10}, Lrv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v5, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    const v2, 0xe000

    shl-int/lit8 v4, v4, 0x3

    and-int/2addr v2, v4

    const v4, 0x30c30

    or-int/2addr v2, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v4, v13

    or-int/2addr v2, v4

    const/high16 v4, 0x30000000

    or-int v13, v2, v4

    shl-int/lit8 v2, v8, 0x3

    and-int/lit8 v14, v2, 0x70

    move-object/from16 v2, p2

    move/from16 v8, p6

    move-object v4, v5

    move-object v5, v11

    move v10, v15

    move-object/from16 v11, p8

    invoke-static/range {v2 .. v14}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridKt;->a(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object v3, v2

    move-object v2, v5

    move-object v6, v7

    move-object v8, v9

    move-object v5, v0

    goto :goto_a

    :cond_13
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object v2, v0

    :goto_a
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_14

    new-instance v0, Lmj;

    move-object/from16 v4, p3

    move/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lmj;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$Fixed;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method
