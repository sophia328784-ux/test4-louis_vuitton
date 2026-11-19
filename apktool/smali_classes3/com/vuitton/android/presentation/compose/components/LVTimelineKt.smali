.class public abstract Lcom/vuitton/android/presentation/compose/components/LVTimelineKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u00a8\u0006\u0008\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0006\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "firstComposition",
        "",
        "width",
        "",
        "sliderValue",
        "fullHeight",
        "inactiveWidth",
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
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;IIFJJJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 40

    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v14, p3

    move/from16 v15, p15

    move/from16 v1, p16

    const-string v2, "LVTimeline-KlO9mzU"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v4, 0x185097dd

    move-object/from16 v5, p14

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    and-int/lit8 v4, v15, 0x6

    if-nez v4, :cond_2

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v15

    goto :goto_1

    :cond_2
    move v4, v15

    :goto_1
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_4

    or-int/lit8 v4, v4, 0x30

    :cond_3
    move-object/from16 v7, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v15, 0x30

    if-nez v7, :cond_3

    move-object/from16 v7, p1

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x20

    goto :goto_2

    :cond_5
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    :goto_3
    and-int/lit16 v8, v15, 0x180

    const/high16 v9, 0x43180000    # 152.0f

    if-nez v8, :cond_7

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x100

    goto :goto_4

    :cond_6
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v4, v8

    :cond_7
    and-int/lit16 v8, v15, 0xc00

    if-nez v8, :cond_9

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x800

    goto :goto_5

    :cond_8
    const/16 v8, 0x400

    :goto_5
    or-int/2addr v4, v8

    :cond_9
    and-int/lit16 v8, v15, 0x6000

    if-nez v8, :cond_b

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x4000

    goto :goto_6

    :cond_a
    const/16 v8, 0x2000

    :goto_6
    or-int/2addr v4, v8

    :cond_b
    and-int/lit8 v8, v1, 0x20

    const/high16 v13, 0x30000

    if-eqz v8, :cond_d

    or-int/2addr v4, v13

    :cond_c
    move/from16 v13, p4

    goto :goto_8

    :cond_d
    and-int/2addr v13, v15

    if-nez v13, :cond_c

    move/from16 v13, p4

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x20000

    goto :goto_7

    :cond_e
    const/high16 v16, 0x10000

    :goto_7
    or-int v4, v4, v16

    :goto_8
    const/high16 v16, 0x180000

    and-int v16, v15, v16

    if-nez v16, :cond_10

    and-int/lit8 v16, v1, 0x40

    move-wide/from16 v6, p5

    if-nez v16, :cond_f

    invoke-virtual {v12, v6, v7}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x100000

    goto :goto_9

    :cond_f
    const/high16 v16, 0x80000

    :goto_9
    or-int v4, v4, v16

    goto :goto_a

    :cond_10
    move-wide/from16 v6, p5

    :goto_a
    const/high16 v16, 0xc00000

    and-int v16, v15, v16

    if-nez v16, :cond_12

    and-int/lit16 v9, v1, 0x80

    move-wide/from16 v10, p7

    if-nez v9, :cond_11

    invoke-virtual {v12, v10, v11}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v17, 0x800000

    goto :goto_b

    :cond_11
    const/high16 v17, 0x400000

    :goto_b
    or-int v4, v4, v17

    goto :goto_c

    :cond_12
    move-wide/from16 v10, p7

    :goto_c
    const/high16 v17, 0x36000000

    or-int v4, v4, v17

    const v17, 0x12492493

    and-int v9, v4, v17

    move-object/from16 v17, v0

    const v0, 0x12492492

    if-ne v9, v0, :cond_13

    const/4 v0, 0x0

    goto :goto_d

    :cond_13
    const/4 v0, 0x1

    :goto_d
    and-int/lit8 v9, v4, 0x1

    invoke-virtual {v12, v9, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v15, 0x1

    const v20, -0x1c00001

    const v21, -0x380001

    const/16 v22, 0x0

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v0, :cond_17

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_e

    :cond_14
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_15

    and-int v4, v4, v21

    :cond_15
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_16

    and-int v4, v4, v20

    :cond_16
    move/from16 v21, p4

    move-object/from16 v5, p11

    move-wide/from16 v23, v6

    move-wide/from16 v25, v10

    const/16 v0, 0xe

    move-object/from16 v11, p12

    move-object v7, v2

    move v6, v4

    move-object/from16 v4, p1

    move-wide/from16 v1, p9

    goto/16 :goto_12

    :cond_17
    :goto_e
    if-eqz v5, :cond_18

    const-string v0, ""

    goto :goto_f

    :cond_18
    move-object/from16 v0, p1

    :goto_f
    if-eqz v8, :cond_19

    sget-object v5, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v5, 0x0

    goto :goto_10

    :cond_19
    move/from16 v5, p4

    :goto_10
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_1a

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->z:J

    and-int v4, v4, v21

    :cond_1a
    and-int/lit16 v8, v1, 0x80

    if-eqz v8, :cond_1b

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v10, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->v:J

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->e:F

    invoke-static {v8, v10, v11}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v10

    and-int v4, v4, v20

    :cond_1b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v13, :cond_1c

    new-instance v8, Ln60;

    const/16 v9, 0xd

    invoke-direct {v8, v9}, Ln60;-><init>(I)V

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v13, :cond_1d

    new-instance v9, Ln60;

    move-object/from16 p1, v0

    const/16 v0, 0xe

    invoke-direct {v9, v0}, Ln60;-><init>(I)V

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_11

    :cond_1d
    move-object/from16 p1, v0

    const/16 v0, 0xe

    :goto_11
    check-cast v9, Lkotlin/jvm/functions/Function1;

    const-wide/16 v23, 0x1f4

    move-wide/from16 v25, v6

    move-object v7, v2

    move-wide/from16 v1, v23

    move-wide/from16 v23, v25

    move v6, v4

    move/from16 v21, v5

    move-object v5, v8

    move-wide/from16 v25, v10

    move-object/from16 v4, p1

    move-object v11, v9

    :goto_12
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v8, 0x1

    if-lt v14, v8, :cond_32

    if-ltz v3, :cond_31

    if-ge v3, v14, :cond_31

    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-ltz v9, :cond_30

    invoke-static/range {v23 .. v24}, Landroidx/compose/ui/graphics/Color;->d(J)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_2f

    add-int/lit8 v19, v14, -0x1

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->d:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->g:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->j:F

    const/high16 v27, 0x40000000    # 2.0f

    div-float v27, v0, v27

    sget-object v28, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    sub-float v8, v21, v27

    move/from16 v27, v0

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_1e

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v12}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    move-wide/from16 p10, v1

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_1f

    new-instance v29, Landroidx/compose/material3/SliderState;

    int-to-float v2, v14

    move-object/from16 p12, v4

    const/4 v4, 0x0

    invoke-static {v4, v2}, Lkotlin/ranges/RangesKt;->h(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v33

    const/16 v34, 0x7

    const/16 v35, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v29 .. v35}, Landroidx/compose/material3/SliderState;-><init>(FILkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v29

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_13

    :cond_1f
    move-object/from16 p12, v4

    const/4 v4, 0x0

    :goto_13
    check-cast v2, Landroidx/compose/material3/SliderState;

    invoke-static {v12}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v4

    move-object/from16 v29, v7

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v13, :cond_20

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v7, Landroidx/compose/runtime/MutableState;

    move-object/from16 v30, v7

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v13, :cond_21

    invoke-static/range {v22 .. v22}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v7, Landroidx/compose/runtime/MutableIntState;

    move-object/from16 v31, v7

    int-to-float v7, v3

    invoke-virtual {v2}, Landroidx/compose/material3/SliderState;->d()F

    move-result v32

    sub-float v32, v7, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-interface/range {v30 .. v30}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Boolean;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-eqz v32, :cond_22

    const/16 v20, 0x0

    goto :goto_14

    :cond_22
    move/from16 v20, v7

    :goto_14
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v5, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/animation/core/AnimationSpec;

    const/16 v32, 0xc00

    const/16 v33, 0x14

    const-string v34, "Slider progress"

    move-object/from16 p5, v7

    move-object/from16 p7, v12

    move/from16 p4, v20

    move/from16 p8, v32

    move/from16 p9, v33

    move-object/from16 p6, v34

    invoke-static/range {p4 .. p9}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v2, v7}, Landroidx/compose/material3/SliderState;->e(F)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/high16 v20, 0xe000000

    move-object/from16 p4, v2

    and-int v2, v6, v20

    move-object/from16 v20, v5

    const/high16 v5, 0x4000000

    if-ne v2, v5, :cond_23

    const/4 v2, 0x1

    goto :goto_15

    :cond_23
    move/from16 v2, v22

    :goto_15
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    and-int/lit16 v5, v6, 0x1c00

    move-object/from16 p5, v1

    const/16 v1, 0x800

    if-ne v5, v1, :cond_24

    const/4 v1, 0x1

    goto :goto_16

    :cond_24
    move/from16 v1, v22

    :goto_16
    or-int/2addr v1, v2

    and-int/lit16 v2, v6, 0x380

    const/16 v5, 0x100

    if-ne v2, v5, :cond_25

    const/4 v2, 0x1

    goto :goto_17

    :cond_25
    move/from16 v2, v22

    :goto_17
    or-int/2addr v1, v2

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_26

    if-ne v2, v13, :cond_27

    :cond_26
    move-object v1, v7

    move v7, v8

    move-object v8, v0

    goto :goto_18

    :cond_27
    move-object/from16 v18, p4

    move-object/from16 v3, p5

    move-object/from16 v36, p12

    move-object v0, v2

    move/from16 v16, v6

    move-object v15, v7

    move v7, v8

    move v2, v10

    move-object/from16 v32, v11

    move-object v14, v12

    move-object/from16 v37, v13

    move-object/from16 v22, v17

    move-object/from16 v38, v29

    const/high16 v29, 0x43180000    # 152.0f

    move-object v10, v4

    move/from16 v17, v9

    move-object/from16 v9, v31

    move-wide/from16 v30, p10

    goto :goto_19

    :goto_18
    new-instance v0, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;

    move-object v2, v13

    const/4 v13, 0x0

    move/from16 v5, p2

    move-object/from16 v18, p4

    move-object/from16 v36, p12

    move-object v15, v1

    move-object/from16 v37, v2

    move/from16 v16, v6

    move v6, v10

    move-object v14, v12

    move-object/from16 v22, v17

    move-object/from16 v38, v29

    const/high16 v29, 0x43180000    # 152.0f

    move-wide/from16 v1, p10

    move v12, v3

    move-object v10, v4

    move/from16 v17, v9

    move-object/from16 v4, v30

    move-object/from16 v9, v31

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v13}, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt$LVTimeline$7$1;-><init>(JLandroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;IFFLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function1;FLkotlin/coroutines/Continuation;)V

    move-wide/from16 v30, v1

    move v2, v6

    move-object/from16 v32, v11

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_19
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v15, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_28

    new-instance v0, Lq1;

    const/16 v4, 0x8

    invoke-direct {v0, v9, v4}, Lq1;-><init>(Landroidx/compose/runtime/MutableIntState;I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_28
    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v15, v22

    invoke-static {v15, v0}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-static {v0, v10, v5, v4}, Landroidx/compose/foundation/ScrollKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v8, 0x30

    invoke-static {v6, v4, v14, v8}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v4

    iget-wide v8, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v14, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v10, v14, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    const/4 v11, 0x0

    if-eqz v10, :cond_2e

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_29

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1a

    :cond_29
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1a
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v4, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v8, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v4, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v0, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2a

    invoke-static {v5}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v0, Landroidx/compose/runtime/MutableIntState;

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v6, v38

    invoke-direct {v4, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    and-int/lit8 v6, v16, 0x70

    const/16 v8, 0x20

    if-ne v6, v8, :cond_2b

    const/4 v13, 0x1

    goto :goto_1b

    :cond_2b
    move v13, v5

    :goto_1b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v13, :cond_2d

    if-ne v5, v1, :cond_2c

    goto :goto_1c

    :cond_2c
    move-object/from16 v12, v36

    goto :goto_1d

    :cond_2d
    :goto_1c
    new-instance v5, Llt;

    const/16 v1, 0x13

    move-object/from16 v12, v36

    invoke-direct {v5, v12, v1}, Llt;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1d
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x3

    invoke-static {v4, v11, v5, v1}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 p4, v1

    move/from16 p8, v4

    move/from16 p9, v5

    move/from16 p6, v6

    move/from16 p5, v7

    move/from16 p7, v8

    invoke-static/range {p4 .. p9}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move/from16 v4, p3

    int-to-float v5, v4

    mul-float v9, v29, v5

    invoke-static {v1, v9}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    new-instance v1, Ls80;

    move-object/from16 p8, v0

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    move/from16 p7, v17

    move-wide/from16 p9, v23

    move/from16 p6, v27

    invoke-direct/range {p4 .. p10}, Ls80;-><init>(Landroidx/compose/ui/unit/Density;FFLandroidx/compose/runtime/MutableIntState;J)V

    move-object/from16 v0, p4

    move-object/from16 v1, p8

    move-wide/from16 v8, p9

    const v3, 0xd674c7a

    invoke-static {v3, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    new-instance v0, Lt80;

    move-object/from16 v10, p13

    move v7, v4

    move/from16 v3, v17

    move/from16 v6, v19

    move-wide/from16 v4, v25

    invoke-direct/range {v0 .. v10}, Lt80;-><init>(Landroidx/compose/runtime/MutableIntState;FFJIIJLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-wide v2, v4

    move-object v4, v0

    move-wide v0, v8

    const v5, -0x7e80b185

    invoke-static {v5, v4, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    const v5, 0x1b0180

    sget v6, Landroidx/compose/material3/SliderState;->t:I

    or-int/2addr v5, v6

    move-object/from16 v36, v12

    move-object v12, v14

    const/16 v14, 0x18

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v11

    move-object v10, v13

    move-object v11, v4

    move v13, v5

    move-object/from16 v5, v18

    invoke-static/range {v5 .. v14}, Landroidx/compose/material3/SliderKt;->b(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/4 v8, 0x1

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-wide v6, v0

    move-wide v8, v2

    move-object v14, v12

    move-object/from16 v12, v20

    move/from16 v5, v21

    move-wide/from16 v10, v30

    move-object/from16 v13, v32

    move-object/from16 v2, v36

    goto :goto_1e

    :cond_2e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v11

    :cond_2f
    const-string v0, "Active color must be fully opaque"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_30
    const-string v0, "Delay first animation must be positive"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_31
    const-string v0, "target must be between 0 (inclusive) and max (exclusive)"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_32
    const-string v0, "Max must be strictly greater than 0"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_33
    move-object/from16 v15, v17

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v2, p1

    move/from16 v5, p4

    move-object/from16 v13, p12

    move-wide v8, v10

    move-object v14, v12

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    :goto_1e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_34

    move-object v1, v0

    new-instance v0, Lu80;

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v14, p13

    move/from16 v16, p16

    move-object/from16 v39, v1

    move-object v1, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v16}, Lu80;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;IIFJJJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    move-object/from16 v1, v39

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_34
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;JIFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v10, p10

    move/from16 v11, p11

    const-string v1, "TrackLine-oL2erpo"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, -0x66f0322a

    move-object/from16 v8, p9

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    iget-object v8, v3, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v9, v11, 0x1

    if-eqz v9, :cond_1

    or-int/lit8 v12, v10, 0x6

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x4

    goto :goto_0

    :cond_2
    const/4 v12, 0x2

    :goto_0
    or-int/2addr v12, v10

    :goto_1
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/16 v13, 0x20

    goto :goto_2

    :cond_3
    const/16 v13, 0x10

    :goto_2
    or-int/2addr v12, v13

    or-int/lit16 v12, v12, 0x180

    and-int/lit16 v13, v10, 0xc00

    if-nez v13, :cond_5

    invoke-virtual {v3, v4, v5}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x800

    goto :goto_3

    :cond_4
    const/16 v13, 0x400

    :goto_3
    or-int/2addr v12, v13

    :cond_5
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x4000

    goto :goto_4

    :cond_6
    const/16 v13, 0x2000

    :goto_4
    or-int/2addr v12, v13

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v13

    if-eqz v13, :cond_7

    const/high16 v13, 0x20000

    goto :goto_5

    :cond_7
    const/high16 v13, 0x10000

    :goto_5
    or-int/2addr v12, v13

    and-int/lit8 v13, v11, 0x40

    if-eqz v13, :cond_8

    const/high16 v14, 0x180000

    or-int/2addr v12, v14

    move-object/from16 v14, p7

    goto :goto_7

    :cond_8
    move-object/from16 v14, p7

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/high16 v15, 0x100000

    goto :goto_6

    :cond_9
    const/high16 v15, 0x80000

    :goto_6
    or-int/2addr v12, v15

    :goto_7
    and-int/lit16 v15, v11, 0x80

    const/high16 v16, 0xc00000

    if-eqz v15, :cond_b

    or-int v12, v12, v16

    :cond_a
    move-object/from16 v16, v0

    move-object/from16 v0, p8

    goto :goto_9

    :cond_b
    and-int v16, v10, v16

    if-nez v16, :cond_a

    move-object/from16 v16, v0

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/high16 v17, 0x800000

    goto :goto_8

    :cond_c
    const/high16 v17, 0x400000

    :goto_8
    or-int v12, v12, v17

    :goto_9
    const v17, 0x492493

    and-int v0, v12, v17

    move-object/from16 v17, v8

    const v8, 0x492492

    move/from16 p0, v9

    const/4 v9, 0x0

    if-eq v0, v8, :cond_d

    const/4 v0, 0x1

    goto :goto_a

    :cond_d
    move v0, v9

    :goto_a
    and-int/lit8 v8, v12, 0x1

    invoke-virtual {v3, v8, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz p0, :cond_e

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :cond_e
    move-object/from16 v0, v16

    :goto_b
    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v8, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    if-eqz v13, :cond_10

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v13, v14, :cond_f

    new-instance v13, Ln60;

    const/16 v14, 0xc

    invoke-direct {v13, v14}, Ln60;-><init>(I)V

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v13, Lkotlin/jvm/functions/Function1;

    goto :goto_c

    :cond_10
    move-object v13, v14

    :goto_c
    if-eqz v15, :cond_11

    sget-object v14, Lcom/vuitton/android/presentation/compose/components/ComposableSingletons$LVTimelineKt;->a:Lcom/vuitton/android/presentation/compose/components/ComposableSingletons$LVTimelineKt;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lcom/vuitton/android/presentation/compose/components/ComposableSingletons$LVTimelineKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_d

    :cond_11
    move-object/from16 v14, p8

    :goto_d
    sget-object v15, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v15, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v15, v9}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    iget-wide v9, v3, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    move/from16 p2, v9

    invoke-static {v3, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v0

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v18, 0x0

    if-eqz v17, :cond_19

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v3, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_12

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_12
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_e
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v15, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v10, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move/from16 v19, v12

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v10, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v10}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 p2, v14

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v9, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v2, v4, v5, v9}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/4 v2, 0x0

    invoke-static {v7, v3, v2}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v7, v2}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    iget-wide v4, v3, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v3, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-eqz v17, :cond_18

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 p8, v9

    iget-boolean v9, v3, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_13

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_f

    :cond_13
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_f
    invoke-static {v3, v2, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3, v5, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v3, v12, v3, v10}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v3, v7, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x1fc48b85

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v6, :cond_17

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    invoke-static {v1, v0, v4, v5}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v9, 0x0

    invoke-static {v5, v7, v3, v9}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v5

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-wide v9, v3, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v3, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v17, :cond_16

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v3, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_14

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    :cond_14
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_11
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v5, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v9, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v5, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v0, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v4

    goto :goto_12

    :cond_15
    const/4 v0, 0x0

    :goto_12
    invoke-static {v8, v0}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v5, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v5}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move/from16 v7, p6

    invoke-static {v0, v7}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-wide/from16 v9, p3

    move-object/from16 v5, p8

    invoke-static {v0, v9, v10, v5}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v11, 0x0

    invoke-static {v0, v3, v11}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    shr-int/lit8 v11, v19, 0xf

    and-int/lit16 v11, v11, 0x380

    const/4 v12, 0x6

    or-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    move-object/from16 v14, p2

    invoke-interface {v14, v12, v0, v3, v11}, Lkotlin/jvm/functions/Function4;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    :cond_16
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v18

    :cond_17
    move-object/from16 v14, p2

    move-wide/from16 v9, p3

    move/from16 v7, p6

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v7}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object v9, v14

    :goto_13
    move-object/from16 v1, v16

    goto :goto_14

    :cond_18
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v18

    :cond_19
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v18

    :cond_1a
    move-wide v9, v4

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v8, p2

    move-object/from16 v9, p8

    move-object v13, v14

    goto :goto_13

    :goto_14
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_1b

    new-instance v0, Lr80;

    move-object/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v10, p10

    move/from16 v11, p11

    move-object v3, v8

    move-object v8, v13

    invoke-direct/range {v0 .. v11}, Lr80;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;JIFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method

.method public static final c(I)I
    .locals 3

    sget-object v0, Lkotlin/random/Random;->b:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/random/Random;->c:Lkotlin/random/AbstractPlatformRandom;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lkotlin/random/Random;->e(II)I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-static {p0}, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt;->c(I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method
