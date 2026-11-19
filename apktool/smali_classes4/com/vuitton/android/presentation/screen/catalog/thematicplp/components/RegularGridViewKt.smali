.class public abstract Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/RegularGridViewKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;Ljava/lang/String;FFFFZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p6

    move/from16 v15, p15

    if-eqz v0, :cond_0

    const-string v1, "RegularGridView-xYaah8o"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, -0x26f1a747

    move-object/from16 v4, p13

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int v4, p14, v4

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_1

    :cond_2
    const/16 v8, 0x10

    :goto_1
    or-int/2addr v4, v8

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x100

    goto :goto_2

    :cond_3
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v4, v8

    move-object/from16 v8, p3

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x800

    goto :goto_3

    :cond_4
    const/16 v16, 0x400

    :goto_3
    or-int v4, v4, v16

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v16

    if-eqz v16, :cond_5

    const/16 v16, 0x4000

    goto :goto_4

    :cond_5
    const/16 v16, 0x2000

    :goto_4
    or-int v4, v4, v16

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v16

    if-eqz v16, :cond_6

    const/high16 v16, 0x20000

    goto :goto_5

    :cond_6
    const/high16 v16, 0x10000

    :goto_5
    or-int v4, v4, v16

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v16

    if-eqz v16, :cond_7

    const/high16 v16, 0x100000

    goto :goto_6

    :cond_7
    const/high16 v16, 0x80000

    :goto_6
    or-int v4, v4, v16

    move/from16 v11, p7

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v17

    if-eqz v17, :cond_8

    const/high16 v17, 0x800000

    goto :goto_7

    :cond_8
    const/high16 v17, 0x400000

    :goto_7
    or-int v4, v4, v17

    move/from16 v9, p8

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v18

    if-eqz v18, :cond_9

    const/high16 v18, 0x4000000

    goto :goto_8

    :cond_9
    const/high16 v18, 0x2000000

    :goto_8
    or-int v4, v4, v18

    move/from16 v6, p9

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v19

    if-eqz v19, :cond_a

    const/high16 v19, 0x20000000

    goto :goto_9

    :cond_a
    const/high16 v19, 0x10000000

    :goto_9
    or-int v4, v4, v19

    and-int/lit8 v19, v15, 0x6

    move-object/from16 v12, p10

    if-nez v19, :cond_c

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    const/16 v20, 0x4

    goto :goto_a

    :cond_b
    const/16 v20, 0x2

    :goto_a
    or-int v20, v15, v20

    goto :goto_b

    :cond_c
    move/from16 v20, v15

    :goto_b
    and-int/lit8 v21, v15, 0x30

    move-object/from16 v5, p11

    if-nez v21, :cond_e

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/16 v22, 0x20

    goto :goto_c

    :cond_d
    const/16 v22, 0x10

    :goto_c
    or-int v20, v20, v22

    :cond_e
    and-int/lit16 v10, v15, 0x180

    if-nez v10, :cond_10

    move-object/from16 v10, p12

    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    const/16 v22, 0x100

    goto :goto_d

    :cond_f
    const/16 v22, 0x80

    :goto_d
    or-int v20, v20, v22

    :goto_e
    move/from16 v5, v20

    goto :goto_f

    :cond_10
    move-object/from16 v10, p12

    goto :goto_e

    :goto_f
    const v20, 0x12492493

    and-int v6, v4, v20

    const v8, 0x12492492

    const/16 v20, 0x1

    const/16 v22, 0x0

    if-ne v6, v8, :cond_12

    and-int/lit16 v6, v5, 0x93

    const/16 v8, 0x92

    if-eq v6, v8, :cond_11

    goto :goto_10

    :cond_11
    move/from16 v6, v22

    goto :goto_11

    :cond_12
    :goto_10
    move/from16 v6, v20

    :goto_11
    and-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_1f

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/unit/Density;

    iget-object v8, v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->a:Ljava/lang/String;

    and-int/lit8 v9, v4, 0x70

    const/16 v10, 0x20

    if-ne v9, v10, :cond_13

    move/from16 v9, v20

    goto :goto_12

    :cond_13
    move/from16 v9, v22

    :goto_12
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    move/from16 p13, v9

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p13, :cond_14

    if-ne v10, v9, :cond_15

    :cond_14
    new-instance v10, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/RegularGridViewKt$RegularGridView$1$1;

    const/4 v11, 0x0

    invoke-direct {v10, v2, v11}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/RegularGridViewKt$RegularGridView$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v8, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v8}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v11, 0x0

    move-object/from16 v23, v0

    const/4 v0, 0x2

    invoke-static {v8, v10, v11, v0}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v24

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v29, 0x7

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v28, v0

    invoke-static/range {v24 .. v29}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v13}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v21, v0

    new-instance v0, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;

    const/4 v8, 0x3

    invoke-direct {v0, v8}, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;-><init>(I)V

    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    invoke-static {v8}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v24

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    invoke-static {v8}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v25

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    add-float/2addr v10, v14

    sget-object v26, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-interface {v6, v7}, Landroidx/compose/ui/unit/Density;->l1(F)F

    move-result v6

    add-float/2addr v6, v10

    const/4 v10, 0x5

    invoke-static {v11, v8, v11, v6, v10}, Landroidx/compose/foundation/layout/PaddingKt;->e(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v26

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    const/high16 v8, 0x70000000

    and-int/2addr v8, v4

    const/high16 v10, 0x20000000

    if-ne v8, v10, :cond_16

    move/from16 v8, v20

    goto :goto_13

    :cond_16
    move/from16 v8, v22

    :goto_13
    or-int/2addr v6, v8

    and-int/lit16 v8, v5, 0x380

    const/16 v10, 0x100

    if-ne v8, v10, :cond_17

    move/from16 v8, v20

    goto :goto_14

    :cond_17
    move/from16 v8, v22

    :goto_14
    or-int/2addr v6, v8

    and-int/lit8 v8, v5, 0x70

    const/16 v10, 0x20

    if-ne v8, v10, :cond_18

    move/from16 v8, v20

    goto :goto_15

    :cond_18
    move/from16 v8, v22

    :goto_15
    or-int/2addr v6, v8

    and-int/lit8 v5, v5, 0xe

    const/4 v8, 0x4

    if-ne v5, v8, :cond_19

    move/from16 v5, v20

    goto :goto_16

    :cond_19
    move/from16 v5, v22

    :goto_16
    or-int/2addr v5, v6

    and-int/lit16 v6, v4, 0x1c00

    const/16 v8, 0x800

    if-ne v6, v8, :cond_1a

    move/from16 v6, v20

    goto :goto_17

    :cond_1a
    move/from16 v6, v22

    :goto_17
    or-int/2addr v5, v6

    const/high16 v6, 0x380000

    and-int/2addr v6, v4

    const/high16 v8, 0x100000

    if-ne v6, v8, :cond_1b

    move/from16 v6, v20

    goto :goto_18

    :cond_1b
    move/from16 v6, v22

    :goto_18
    or-int/2addr v5, v6

    const/high16 v6, 0x1c00000

    and-int/2addr v6, v4

    const/high16 v8, 0x800000

    if-ne v6, v8, :cond_1c

    goto :goto_19

    :cond_1c
    move/from16 v20, v22

    :goto_19
    or-int v5, v5, v20

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_1e

    if-ne v6, v9, :cond_1d

    goto :goto_1a

    :cond_1d
    move v12, v4

    goto :goto_1b

    :cond_1e
    :goto_1a
    new-instance v3, Lmr0;

    move-object/from16 v9, p3

    move/from16 v11, p7

    move/from16 v5, p9

    move-object/from16 v6, p12

    move v10, v7

    move-object v8, v12

    move-object/from16 v7, p11

    move v12, v4

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v11}, Lmr0;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Ljava/lang/String;FF)V

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v6, v3

    :goto_1b
    move-object v9, v6

    check-cast v9, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v3, v12, 0x3

    and-int/lit16 v3, v3, 0x380

    const/high16 v4, 0xe000000

    and-int/2addr v4, v12

    or-int v11, v3, v4

    const/16 v12, 0x290

    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 v7, p8

    move-object v10, v1

    move-object/from16 v1, v21

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->b(Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1c

    :cond_1f
    move-object/from16 v23, v0

    move-object v10, v1

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_20

    move-object v1, v0

    new-instance v0, Lnr0;

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v30, v1

    move v5, v13

    move v6, v14

    move-object/from16 v1, v23

    move-object/from16 v13, p12

    move/from16 v14, p14

    invoke-direct/range {v0 .. v16}, Lnr0;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;Ljava/lang/Object;FFFFZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v1, v30

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method
