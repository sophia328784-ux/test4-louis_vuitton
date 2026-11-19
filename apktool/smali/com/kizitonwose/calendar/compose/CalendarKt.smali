.class public abstract Lcom/kizitonwose/calendar/compose/CalendarKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "compose_release"
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/kizitonwose/calendar/compose/CalendarState;ZZLandroidx/compose/foundation/layout/PaddingValues;Lcom/kizitonwose/calendar/compose/ContentHeightMode;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    if-eqz v0, :cond_0

    const-string v1, "Calendar"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v11, v0

    const v0, -0x64f92788

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v9, 0x6

    if-nez v1, :cond_2

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v9

    goto :goto_1

    :cond_2
    move v1, v9

    :goto_1
    and-int/lit8 v6, v9, 0x30

    if-nez v6, :cond_4

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_2

    :cond_3
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v1, v6

    :cond_4
    and-int/lit16 v6, v9, 0x180

    if-nez v6, :cond_6

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x100

    goto :goto_3

    :cond_5
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v1, v6

    :cond_6
    and-int/lit16 v6, v9, 0xc00

    if-nez v6, :cond_8

    move/from16 v6, p3

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x800

    goto :goto_4

    :cond_7
    const/16 v16, 0x400

    :goto_4
    or-int v1, v1, v16

    goto :goto_5

    :cond_8
    move/from16 v6, p3

    :goto_5
    and-int/lit16 v4, v9, 0x6000

    const/4 v12, 0x1

    if-nez v4, :cond_a

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x4000

    goto :goto_6

    :cond_9
    const/16 v4, 0x2000

    :goto_6
    or-int/2addr v1, v4

    :cond_a
    const/high16 v4, 0x30000

    and-int/2addr v4, v9

    const/4 v14, 0x0

    if-nez v4, :cond_c

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_b

    const/high16 v4, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v4, 0x10000

    :goto_7
    or-int/2addr v1, v4

    :cond_c
    const/high16 v4, 0x180000

    and-int/2addr v4, v9

    if-nez v4, :cond_e

    move-object/from16 v4, p4

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/high16 v17, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v17, 0x80000

    :goto_8
    or-int v1, v1, v17

    goto :goto_9

    :cond_e
    move-object/from16 v4, p4

    :goto_9
    const/high16 v17, 0xc00000

    and-int v17, v9, v17

    if-nez v17, :cond_10

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v14

    if-eqz v14, :cond_f

    const/high16 v14, 0x800000

    goto :goto_a

    :cond_f
    const/high16 v14, 0x400000

    :goto_a
    or-int/2addr v1, v14

    :cond_10
    const/high16 v14, 0x6000000

    and-int/2addr v14, v9

    if-nez v14, :cond_12

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/high16 v14, 0x4000000

    goto :goto_b

    :cond_11
    const/high16 v14, 0x2000000

    :goto_b
    or-int/2addr v1, v14

    :cond_12
    const/high16 v14, 0x30000000

    and-int/2addr v14, v9

    if-nez v14, :cond_14

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    const/high16 v14, 0x20000000

    goto :goto_c

    :cond_13
    const/high16 v14, 0x10000000

    :goto_c
    or-int/2addr v1, v14

    :cond_14
    and-int/lit8 v14, v10, 0x6

    const/4 v15, 0x0

    if-nez v14, :cond_16

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    const/4 v14, 0x4

    goto :goto_d

    :cond_15
    const/4 v14, 0x2

    :goto_d
    or-int/2addr v14, v10

    goto :goto_e

    :cond_16
    move v14, v10

    :goto_e
    and-int/lit8 v22, v10, 0x30

    if-nez v22, :cond_18

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17

    const/16 v22, 0x20

    goto :goto_f

    :cond_17
    const/16 v22, 0x10

    :goto_f
    or-int v14, v14, v22

    :cond_18
    and-int/lit16 v12, v10, 0x180

    if-nez v12, :cond_1a

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    const/16 v16, 0x100

    goto :goto_10

    :cond_19
    const/16 v16, 0x80

    :goto_10
    or-int v14, v14, v16

    :cond_1a
    const v12, 0x12492493

    and-int/2addr v12, v1

    const v15, 0x12492492

    if-ne v12, v15, :cond_1c

    and-int/lit16 v12, v14, 0x93

    const/16 v15, 0x92

    if-eq v12, v15, :cond_1b

    goto :goto_11

    :cond_1b
    const/4 v12, 0x0

    goto :goto_12

    :cond_1c
    :goto_11
    const/4 v12, 0x1

    :goto_12
    and-int/lit8 v15, v1, 0x1

    invoke-virtual {v0, v15, v12}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v12

    if-eqz v12, :cond_2c

    sget-object v12, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v12, -0x5e543e3a

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v12, v2, Lcom/kizitonwose/calendar/compose/CalendarState;->g:Landroidx/compose/foundation/lazy/LazyListState;

    shr-int/lit8 v15, v1, 0x6

    and-int/lit8 v13, v15, 0xe

    or-int/lit16 v13, v13, 0x180

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v16, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    move/from16 v22, v1

    if-eqz v3, :cond_22

    const v1, -0x3241eb63

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    shr-int/lit8 v1, v13, 0x3

    and-int/lit8 v13, v1, 0xe

    xor-int/lit8 v13, v13, 0x6

    move/from16 v23, v1

    const/4 v1, 0x4

    if-le v13, v1, :cond_1d

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1e

    :cond_1d
    and-int/lit8 v13, v23, 0x6

    if-ne v13, v1, :cond_1f

    :cond_1e
    const/4 v1, 0x1

    goto :goto_13

    :cond_1f
    const/4 v1, 0x0

    :goto_13
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v1, :cond_20

    if-ne v13, v5, :cond_21

    :cond_20
    new-instance v1, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;

    sget-object v13, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->a:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    invoke-direct {v1, v12, v13}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/gestures/snapping/SnapPosition;)V

    new-instance v13, Lcom/kizitonwose/calendar/compose/CalendarDefaultsKt$CalendarSnapLayoutInfoProvider$1;

    invoke-direct {v13, v1}, Lcom/kizitonwose/calendar/compose/CalendarDefaultsKt$CalendarSnapLayoutInfoProvider$1;-><init>(Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;)V

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v13, Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    invoke-static {v13, v0}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->e(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    move-result-object v1

    :goto_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_15

    :cond_22
    const v1, -0x3241e783

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v0}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    move-result-object v1

    goto :goto_14

    :goto_15
    and-int/lit8 v13, v22, 0x70

    move-object/from16 v23, v1

    const/16 v1, 0x20

    if-ne v13, v1, :cond_23

    const/4 v1, 0x1

    goto :goto_16

    :cond_23
    const/4 v1, 0x0

    :goto_16
    const/high16 v24, 0x1c00000

    and-int v13, v22, v24

    move/from16 v25, v1

    const/high16 v1, 0x800000

    if-ne v13, v1, :cond_24

    const/4 v1, 0x1

    goto :goto_17

    :cond_24
    const/4 v1, 0x0

    :goto_17
    or-int v1, v25, v1

    const/high16 v13, 0xe000000

    and-int v13, v22, v13

    move/from16 p0, v1

    const/high16 v1, 0x4000000

    if-ne v13, v1, :cond_25

    const/4 v1, 0x1

    goto :goto_18

    :cond_25
    const/4 v1, 0x0

    :goto_18
    or-int v1, p0, v1

    const/high16 v13, 0x70000000

    and-int v13, v22, v13

    move/from16 p0, v1

    const/high16 v1, 0x20000000

    if-ne v13, v1, :cond_26

    const/4 v1, 0x1

    goto :goto_19

    :cond_26
    const/4 v1, 0x0

    :goto_19
    or-int v1, p0, v1

    and-int/lit8 v13, v14, 0xe

    move/from16 p0, v1

    const/4 v1, 0x4

    if-ne v13, v1, :cond_27

    const/4 v1, 0x1

    goto :goto_1a

    :cond_27
    const/4 v1, 0x0

    :goto_1a
    or-int v1, p0, v1

    and-int/lit8 v13, v14, 0x70

    move/from16 p0, v1

    const/16 v1, 0x20

    if-ne v13, v1, :cond_28

    const/4 v1, 0x1

    goto :goto_1b

    :cond_28
    const/4 v1, 0x0

    :goto_1b
    or-int v1, p0, v1

    and-int/lit16 v13, v14, 0x380

    const/16 v14, 0x100

    if-ne v13, v14, :cond_29

    const/16 v18, 0x1

    goto :goto_1c

    :cond_29
    const/16 v18, 0x0

    :goto_1c
    or-int v1, v1, v18

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v1, :cond_2b

    if-ne v13, v5, :cond_2a

    goto :goto_1d

    :cond_2a
    move-object/from16 v1, p5

    goto :goto_1e

    :cond_2b
    :goto_1d
    new-instance v13, Lcom/kizitonwose/calendar/compose/a;

    move-object/from16 v1, p5

    invoke-direct {v13, v2, v1, v7, v8}, Lcom/kizitonwose/calendar/compose/a;-><init>(Lcom/kizitonwose/calendar/compose/CalendarState;Lcom/kizitonwose/calendar/compose/ContentHeightMode;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function4;)V

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1e
    move-object/from16 v19, v13

    check-cast v19, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v5, v22, 0xe

    shr-int/lit8 v13, v22, 0xc

    and-int/lit16 v13, v13, 0x380

    or-int/2addr v5, v13

    and-int/lit16 v13, v15, 0x1c00

    or-int/2addr v5, v13

    shl-int/lit8 v13, v22, 0xc

    and-int v13, v13, v24

    or-int v21, v5, v13

    const/16 v22, 0x130

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v20, v0

    move-object v13, v4

    move/from16 v17, v6

    move-object/from16 v16, v23

    const/4 v0, 0x0

    invoke-static/range {v11 .. v22}, Landroidx/compose/foundation/lazy/LazyDslKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v4, v20

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1f

    :cond_2c
    move-object/from16 v1, p5

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1f
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_2d

    new-instance v0, Lai;

    move-object v1, v11

    const/4 v11, 0x0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v11}, Lai;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;ZZLjava/lang/Object;Ljava/lang/Object;Lkotlin/Function;Lkotlin/Function;III)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2d
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/kizitonwose/calendar/compose/CalendarState;ZZLandroidx/compose/foundation/layout/PaddingValues;Lcom/kizitonwose/calendar/compose/ContentHeightMode;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "HorizontalCalendar"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x4382be8

    move-object/from16 v3, p8

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    or-int/lit8 v2, p9, 0x6

    move-object/from16 v14, p1

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_0

    :cond_1
    const/16 v3, 0x10

    :goto_0
    or-int/2addr v2, v3

    const v3, 0x301b6d80

    or-int/2addr v2, v3

    const v3, 0x12492493

    and-int/2addr v3, v2

    const v4, 0x12492492

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    and-int/lit8 v4, v2, 0x1

    invoke-virtual {v11, v4, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v3, p9, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    :goto_2
    move-object v3, v0

    goto :goto_4

    :cond_4
    :goto_3
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/compose/foundation/layout/PaddingKt;->a(F)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v1

    sget-object v3, Lcom/kizitonwose/calendar/compose/ContentHeightMode;->Wrap:Lcom/kizitonwose/calendar/compose/ContentHeightMode;

    move-object v7, v1

    move-object v8, v3

    move v6, v5

    goto :goto_2

    :goto_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v0, v2, 0x70

    const v1, 0x36db6d86

    or-int v12, v0, v1

    const/16 v13, 0x1b6

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object v4, v14

    invoke-static/range {v3 .. v13}, Lcom/kizitonwose/calendar/compose/CalendarKt;->a(Landroidx/compose/ui/Modifier;Lcom/kizitonwose/calendar/compose/CalendarState;ZZLandroidx/compose/foundation/layout/PaddingValues;Lcom/kizitonwose/calendar/compose/ContentHeightMode;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    move-object v13, v3

    move v15, v5

    move/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    goto :goto_5

    :cond_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move-object v13, v0

    :goto_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v12, Lzh;

    move-object/from16 v14, p1

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move/from16 v21, p9

    invoke-direct/range {v12 .. v21}, Lzh;-><init>(Landroidx/compose/ui/Modifier;Lcom/kizitonwose/calendar/compose/CalendarState;ZZLandroidx/compose/foundation/layout/PaddingValues;Lcom/kizitonwose/calendar/compose/ContentHeightMode;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function4;I)V

    iput-object v12, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method
