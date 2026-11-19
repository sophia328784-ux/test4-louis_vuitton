.class public abstract Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u00a8\u0006\u0003\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/unit/Dp;",
        "headerHeight",
        "availableHeight",
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
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/paging/compose/LazyPagingItems;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v13, p9

    if-eqz v0, :cond_0

    const-string v1, "PLPStoreMode"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v14, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x597b264a

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v13

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_1

    :cond_2
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    and-int/lit8 v1, p10, 0x4

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x180

    move/from16 v5, p2

    goto :goto_3

    :cond_3
    move/from16 v5, p2

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_2

    :cond_4
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v0, v6

    :goto_3
    and-int/lit16 v6, v13, 0xc00

    if-nez v6, :cond_6

    move-object/from16 v6, p3

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x800

    goto :goto_4

    :cond_5
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v0, v8

    :goto_5
    move-object/from16 v9, p4

    goto :goto_6

    :cond_6
    move-object/from16 v6, p3

    goto :goto_5

    :goto_6
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x4000

    goto :goto_7

    :cond_7
    const/16 v8, 0x2000

    :goto_7
    or-int/2addr v0, v8

    move-object/from16 v8, p5

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/high16 v11, 0x20000

    goto :goto_8

    :cond_8
    const/high16 v11, 0x10000

    :goto_8
    or-int/2addr v0, v11

    move-object/from16 v11, p6

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/high16 v16, 0x100000

    goto :goto_9

    :cond_9
    const/high16 v16, 0x80000

    :goto_9
    or-int v0, v0, v16

    move-object/from16 v12, p7

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/high16 v16, 0x800000

    goto :goto_a

    :cond_a
    const/high16 v16, 0x400000

    :goto_a
    or-int v0, v0, v16

    const v16, 0x492493

    and-int v7, v0, v16

    const v4, 0x492492

    const/16 v17, 0x1

    if-eq v7, v4, :cond_b

    move/from16 v4, v17

    goto :goto_b

    :cond_b
    const/4 v4, 0x0

    :goto_b
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v15, v7, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_1a

    if-eqz v1, :cond_c

    move/from16 v4, v17

    goto :goto_c

    :cond_c
    move v4, v5

    :goto_c
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Density;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    const v7, -0x18b4f276

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->b()Lkotlin/enums/EnumEntries;

    move-result-object v7

    new-instance v10, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v7, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->c()I

    move-result v7

    invoke-static {v15, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_d
    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->b()Lkotlin/enums/EnumEntries;

    move-result-object v3

    sget-object v18, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->Companion:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->a()Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3, v15, v10}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControlKt;->c(ILandroidx/compose/runtime/Composer;Ljava/util/List;)Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;

    move-result-object v3

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v10, :cond_e

    new-instance v7, Landroidx/compose/ui/unit/Dp;

    move/from16 v19, v4

    const/4 v4, 0x0

    invoke-direct {v7, v4}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v7}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_e

    :cond_e
    move/from16 v19, v4

    const/4 v4, 0x0

    :goto_e
    check-cast v7, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v10, :cond_f

    new-instance v4, Landroidx/compose/ui/unit/Dp;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v4, Landroidx/compose/runtime/MutableState;

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    invoke-static {v6}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v20

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v21

    or-int v6, v6, v21

    const v21, 0xe000

    move-object/from16 p2, v3

    and-int v3, v0, v21

    move-object/from16 v21, v4

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_10

    move/from16 v3, v17

    goto :goto_f

    :cond_10
    const/4 v3, 0x0

    :goto_f
    or-int/2addr v3, v6

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    and-int/lit8 v4, v0, 0x70

    const/16 v6, 0x20

    if-eq v4, v6, :cond_12

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_10

    :cond_11
    const/4 v4, 0x0

    goto :goto_11

    :cond_12
    :goto_10
    move/from16 v4, v17

    :goto_11
    or-int/2addr v3, v4

    and-int/lit16 v4, v0, 0x380

    const/16 v6, 0x100

    if-ne v4, v6, :cond_13

    move/from16 v4, v17

    goto :goto_12

    :cond_13
    const/4 v4, 0x0

    :goto_12
    or-int/2addr v3, v4

    and-int/lit16 v4, v0, 0x1c00

    const/16 v6, 0x800

    if-ne v4, v6, :cond_14

    move/from16 v4, v17

    goto :goto_13

    :cond_14
    const/4 v4, 0x0

    :goto_13
    or-int/2addr v3, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v0

    const/high16 v6, 0x20000

    if-ne v4, v6, :cond_15

    move/from16 v4, v17

    goto :goto_14

    :cond_15
    const/4 v4, 0x0

    :goto_14
    or-int/2addr v3, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v0

    const/high16 v6, 0x100000

    if-ne v4, v6, :cond_16

    move/from16 v4, v17

    goto :goto_15

    :cond_16
    const/4 v4, 0x0

    :goto_15
    or-int/2addr v3, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v4, v0

    const/high16 v6, 0x800000

    if-ne v4, v6, :cond_17

    move/from16 v18, v17

    goto :goto_16

    :cond_17
    const/16 v18, 0x0

    :goto_16
    or-int v3, v3, v18

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_18

    if-ne v4, v10, :cond_19

    :cond_18
    move v3, v0

    goto :goto_17

    :cond_19
    move/from16 v16, v0

    goto :goto_18

    :goto_17
    new-instance v0, Ljl0;

    move-object v4, v11

    move-object v11, v7

    move-object v7, v4

    move-object v10, v1

    move/from16 v16, v3

    move-object v6, v8

    move-object v8, v12

    move/from16 v4, v19

    move-object/from16 v12, v21

    move-object/from16 v1, p2

    move-object v3, v2

    move v2, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v12}, Ljl0;-><init>(Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;FLandroidx/paging/compose/LazyPagingItems;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_18
    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v11, v16, 0xe

    const/16 v12, 0x1ee

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v14

    move-object v10, v15

    move-object/from16 v4, v20

    invoke-static/range {v1 .. v12}, Landroidx/compose/foundation/lazy/LazyDslKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move/from16 v3, v19

    goto :goto_19

    :cond_1a
    move-object v1, v14

    move-object v10, v15

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    move v3, v5

    :goto_19
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_1b

    new-instance v0, Lv5;

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p10

    move v9, v13

    invoke-direct/range {v0 .. v10}, Lv5;-><init>(Landroidx/compose/ui/Modifier;Landroidx/paging/compose/LazyPagingItems;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;II)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method
