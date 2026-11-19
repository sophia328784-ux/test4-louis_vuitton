.class public abstract Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "components"
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
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;IFFFLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v6, p5

    move/from16 v2, p6

    move/from16 v9, p9

    const-string v3, "LVFreeCarouselWithHint-1tP8Re8"

    if-eqz v0, :cond_0

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x18525acb

    move-object/from16 v5, p8

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    and-int/lit8 v4, p10, 0x1

    if-eqz v4, :cond_1

    or-int/lit8 v5, v9, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v5, v9, 0x6

    if-nez v5, :cond_3

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v9

    goto :goto_1

    :cond_3
    move v5, v9

    :goto_1
    and-int/lit8 v11, v9, 0x30

    if-nez v11, :cond_6

    and-int/lit8 v11, p10, 0x2

    if-nez v11, :cond_4

    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/16 v13, 0x20

    goto :goto_2

    :cond_4
    move-object/from16 v11, p1

    :cond_5
    const/16 v13, 0x10

    :goto_2
    or-int/2addr v5, v13

    goto :goto_3

    :cond_6
    move-object/from16 v11, p1

    :goto_3
    and-int/lit16 v13, v9, 0x180

    if-nez v13, :cond_8

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/16 v13, 0x100

    goto :goto_4

    :cond_7
    const/16 v13, 0x80

    :goto_4
    or-int/2addr v5, v13

    :cond_8
    and-int/lit16 v13, v9, 0xc00

    if-nez v13, :cond_a

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x800

    goto :goto_5

    :cond_9
    const/16 v13, 0x400

    :goto_5
    or-int/2addr v5, v13

    :cond_a
    and-int/lit16 v13, v9, 0x6000

    if-nez v13, :cond_c

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x4000

    goto :goto_6

    :cond_b
    const/16 v13, 0x2000

    :goto_6
    or-int/2addr v5, v13

    :cond_c
    const/high16 v13, 0x30000

    and-int/2addr v13, v9

    if-nez v13, :cond_e

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v13

    if-eqz v13, :cond_d

    const/high16 v13, 0x20000

    goto :goto_7

    :cond_d
    const/high16 v13, 0x10000

    :goto_7
    or-int/2addr v5, v13

    :cond_e
    const/high16 v13, 0x180000

    and-int/2addr v13, v9

    if-nez v13, :cond_10

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v13

    if-eqz v13, :cond_f

    const/high16 v13, 0x100000

    goto :goto_8

    :cond_f
    const/high16 v13, 0x80000

    :goto_8
    or-int/2addr v5, v13

    :cond_10
    const/high16 v13, 0xc00000

    and-int/2addr v13, v9

    if-nez v13, :cond_12

    move-object/from16 v13, p7

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x800000

    goto :goto_9

    :cond_11
    const/high16 v16, 0x400000

    :goto_9
    or-int v5, v5, v16

    goto :goto_a

    :cond_12
    move-object/from16 v13, p7

    :goto_a
    const v16, 0x492493

    and-int v14, v5, v16

    const v15, 0x492492

    const/4 v12, 0x0

    const/16 v18, 0x1

    if-eq v14, v15, :cond_13

    move/from16 v14, v18

    goto :goto_b

    :cond_13
    move v14, v12

    :goto_b
    and-int/lit8 v15, v5, 0x1

    invoke-virtual {v10, v15, v14}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v14

    if-eqz v14, :cond_25

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v14, v9, 0x1

    if-eqz v14, :cond_16

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v14

    if-eqz v14, :cond_14

    goto :goto_c

    :cond_14
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v3, p10, 0x2

    if-eqz v3, :cond_15

    and-int/lit8 v5, v5, -0x71

    :cond_15
    move-object v14, v0

    goto :goto_d

    :cond_16
    :goto_c
    if-eqz v4, :cond_17

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_17
    and-int/lit8 v3, p10, 0x2

    if-eqz v3, :cond_15

    const/4 v3, 0x3

    invoke-static {v12, v10, v3}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v3

    and-int/lit8 v5, v5, -0x71

    move-object v14, v0

    move-object v11, v3

    :goto_d
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v4, :cond_18

    int-to-float v0, v0

    sub-float/2addr v0, v6

    int-to-float v3, v7

    mul-float v15, v2, v3

    sub-float/2addr v0, v15

    add-float/2addr v3, v8

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    and-int/lit8 v20, v5, 0x70

    xor-int/lit8 v0, v20, 0x30

    const/16 v15, 0x20

    if-le v0, v15, :cond_19

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_19
    and-int/lit8 v0, v5, 0x30

    if-ne v0, v15, :cond_1b

    :cond_1a
    move/from16 v0, v18

    goto :goto_e

    :cond_1b
    move v0, v12

    :goto_e
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v0, :cond_1c

    if-ne v15, v4, :cond_1d

    :cond_1c
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;

    sget-object v15, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->a:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    invoke-direct {v0, v11, v15}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/gestures/snapping/SnapPosition;)V

    new-instance v15, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint$snappingLayout$1$1;

    invoke-direct {v15, v0}, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint$snappingLayout$1$1;-><init>(Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;)V

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v15, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint$snappingLayout$1$1;

    invoke-static {v15, v10}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->e(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    move-result-object v15

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v17, :cond_1e

    if-ne v12, v4, :cond_1f

    :cond_1e
    new-instance v12, Lud;

    const/4 v2, 0x7

    invoke-direct {v12, v1, v2}, Lud;-><init>(Ljava/util/List;I)V

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-static {v0, v2, v12}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v17, 0x380000

    and-int v2, v5, v17

    move/from16 p1, v0

    const/high16 v0, 0x100000

    if-ne v2, v0, :cond_20

    move/from16 v0, v18

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    :goto_f
    or-int v0, p1, v0

    const/high16 v2, 0x70000

    and-int/2addr v2, v5

    move/from16 p1, v0

    const/high16 v0, 0x20000

    if-ne v2, v0, :cond_21

    move/from16 v0, v18

    goto :goto_10

    :cond_21
    const/4 v0, 0x0

    :goto_10
    or-int v0, p1, v0

    const/high16 v2, 0x1c00000

    and-int/2addr v2, v5

    const/high16 v5, 0x800000

    if-ne v2, v5, :cond_22

    goto :goto_11

    :cond_22
    const/16 v18, 0x0

    :goto_11
    or-int v0, v0, v18

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_23

    if-ne v2, v4, :cond_24

    :cond_23
    new-instance v0, Lrk;

    const/4 v6, 0x1

    move/from16 v4, p5

    move/from16 v2, p6

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lrk;-><init>(Ljava/lang/Object;FFFLjava/lang/Object;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :cond_24
    move-object/from16 v18, v2

    check-cast v18, Lkotlin/jvm/functions/Function1;

    const/16 v21, 0x1bc

    move-object/from16 v19, v10

    move-object v10, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v10 .. v21}, Landroidx/compose/foundation/lazy/LazyDslKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    :goto_12
    move-object v1, v0

    move-object v2, v11

    goto :goto_13

    :cond_25
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_12

    :goto_13
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_26

    new-instance v0, Lz50;

    move-object/from16 v3, p2

    move/from16 v6, p5

    move/from16 v10, p10

    move v4, v7

    move v5, v8

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lz50;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;IFFFLkotlin/jvm/functions/Function4;II)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_26
    return-void
.end method
