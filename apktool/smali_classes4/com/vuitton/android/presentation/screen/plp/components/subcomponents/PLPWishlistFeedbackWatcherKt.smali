.class public abstract Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0005\u00b2\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;",
        "afterAuthFeedback",
        "",
        "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;",
        "snapshotProducts",
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
.method public static final a(Landroidx/paging/compose/LazyPagingItems;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    move/from16 v10, p5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x4866d4ae

    move-object/from16 v4, p4

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    and-int/lit8 v3, v10, 0x6

    if-nez v3, :cond_2

    and-int/lit8 v3, v10, 0x8

    if-nez v3, :cond_0

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    or-int/2addr v3, v10

    goto :goto_2

    :cond_2
    move v3, v10

    :goto_2
    and-int/lit8 v4, v10, 0x30

    if-nez v4, :cond_4

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_3

    :cond_3
    const/16 v4, 0x10

    :goto_3
    or-int/2addr v3, v4

    :cond_4
    and-int/lit16 v4, v10, 0x180

    const/16 v5, 0x100

    if-nez v4, :cond_6

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_4

    :cond_5
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v3, v4

    :cond_6
    and-int/lit16 v4, v10, 0xc00

    const/16 v6, 0x800

    if-nez v4, :cond_8

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v6

    goto :goto_5

    :cond_7
    const/16 v4, 0x400

    :goto_5
    or-int/2addr v3, v4

    :cond_8
    and-int/lit16 v4, v3, 0x493

    const/16 v7, 0x492

    const/4 v12, 0x1

    if-eq v4, v7, :cond_9

    move v4, v12

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    and-int/lit8 v7, v3, 0x1

    invoke-virtual {v11, v7, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v13, :cond_a

    const/4 v7, 0x0

    invoke-static {v7}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v7, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v13, :cond_b

    sget-object v14, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v14}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v14, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v1}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object v15

    iget-object v15, v15, Landroidx/paging/CombinedLoadStates;->a:Landroidx/paging/LoadState;

    instance-of v15, v15, Landroidx/paging/LoadState$NotLoading;

    if-nez v15, :cond_c

    invoke-virtual {v1}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object v15

    iget-object v15, v15, Landroidx/paging/CombinedLoadStates;->c:Landroidx/paging/LoadState;

    instance-of v15, v15, Landroidx/paging/LoadState$NotLoading;

    if-eqz v15, :cond_d

    invoke-virtual {v1}, Landroidx/paging/compose/LazyPagingItems;->b()I

    move-result v15

    if-nez v15, :cond_d

    :cond_c
    invoke-virtual {v1}, Landroidx/paging/compose/LazyPagingItems;->c()Landroidx/paging/ItemSnapshotList;

    move-result-object v15

    iget-object v15, v15, Landroidx/paging/ItemSnapshotList;->e:Ljava/util/List;

    invoke-static {v15}, Lcom/vuitton/android/presentation/screen/plp/models/plp/ProductListUiModelKt;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-interface {v14, v15}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_d
    new-instance v15, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v15}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    and-int/lit16 v8, v3, 0x1c00

    if-ne v8, v6, :cond_e

    move v6, v12

    goto :goto_7

    :cond_e
    const/4 v6, 0x0

    :goto_7
    and-int/lit16 v3, v3, 0x380

    if-ne v3, v5, :cond_f

    move v3, v12

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    :goto_8
    or-int/2addr v3, v6

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_10

    if-ne v5, v13, :cond_11

    :cond_10
    new-instance v5, Lcl0;

    invoke-direct {v5, v0, v7, v9, v12}, Lcl0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    invoke-static {v15, v5, v11, v3}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v3

    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_12

    if-ne v6, v13, :cond_13

    :cond_12
    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1;

    const/4 v8, 0x0

    move-object v5, v4

    move-object v6, v7

    move-object v7, v14

    move-object v4, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v6, v2

    :cond_13
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v12, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    goto :goto_9

    :cond_14
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_15

    new-instance v0, Loi0;

    const/4 v6, 0x5

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v6}, Loi0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method
