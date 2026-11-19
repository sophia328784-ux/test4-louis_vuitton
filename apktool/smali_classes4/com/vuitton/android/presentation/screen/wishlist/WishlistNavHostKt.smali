.class public abstract Lcom/vuitton/android/presentation/screen/wishlist/WishlistNavHostKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;",
        "viewState",
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
.method public static final a(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v5, p0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x1c067fe

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p12, v0

    move-object/from16 v3, p1

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    move/from16 v4, p2

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x100

    goto :goto_2

    :cond_2
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v0, v8

    move-object/from16 v8, p3

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x4000

    goto :goto_3

    :cond_3
    const/16 v10, 0x2000

    :goto_3
    or-int/2addr v0, v10

    move-object/from16 v10, p4

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/high16 v13, 0x20000

    goto :goto_4

    :cond_4
    const/high16 v13, 0x10000

    :goto_4
    or-int/2addr v0, v13

    move-object/from16 v13, p5

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/high16 v15, 0x100000

    goto :goto_5

    :cond_5
    const/high16 v15, 0x80000

    :goto_5
    or-int/2addr v0, v15

    move-object/from16 v15, p6

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/high16 v16, 0x800000

    goto :goto_6

    :cond_6
    const/high16 v16, 0x400000

    :goto_6
    or-int v0, v0, v16

    move-object/from16 v2, p7

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/high16 v18, 0x4000000

    goto :goto_7

    :cond_7
    const/high16 v18, 0x2000000

    :goto_7
    or-int v0, v0, v18

    move-object/from16 v1, p8

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    const/high16 v19, 0x20000000

    goto :goto_8

    :cond_8
    const/high16 v19, 0x10000000

    :goto_8
    or-int v0, v0, v19

    move-object/from16 v6, p9

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    const/16 v20, 0x4

    :goto_9
    move-object/from16 v10, p10

    goto :goto_a

    :cond_9
    const/16 v20, 0x2

    goto :goto_9

    :goto_a
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/16 v17, 0x20

    goto :goto_b

    :cond_a
    const/16 v17, 0x10

    :goto_b
    or-int v17, v20, v17

    const v20, 0x12492493

    and-int v14, v0, v20

    const v11, 0x12492492

    const/16 v21, 0x1

    const/16 v22, 0x0

    if-ne v14, v11, :cond_c

    and-int/lit8 v11, v17, 0x13

    const/16 v14, 0x12

    if-eq v11, v14, :cond_b

    goto :goto_c

    :cond_b
    move/from16 v11, v22

    goto :goto_d

    :cond_c
    :goto_c
    move/from16 v11, v21

    :goto_d
    and-int/lit8 v14, v0, 0x1

    invoke-virtual {v12, v14, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_1b

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v11

    invoke-static {v11, v12}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-object v14, v14, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->g:Lkotlin/Result;

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    or-int v23, v23, v24

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v23, :cond_d

    if-ne v9, v7, :cond_e

    :cond_d
    new-instance v9, Lcom/vuitton/android/presentation/screen/wishlist/WishlistNavHostKt$WishlistNavHost$3$1;

    const/4 v1, 0x0

    invoke-direct {v9, v11, v5, v1}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistNavHostKt$WishlistNavHost$3$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/navigation/NavHostController;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v14, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v14, Lcom/vuitton/android/presentation/screen/wishlist/WishlistRoutes$Wishlist;->INSTANCE:Lcom/vuitton/android/presentation/screen/wishlist/WishlistRoutes$Wishlist;

    and-int/lit8 v1, v0, 0x70

    const/16 v9, 0x20

    if-eq v1, v9, :cond_f

    move/from16 v1, v22

    goto :goto_e

    :cond_f
    move/from16 v1, v21

    :goto_e
    and-int/lit16 v9, v0, 0x380

    const/16 v11, 0x100

    if-ne v9, v11, :cond_10

    move/from16 v9, v21

    goto :goto_f

    :cond_10
    move/from16 v9, v22

    :goto_f
    or-int/2addr v1, v9

    const v9, 0xe000

    and-int/2addr v9, v0

    const/16 v11, 0x4000

    if-ne v9, v11, :cond_11

    move/from16 v9, v21

    goto :goto_10

    :cond_11
    move/from16 v9, v22

    :goto_10
    or-int/2addr v1, v9

    const/high16 v9, 0x70000

    and-int/2addr v9, v0

    const/high16 v11, 0x20000

    if-ne v9, v11, :cond_12

    move/from16 v9, v21

    goto :goto_11

    :cond_12
    move/from16 v9, v22

    :goto_11
    or-int/2addr v1, v9

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    const/high16 v9, 0x1c00000

    and-int/2addr v9, v0

    const/high16 v11, 0x800000

    if-ne v9, v11, :cond_13

    move/from16 v9, v21

    goto :goto_12

    :cond_13
    move/from16 v9, v22

    :goto_12
    or-int/2addr v1, v9

    const/high16 v9, 0x380000

    and-int/2addr v9, v0

    const/high16 v11, 0x100000

    if-ne v9, v11, :cond_14

    move/from16 v9, v21

    goto :goto_13

    :cond_14
    move/from16 v9, v22

    :goto_13
    or-int/2addr v1, v9

    const/high16 v9, 0xe000000

    and-int/2addr v9, v0

    const/high16 v11, 0x4000000

    if-ne v9, v11, :cond_15

    move/from16 v9, v21

    goto :goto_14

    :cond_15
    move/from16 v9, v22

    :goto_14
    or-int/2addr v1, v9

    and-int/lit8 v9, v17, 0xe

    const/4 v11, 0x4

    if-ne v9, v11, :cond_16

    move/from16 v9, v21

    goto :goto_15

    :cond_16
    move/from16 v9, v22

    :goto_15
    or-int/2addr v1, v9

    and-int/lit8 v9, v17, 0x70

    const/16 v11, 0x20

    if-ne v9, v11, :cond_17

    move/from16 v9, v21

    goto :goto_16

    :cond_17
    move/from16 v9, v22

    :goto_16
    or-int/2addr v1, v9

    const/high16 v9, 0x70000000

    and-int/2addr v9, v0

    const/high16 v11, 0x20000000

    if-ne v9, v11, :cond_18

    goto :goto_17

    :cond_18
    move/from16 v21, v22

    :goto_17
    or-int v1, v1, v21

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v1, :cond_19

    if-ne v9, v7, :cond_1a

    :cond_19
    move v1, v0

    goto :goto_18

    :cond_1a
    move v13, v0

    goto :goto_19

    :goto_18
    new-instance v0, Lh71;

    move-object/from16 v11, p8

    move-object v9, v6

    move-object v7, v13

    move-object v6, v15

    move v13, v1

    move-object v1, v3

    move-object v3, v8

    move-object v8, v2

    move v2, v4

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v11}, Lh71;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v9, v0

    :goto_19
    check-cast v9, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v0, v13, 0xe

    or-int/lit8 v11, v0, 0x30

    move-object v10, v12

    const/16 v12, 0x7fc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static/range {v0 .. v12}, Landroidx/navigation/compose/NavHostKt;->b(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1a

    :cond_1b
    move-object v10, v12

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1a
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_1c

    new-instance v0, Lzl;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lzl;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method
