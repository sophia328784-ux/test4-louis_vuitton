.class public abstract Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00028\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistBottomSheetScreen;",
        "currentBottomSheet",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 37

    move-object/from16 v2, p0

    move/from16 v1, p1

    move/from16 v4, p2

    move-object/from16 v14, p4

    move-object/from16 v15, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p12

    move/from16 v12, p14

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x585c892c

    move-object/from16 v3, p13

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    or-int/2addr v0, v12

    and-int/lit8 v6, v12, 0x30

    const/16 v7, 0x10

    if-nez v6, :cond_2

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    or-int/2addr v0, v6

    :cond_2
    and-int/lit16 v6, v12, 0x180

    if-nez v6, :cond_4

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x100

    goto :goto_2

    :cond_3
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v0, v6

    :cond_4
    and-int/lit16 v6, v12, 0xc00

    if-nez v6, :cond_6

    move-object/from16 v6, p3

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const/16 v16, 0x800

    goto :goto_3

    :cond_5
    const/16 v16, 0x400

    :goto_3
    or-int v0, v0, v16

    goto :goto_4

    :cond_6
    move-object/from16 v6, p3

    :goto_4
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x4000

    goto :goto_5

    :cond_7
    const/16 v16, 0x2000

    :goto_5
    or-int v0, v0, v16

    move-object/from16 v9, p5

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/high16 v17, 0x20000

    goto :goto_6

    :cond_8
    const/high16 v17, 0x10000

    :goto_6
    or-int v0, v0, v17

    move-object/from16 v9, p6

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/high16 v17, 0x100000

    goto :goto_7

    :cond_9
    const/high16 v17, 0x80000

    :goto_7
    or-int v0, v0, v17

    move-object/from16 v9, p7

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/high16 v17, 0x800000

    goto :goto_8

    :cond_a
    const/high16 v17, 0x400000

    :goto_8
    or-int v0, v0, v17

    move-object/from16 v9, p8

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    const/high16 v17, 0x4000000

    goto :goto_9

    :cond_b
    const/high16 v17, 0x2000000

    :goto_9
    or-int v0, v0, v17

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/high16 v17, 0x20000000

    goto :goto_a

    :cond_c
    const/high16 v17, 0x10000000

    :goto_a
    or-int v17, v0, v17

    and-int/lit8 v0, p15, 0x6

    if-nez v0, :cond_e

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v3, 0x4

    :cond_d
    or-int v0, p15, v3

    :goto_b
    move v3, v7

    move-object/from16 v7, p11

    goto :goto_c

    :cond_e
    move/from16 v0, p15

    goto :goto_b

    :goto_c
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    const/16 v3, 0x20

    :cond_f
    or-int/2addr v0, v3

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v3, 0x100

    goto :goto_d

    :cond_10
    const/16 v3, 0x80

    :goto_d
    or-int/2addr v0, v3

    const v3, 0x12492493

    and-int v3, v17, v3

    const v8, 0x12492492

    if-ne v3, v8, :cond_12

    and-int/lit16 v3, v0, 0x93

    const/16 v8, 0x92

    if-eq v3, v8, :cond_11

    goto :goto_e

    :cond_11
    const/4 v3, 0x0

    goto :goto_f

    :cond_12
    :goto_e
    const/4 v3, 0x1

    :goto_f
    and-int/lit8 v8, v17, 0x1

    invoke-virtual {v13, v8, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_32

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v8

    invoke-static {v8, v13}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v5, :cond_13

    invoke-static {v13}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v9

    :cond_13
    check-cast v9, Landroidx/compose/material3/SnackbarHostState;

    move/from16 v22, v0

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v14, v17, 0xe

    const/4 v1, 0x4

    if-eq v14, v1, :cond_14

    const/4 v1, 0x0

    goto :goto_10

    :cond_14
    const/4 v1, 0x1

    :goto_10
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    or-int v1, v1, v23

    move/from16 v23, v1

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    const/4 v10, 0x0

    if-nez v23, :cond_15

    if-ne v1, v5, :cond_16

    :cond_15
    new-instance v1, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt$WishlistComposable$1$1;

    invoke-direct {v1, v2, v9, v3, v10}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt$WishlistComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v0, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v1, v0, v13, v10}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v3

    invoke-static {v1, v0, v13, v10}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v23

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_17

    if-ne v0, v5, :cond_18

    :cond_17
    new-instance v0, Lt8;

    const/16 v1, 0x19

    invoke-direct {v0, v3, v1}, Lt8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v0, Lkotlin/jvm/functions/Function0;

    move-object/from16 v24, v0

    move-object/from16 v25, v9

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {v0, v1, v13, v10}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v9

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_19

    invoke-static {v10}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe

    if-nez v26, :cond_1a

    if-ne v1, v5, :cond_1b

    :cond_1a
    new-instance v1, Lm8;

    invoke-direct {v1, v9, v0, v10}, Lm8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v1, Lkotlin/jvm/functions/Function0;

    move/from16 v26, v10

    const/4 v10, 0x4

    if-eq v14, v10, :cond_1c

    const/16 v21, 0x0

    goto :goto_11

    :cond_1c
    const/16 v21, 0x1

    :goto_11
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v21, :cond_1e

    if-ne v10, v5, :cond_1d

    goto :goto_12

    :cond_1d
    move-object/from16 v21, v0

    goto :goto_13

    :cond_1e
    :goto_12
    new-instance v10, Lk61;

    move-object/from16 v21, v0

    const/4 v0, 0x5

    invoke-direct {v10, v2, v0}, Lk61;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_13
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->d:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->isEmpty()Z

    move-result v0

    goto :goto_14

    :cond_1f
    const/4 v0, 0x1

    :goto_14
    move/from16 v27, v0

    if-eqz v4, :cond_20

    const v0, 0x4ca1ed78    # 8.4896704E7f

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v19

    move-object/from16 v28, v1

    move v1, v0

    goto :goto_15

    :cond_20
    const v0, 0x4ca1f0e7    # 8.4903736E7f

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v0

    sget-object v28, Landroidx/compose/foundation/layout/WindowInsetsHolder;->y:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v28, v1

    invoke-static {v13}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->b:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsKt;->i(Landroidx/compose/foundation/layout/AndroidWindowInsets;Landroidx/compose/foundation/layout/AndroidWindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v19, v0

    :goto_15
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->b:Z

    move-object/from16 v29, v9

    const/4 v9, 0x6

    if-eqz v0, :cond_21

    const v0, 0x479d770d

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;

    move/from16 v17, v9

    const/4 v9, 0x0

    move/from16 v1, p1

    move-object/from16 v16, v3

    move-object/from16 v33, v5

    move-object v3, v6

    move-object v5, v10

    move/from16 v11, v17

    move-object/from16 v10, v19

    move-object/from16 v31, v21

    move/from16 v30, v22

    move-object/from16 v6, v24

    move-object/from16 v32, v28

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/wishlist/components/b;-><init>(ZLcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    const v1, -0x7a849d7c

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v0, v10, v13, v11}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistLoadingScreenKt;->a(Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v3, p4

    move-object/from16 v15, p10

    move-object/from16 v18, v8

    move/from16 v20, v11

    move-object v10, v13

    move/from16 p13, v14

    move-object/from16 v35, v33

    :goto_16
    move v14, v0

    move-object/from16 v0, p0

    goto/16 :goto_1e

    :cond_21
    move-object/from16 v16, v3

    move-object/from16 v33, v5

    move v11, v9

    move-object v5, v10

    move-object/from16 v10, v19

    move-object/from16 v31, v21

    move/from16 v30, v22

    move-object/from16 v6, v24

    move-object/from16 v32, v28

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->c:Z

    const/16 v1, 0x36

    if-eqz v0, :cond_25

    const v0, 0x47a999b6

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p11

    move v11, v1

    move-object/from16 v10, v25

    move/from16 v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/wishlist/components/b;-><init>(ZLcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    const v1, -0x44587210

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    const/4 v1, 0x4

    if-eq v14, v1, :cond_22

    const/4 v9, 0x0

    goto :goto_17

    :cond_22
    const/4 v9, 0x1

    :goto_17
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v9, :cond_23

    move-object/from16 v9, v33

    if-ne v0, v9, :cond_24

    goto :goto_18

    :cond_23
    move-object/from16 v9, v33

    :goto_18
    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt$WishlistComposable$4$1;

    const-string v5, "reloadWishlist()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    const-string v4, "reloadWishlist"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    check-cast v0, Lkotlin/reflect/KFunction;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v10, v7, v0, v13, v11}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistErrorScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v3, p4

    move-object/from16 v15, p10

    move-object/from16 v18, v8

    move-object/from16 v35, v9

    move-object v10, v13

    move/from16 p13, v14

    const/16 v20, 0x6

    goto :goto_16

    :cond_25
    move v11, v1

    move-object/from16 v9, v33

    const/4 v0, 0x0

    if-nez v27, :cond_2b

    const v1, 0x47b710e3

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    move/from16 v19, v0

    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;

    move-object/from16 v33, v9

    const/4 v9, 0x2

    move-object/from16 v2, p0

    move/from16 v1, p1

    move/from16 v4, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p11

    move-object/from16 v22, v10

    move-object/from16 v34, v33

    const/16 v10, 0x20

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/wishlist/components/b;-><init>(ZLcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    move-object v3, v0

    move-object v0, v2

    move-object v2, v8

    const v4, -0x4d36b72d

    invoke-static {v4, v3, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    and-int/lit8 v4, v17, 0x70

    if-ne v4, v10, :cond_26

    const/4 v9, 0x1

    :goto_19
    const/4 v10, 0x4

    goto :goto_1a

    :cond_26
    move/from16 v9, v19

    goto :goto_19

    :goto_1a
    if-eq v14, v10, :cond_27

    move/from16 v4, v19

    goto :goto_1b

    :cond_27
    const/4 v4, 0x1

    :goto_1b
    or-int/2addr v4, v9

    const/high16 v5, 0x70000000

    and-int v5, v17, v5

    const/high16 v6, 0x20000000

    if-ne v5, v6, :cond_28

    const/4 v9, 0x1

    goto :goto_1c

    :cond_28
    move/from16 v9, v19

    :goto_1c
    or-int/2addr v4, v9

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_29

    move-object/from16 v4, v34

    if-ne v5, v4, :cond_2a

    goto :goto_1d

    :cond_29
    move-object/from16 v4, v34

    :goto_1d
    new-instance v5, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt$WishlistComposable$6$1;

    invoke-direct {v5, v1, v0, v15, v2}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt$WishlistComposable$6$1;-><init>(ZLcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    move-object v9, v5

    check-cast v9, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v5, v17, 0x9

    const v6, 0xe000

    and-int/2addr v5, v6

    or-int/lit16 v5, v5, 0xc30

    shl-int/lit8 v6, v17, 0x3

    const/high16 v7, 0x380000

    and-int/2addr v7, v6

    or-int/2addr v5, v7

    const/high16 v7, 0x1c00000

    and-int/2addr v7, v6

    or-int/2addr v5, v7

    const/high16 v7, 0xe000000

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    shr-int/lit8 v6, v17, 0x18

    and-int/lit8 v6, v6, 0xe

    const/4 v0, 0x0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    move-object/from16 v15, p10

    move-object/from16 v18, v2

    move-object/from16 v35, v4

    move v12, v5

    move-object v2, v11

    move-object v11, v13

    move/from16 p13, v14

    move/from16 v14, v19

    move-object/from16 v5, v22

    const/16 v20, 0x6

    move v4, v1

    move v13, v6

    move-object/from16 v1, v25

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object v10, v11

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    goto :goto_1e

    :cond_2b
    move-object/from16 v15, p10

    move-object/from16 v18, v8

    move-object/from16 v35, v9

    move-object v10, v13

    move/from16 p13, v14

    move-object/from16 v12, v25

    const/16 v20, 0x6

    move v14, v0

    const v0, 0x47cf0722

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;

    const/4 v9, 0x3

    move-object/from16 v2, p0

    move/from16 v1, p1

    move/from16 v4, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p11

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/wishlist/components/b;-><init>(ZLcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    move-object v1, v0

    move-object v0, v2

    const v2, -0x2b33edd5

    invoke-static {v2, v1, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    shr-int/lit8 v2, v17, 0x6

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v2, v11

    move-object/from16 v3, p4

    invoke-static {v12, v1, v3, v10, v2}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistEmptyScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1e
    invoke-virtual/range {v29 .. v29}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v1

    if-eqz v1, :cond_2c

    const v1, 0x47dc162b

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "WishlistComposable"

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->d(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v2, 0x7f140319

    invoke-static {v10, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lu11;

    move-object/from16 v5, v31

    move-object/from16 v6, v32

    invoke-direct {v4, v5, v6}, Lu11;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V

    const v5, -0x3628c15d

    invoke-static {v5, v4, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    sget v5, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v5, v5, 0x9

    const/high16 v6, 0x6000000

    or-int v12, v5, v6

    const/16 v13, 0xf4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v11, v10

    move-object v10, v4

    move-object/from16 v4, v29

    invoke-static/range {v1 .. v13}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1f

    :cond_2c
    move-object v11, v10

    const v1, 0x47e432ce

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1f
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->f:Z

    if-nez v1, :cond_2d

    if-eqz p1, :cond_2d

    const/4 v1, 0x1

    goto :goto_20

    :cond_2d
    move v1, v14

    :goto_20
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v2

    invoke-static {v4, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v4

    new-instance v3, Lkv0;

    const/4 v5, 0x7

    invoke-direct {v3, v15, v5}, Lkv0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v5, -0xee1d504

    invoke-static {v5, v3, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const v8, 0x30d80

    const/16 v9, 0x12

    move-object v3, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v7, v11

    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->j:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    move/from16 v2, p13

    const/4 v10, 0x4

    if-eq v2, v10, :cond_2e

    move v9, v14

    goto :goto_21

    :cond_2e
    const/4 v9, 0x1

    :goto_21
    move/from16 v2, v30

    and-int/lit16 v3, v2, 0x380

    const/16 v4, 0x100

    if-ne v3, v4, :cond_2f

    const/4 v14, 0x1

    :cond_2f
    or-int v3, v9, v14

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_31

    move-object/from16 v9, v35

    if-ne v4, v9, :cond_30

    goto :goto_22

    :cond_30
    move-object/from16 v13, p12

    goto :goto_23

    :cond_31
    :goto_22
    new-instance v4, Lew0;

    move-object/from16 v13, p12

    const/4 v3, 0x1

    invoke-direct {v4, v0, v13, v3}, Lew0;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_23
    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function0;

    sget v3, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v4, v3, 0x3

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v4

    shl-int/lit8 v2, v2, 0x6

    and-int/lit16 v2, v2, 0x1c00

    or-int v7, v3, v2

    move-object/from16 v4, p11

    move-object v6, v11

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/contact/compose/ContactUsBottomSheetKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_24

    :cond_32
    move-object v0, v13

    move-object v13, v11

    move-object v11, v0

    move-object v0, v2

    move-object v15, v10

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_24
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_33

    new-instance v0, Lg71;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p11

    move/from16 v14, p14

    move-object/from16 v36, v1

    move-object v11, v15

    move-object/from16 v1, p0

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lg71;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;II)V

    move-object v1, v0

    move-object/from16 v0, v36

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_33
    return-void
.end method

.method public static final b(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move/from16 v1, p0

    move-object/from16 v7, p2

    move/from16 v5, p4

    const v0, -0x7afd6ddf

    move-object/from16 v2, p8

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p9, v0

    move-object/from16 v8, p1

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    move-object/from16 v2, p3

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    goto :goto_3

    :cond_3
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v0, v3

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x4000

    goto :goto_4

    :cond_4
    const/16 v3, 0x2000

    :goto_4
    or-int/2addr v0, v3

    move-object/from16 v6, p5

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v3, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v3, 0x10000

    :goto_5
    or-int/2addr v0, v3

    move-object/from16 v3, p6

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/high16 v4, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v4, 0x80000

    :goto_6
    or-int/2addr v0, v4

    move-object/from16 v4, p7

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/high16 v9, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v9, 0x400000

    :goto_7
    or-int/2addr v0, v9

    const v9, 0x492493

    and-int/2addr v9, v0

    const v10, 0x492492

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v9, v10, :cond_8

    move v9, v12

    goto :goto_8

    :cond_8
    move v9, v11

    :goto_8
    and-int/2addr v0, v12

    invoke-virtual {v15, v0, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lkz0;

    invoke-direct/range {v0 .. v6}, Lkz0;-><init>(ZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;)V

    const v1, -0x1fb78c94

    invoke-static {v1, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    const v0, 0x7f140d5a

    if-eqz p4, :cond_a

    const v1, -0x79c647ee

    const-string v2, "WishlistTopBar"

    invoke-static {v15, v1, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v3, :cond_9

    new-instance v2, Lo51;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Lo51;-><init>(I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v11, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v15, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x180

    const/16 v17, 0xf8

    move v0, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v1

    move v1, v0

    invoke-static/range {v8 .. v17}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVHeaderTopBarKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :cond_a
    move v1, v11

    const v2, -0x79c27277

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    const/4 v0, 0x0

    if-eqz v7, :cond_c

    if-eqz p0, :cond_b

    invoke-interface/range {p1 .. p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    move-object v0, v7

    :cond_c
    move-object v14, v0

    const/16 v21, 0x0

    const/16 v22, 0xf37

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v19, v15

    move-object v15, v10

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v20, 0xc00000

    invoke-static/range {v8 .. v22}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v19

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :cond_d
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_9
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_e

    new-instance v0, Lzh;

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p9

    move-object v3, v7

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lzh;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method
