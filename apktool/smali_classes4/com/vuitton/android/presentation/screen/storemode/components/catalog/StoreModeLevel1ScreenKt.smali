.class public abstract Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel1ScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;",
        "storeModeCatalog",
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


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x43480000    # 200.0f

    sput v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel1ScreenKt;->a:F

    return-void
.end method

.method public static final a(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v8, p7

    const v0, -0x10a710e4

    move-object/from16 v3, p6

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v8

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    and-int/lit16 v3, v8, 0x180

    if-nez v3, :cond_3

    move-object/from16 v3, p2

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v0, v6

    goto :goto_3

    :cond_3
    move-object/from16 v3, p2

    :goto_3
    and-int/lit16 v6, v8, 0xc00

    const/16 v7, 0x800

    if-nez v6, :cond_5

    move-object/from16 v6, p3

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v7

    goto :goto_4

    :cond_4
    const/16 v10, 0x400

    :goto_4
    or-int/2addr v0, v10

    :goto_5
    move-object/from16 v10, p4

    goto :goto_6

    :cond_5
    move-object/from16 v6, p3

    goto :goto_5

    :goto_6
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    const/16 v12, 0x4000

    if-eqz v11, :cond_6

    move v11, v12

    goto :goto_7

    :cond_6
    const/16 v11, 0x2000

    :goto_7
    or-int/2addr v0, v11

    move/from16 v11, p5

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    const/high16 v14, 0x20000

    if-eqz v13, :cond_7

    move v13, v14

    goto :goto_8

    :cond_7
    const/high16 v13, 0x10000

    :goto_8
    or-int/2addr v0, v13

    const v13, 0x12493

    and-int/2addr v13, v0

    const v15, 0x12492

    const/16 v16, 0x1

    const/4 v5, 0x0

    if-eq v13, v15, :cond_8

    move/from16 v13, v16

    goto :goto_9

    :cond_8
    move v13, v5

    :goto_9
    and-int/lit8 v15, v0, 0x1

    invoke-virtual {v9, v15, v13}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v13

    if-eqz v13, :cond_11

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v13, 0x3

    invoke-static {v5, v9, v13}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v13

    iget v15, v2, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;->a:I

    if-lez v15, :cond_9

    move/from16 v15, v16

    goto :goto_a

    :cond_9
    move v15, v5

    :goto_a
    const/high16 v17, 0x70000

    and-int v5, v0, v17

    if-ne v5, v14, :cond_a

    move/from16 v5, v16

    goto :goto_b

    :cond_a
    const/4 v5, 0x0

    :goto_b
    const v14, 0xe000

    and-int/2addr v14, v0

    if-ne v14, v12, :cond_b

    move/from16 v12, v16

    goto :goto_c

    :cond_b
    const/4 v12, 0x0

    :goto_c
    or-int/2addr v5, v12

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    or-int/2addr v5, v12

    and-int/lit16 v12, v0, 0x1c00

    if-ne v12, v7, :cond_c

    move/from16 v7, v16

    goto :goto_d

    :cond_c
    const/4 v7, 0x0

    :goto_d
    or-int/2addr v5, v7

    and-int/lit8 v7, v0, 0x70

    if-ne v7, v4, :cond_d

    move/from16 v4, v16

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    :goto_e
    or-int/2addr v4, v5

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    and-int/lit16 v0, v0, 0x380

    const/16 v5, 0x100

    if-ne v0, v5, :cond_e

    goto :goto_f

    :cond_e
    const/16 v16, 0x0

    :goto_f
    or-int v0, v4, v16

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_f

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v0, :cond_10

    :cond_f
    new-instance v0, Lq11;

    move-object v7, v3

    move-object v5, v6

    move-object v4, v10

    move v3, v11

    move-object v6, v2

    move-object v2, v1

    move v1, v15

    invoke-direct/range {v0 .. v7}, Lq11;-><init>(ZLcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :cond_10
    move-object/from16 v17, v4

    check-cast v17, Lkotlin/jvm/functions/Function1;

    const/16 v19, 0x0

    const/16 v20, 0x1fd

    move-object/from16 v18, v9

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v10, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v9 .. v20}, Landroidx/compose/foundation/lazy/LazyDslKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_10

    :cond_11
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_10
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_12

    new-instance v0, Lp1;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v7, v8

    invoke-direct/range {v0 .. v7}, Lp1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZI)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x7d57af57

    move-object/from16 v3, p5

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x4

    if-eqz v0, :cond_0

    move v0, v13

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p6, v0

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    move-object/from16 v3, p2

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    move-object/from16 v4, p3

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x800

    goto :goto_3

    :cond_3
    const/16 v6, 0x400

    :goto_3
    or-int/2addr v0, v6

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x4000

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_4

    :cond_4
    const/16 v6, 0x2000

    :goto_4
    or-int/2addr v0, v6

    and-int/lit16 v6, v0, 0x2493

    const/16 v8, 0x2492

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eq v6, v8, :cond_5

    move v6, v14

    goto :goto_5

    :cond_5
    move v6, v15

    :goto_5
    and-int/lit8 v8, v0, 0x1

    invoke-virtual {v9, v8, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_14

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->d8()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v6

    invoke-static {v6, v9}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;

    instance-of v10, v8, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$StoreModeCatalogUIModel;

    const/4 v11, 0x0

    if-eqz v10, :cond_6

    check-cast v8, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$StoreModeCatalogUIModel;

    goto :goto_6

    :cond_6
    move-object v8, v11

    :goto_6
    if-eqz v8, :cond_7

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$StoreModeCatalogUIModel;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;

    goto :goto_7

    :cond_7
    move-object v8, v11

    :goto_7
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;

    instance-of v6, v6, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$Loading;

    if-nez v6, :cond_9

    iget-boolean v6, v2, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->d:Z

    if-eqz v6, :cond_8

    goto :goto_8

    :cond_8
    move v6, v15

    goto :goto_9

    :cond_9
    :goto_8
    move v6, v14

    :goto_9
    const v10, 0xe000

    and-int/2addr v10, v0

    if-ne v10, v7, :cond_a

    move v7, v14

    goto :goto_a

    :cond_a
    move v7, v15

    :goto_a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    move/from16 p5, v6

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_b

    if-ne v12, v6, :cond_c

    :cond_b
    new-instance v12, Lsq0;

    const/16 v7, 0x16

    invoke-direct {v12, v5, v7}, Lsq0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-static {v15, v12, v9, v15, v14}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    if-eqz p5, :cond_d

    const v7, 0x79d710d7

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v7, v11

    const/4 v11, 0x0

    const/4 v12, 0x7

    move-object v8, v6

    const/4 v6, 0x0

    move-object/from16 v16, v7

    move-object v10, v8

    const-wide/16 v7, 0x0

    move-object/from16 v22, v9

    const/4 v9, 0x0

    move-object/from16 v26, v10

    move-object/from16 v10, v22

    invoke-static/range {v6 .. v12}, Lcom/vuitton/android/presentation/compose/components/ProgressViewKt;->a(Landroidx/compose/ui/Modifier;JZLandroidx/compose/runtime/Composer;II)V

    move-object v9, v10

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_b
    move/from16 p5, v0

    move v0, v14

    move v1, v15

    goto/16 :goto_d

    :cond_d
    move-object/from16 v26, v6

    if-eqz v8, :cond_e

    const v6, -0x3ef42686

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->f:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;

    move-object v3, v8

    iget-boolean v8, v2, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->j:Z

    shr-int/lit8 v6, v0, 0x3

    and-int/lit16 v6, v6, 0x380

    shl-int/lit8 v7, v0, 0x3

    and-int/lit16 v7, v7, 0x1c00

    or-int/2addr v6, v7

    or-int/2addr v10, v6

    move-object/from16 v6, p2

    move-object v7, v5

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v10}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel1ScreenKt;->a(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_e
    const v3, -0x3eed8736

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "StoreModeLevel1Screen"

    invoke-static {v4, v3}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->j:F

    sget v5, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel1ScreenKt;->a:F

    add-float v20, v5, v3

    sget-object v3, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v21, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->e:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    const/16 v7, 0x36

    invoke-static {v6, v5, v9, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v5

    iget-wide v6, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v9, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v10, v9, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v10, :cond_13

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_f

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_f
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_c
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v5, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v7, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v3, v5, v4}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    sget v4, Lcom/vuitton/android/designkit/ui/theme/IconSize;->e:F

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->N0:I

    invoke-static {v3, v9, v15}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v3

    move-object/from16 v22, v9

    const/16 v9, 0x38

    const/16 v10, 0x8

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v8, v22

    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    move-object v9, v8

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v20, 0x0

    const/16 v21, 0x8

    sget-object v16, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    move/from16 v18, v3

    move/from16 v17, v4

    move/from16 v19, v5

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const v3, 0x7f140d6b

    invoke-static {v9, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->e:Landroidx/compose/ui/text/TextStyle;

    sget-object v6, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Landroidx/compose/ui/text/style/TextAlign;->e:I

    move v7, v13

    new-instance v13, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v13, v6}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v24, 0x0

    const v25, 0x1fbfc

    move-object/from16 v21, v5

    const-wide/16 v5, 0x0

    move v10, v7

    const-wide/16 v7, 0x0

    move-object/from16 v22, v9

    const/4 v9, 0x0

    move v12, v10

    const-wide/16 v10, 0x0

    move/from16 v16, v12

    const/4 v12, 0x0

    move/from16 v17, v14

    move/from16 v18, v15

    const-wide/16 v14, 0x0

    move/from16 v19, v16

    const/16 v16, 0x0

    move/from16 v20, v17

    const/16 v17, 0x0

    move/from16 v23, v18

    const/16 v18, 0x0

    move/from16 v27, v19

    const/16 v19, 0x0

    move/from16 v28, v20

    const/16 v20, 0x0

    move/from16 v29, v23

    const/16 v23, 0x0

    move/from16 p5, v0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v9, v22

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_d
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v4, p5, 0xe

    const/4 v10, 0x4

    if-eq v4, v10, :cond_10

    move v14, v1

    goto :goto_e

    :cond_10
    move v14, v0

    :goto_e
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v14

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_12

    move-object/from16 v10, v26

    if-ne v1, v10, :cond_11

    goto :goto_f

    :cond_11
    move-object/from16 v0, p0

    goto :goto_10

    :cond_12
    :goto_f
    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel1ScreenKt$StoreModeLevel1Screen$3$1;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v7}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel1ScreenKt$StoreModeLevel1Screen$3$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_10
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v3, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    goto :goto_11

    :cond_13
    const/4 v7, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v7

    :cond_14
    move-object v0, v1

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_11
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_15

    new-instance v0, Lkj0;

    const/16 v7, 0x18

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lkj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method
