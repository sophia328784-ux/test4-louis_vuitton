.class public abstract Landroidx/navigation/compose/NavHostKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u00a8\u0006\t\u00b2\u0006\u0012\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0004\u001a\u00020\u00038\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0006\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0012\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u0012\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "Landroidx/navigation/NavBackStackEntry;",
        "currentBackStack",
        "",
        "progress",
        "",
        "inPredictiveBack",
        "allVisibleEntries",
        "visibleEntries",
        "navigation-compose_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    if-eqz v0, :cond_0

    const-string v3, "NavHost"

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v3, v0

    const v0, -0x751a66d8

    move-object/from16 v4, p9

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    and-int/lit8 v0, v10, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v10

    goto :goto_1

    :cond_2
    move v0, v10

    :goto_1
    and-int/lit8 v4, v10, 0x30

    if-nez v4, :cond_4

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_2

    :cond_3
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    :cond_4
    and-int/lit16 v4, v10, 0x180

    if-nez v4, :cond_6

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x100

    goto :goto_3

    :cond_5
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v0, v4

    :cond_6
    and-int/lit16 v4, v10, 0xc00

    if-nez v4, :cond_8

    move-object/from16 v4, p3

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x800

    goto :goto_4

    :cond_7
    const/16 v5, 0x400

    :goto_4
    or-int/2addr v0, v5

    goto :goto_5

    :cond_8
    move-object/from16 v4, p3

    :goto_5
    and-int/lit16 v5, v10, 0x6000

    if-nez v5, :cond_a

    move-object/from16 v5, p4

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x4000

    goto :goto_6

    :cond_9
    const/16 v12, 0x2000

    :goto_6
    or-int/2addr v0, v12

    goto :goto_7

    :cond_a
    move-object/from16 v5, p4

    :goto_7
    const/high16 v12, 0x30000

    and-int/2addr v12, v10

    if-nez v12, :cond_c

    move-object/from16 v12, p5

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/high16 v14, 0x20000

    goto :goto_8

    :cond_b
    const/high16 v14, 0x10000

    :goto_8
    or-int/2addr v0, v14

    goto :goto_9

    :cond_c
    move-object/from16 v12, p5

    :goto_9
    const/high16 v14, 0x180000

    and-int v15, v10, v14

    move/from16 p2, v14

    if-nez v15, :cond_e

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/high16 v15, 0x100000

    goto :goto_a

    :cond_d
    const/high16 v15, 0x80000

    :goto_a
    or-int/2addr v0, v15

    :cond_e
    const/high16 v15, 0xc00000

    and-int v16, v10, v15

    move/from16 p9, v15

    if-nez v16, :cond_10

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x800000

    goto :goto_b

    :cond_f
    const/high16 v16, 0x400000

    :goto_b
    or-int v0, v0, v16

    :cond_10
    const/high16 v16, 0x6000000

    and-int v16, v10, v16

    if-nez v16, :cond_12

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x4000000

    goto :goto_c

    :cond_11
    const/high16 v16, 0x2000000

    :goto_c
    or-int v0, v0, v16

    :cond_12
    const v16, 0x2492493

    and-int v13, v0, v16

    const v15, 0x2492492

    if-ne v13, v15, :cond_14

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->i()Z

    move-result v13

    if-nez v13, :cond_13

    goto :goto_d

    :cond_13
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v9, v6

    goto/16 :goto_28

    :cond_14
    :goto_d
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v13, v10, 0x1

    if-eqz v13, :cond_16

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v13

    if-eqz v13, :cond_15

    goto :goto_e

    :cond_15
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :cond_16
    :goto_e
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v13, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v6}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v15

    if-eqz v15, :cond_42

    invoke-interface {v15}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroidx/navigation/NavHostController;->j(Landroidx/lifecycle/ViewModelStore;)V

    iget-object v15, v1, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v15, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    const/4 v11, 0x0

    invoke-virtual {v15, v2, v11}, Landroidx/navigation/internal/NavControllerImpl;->v(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    const-string v14, "composable"

    invoke-virtual {v5, v14}, Landroidx/navigation/NavigatorProvider;->c(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v14

    instance-of v11, v14, Landroidx/navigation/compose/ComposeNavigator;

    if-eqz v11, :cond_17

    move-object v11, v14

    check-cast v11, Landroidx/navigation/compose/ComposeNavigator;

    goto :goto_f

    :cond_17
    const/4 v11, 0x0

    :goto_f
    if-nez v11, :cond_18

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_41

    new-instance v0, Lkg0;

    const/4 v11, 0x2

    move-object/from16 v5, p4

    move-object v6, v12

    invoke-direct/range {v0 .. v11}, Lkg0;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_18
    move-object v12, v3

    move-object v10, v9

    move-object v9, v1

    invoke-virtual {v11}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    move-result-object v1

    iget-object v1, v1, Landroidx/navigation/NavigatorState;->e:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v1, v6}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v14, :cond_19

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object/from16 v23, v2

    check-cast v23, Landroidx/compose/runtime/MutableFloatState;

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v14, :cond_1a

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object v4, v2

    check-cast v4, Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v26, v5

    const/4 v5, 0x0

    if-le v2, v3, :cond_1b

    move v2, v3

    goto :goto_10

    :cond_1b
    move v2, v5

    :goto_10
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    or-int v20, v20, v21

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v20, :cond_1d

    if-ne v3, v14, :cond_1c

    goto :goto_11

    :cond_1c
    move-object/from16 v30, v11

    move-object v11, v1

    move-object/from16 v1, v30

    goto :goto_12

    :cond_1d
    :goto_11
    new-instance v20, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    const/16 v25, 0x0

    move-object/from16 v22, v1

    move-object/from16 v24, v4

    move-object/from16 v21, v11

    invoke-direct/range {v20 .. v25}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Landroidx/navigation/compose/ComposeNavigator;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v3, v20

    move-object/from16 v1, v21

    move-object/from16 v11, v22

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_12
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, v6, v5}, Landroidx/navigation/compose/internal/NavComposeUtils_androidKt;->a(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1e

    if-ne v3, v14, :cond_1f

    :cond_1e
    new-instance v3, Lk60;

    const/16 v2, 0x1b

    invoke-direct {v3, v9, v13, v2}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v3, v6}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    invoke-static {v6}, Landroidx/compose/runtime/saveable/SaveableStateHolderKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/saveable/SaveableStateHolder;

    move-result-object v13

    iget-object v2, v15, Landroidx/navigation/internal/NavControllerImpl;->j:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v2, v6}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_20

    new-instance v3, Llg0;

    invoke-direct {v3, v2, v5}, Llg0;-><init>(Landroidx/compose/runtime/State;I)V

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    move-object v15, v3

    check-cast v15, Landroidx/compose/runtime/State;

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v14, :cond_21

    sget v2, Landroidx/collection/ObjectFloatMapKt;->a:I

    new-instance v2, Landroidx/collection/MutableObjectFloatMap;

    move/from16 v20, v0

    move-object/from16 v21, v3

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-direct {v2, v5, v3, v0}, Landroidx/collection/MutableObjectFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_13

    :cond_21
    move/from16 v20, v0

    move-object/from16 v21, v3

    const/4 v3, 0x1

    :goto_13
    check-cast v2, Landroidx/collection/MutableObjectFloatMap;

    if-eqz v21, :cond_3e

    const v0, -0x6b1fde7f

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v22, 0x380000

    and-int v22, v20, v22

    xor-int v3, v22, p2

    const/high16 v5, 0x100000

    if-le v3, v5, :cond_22

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    :cond_22
    and-int v3, v20, p2

    if-ne v3, v5, :cond_24

    :cond_23
    const/4 v3, 0x1

    goto :goto_14

    :cond_24
    const/4 v3, 0x0

    :goto_14
    or-int/2addr v0, v3

    const v3, 0xe000

    and-int v3, v20, v3

    const/16 v5, 0x4000

    if-ne v3, v5, :cond_25

    const/4 v3, 0x1

    goto :goto_15

    :cond_25
    const/4 v3, 0x0

    :goto_15
    or-int/2addr v0, v3

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_27

    if-ne v3, v14, :cond_26

    goto :goto_16

    :cond_26
    move-object/from16 p2, v12

    move-object/from16 v18, v13

    move/from16 v7, v20

    move-object/from16 v13, v21

    move-object/from16 v19, v26

    const/4 v9, 0x0

    const/16 v27, 0x1

    move-object v12, v2

    goto :goto_17

    :cond_27
    :goto_16
    new-instance v0, Lig0;

    const/4 v5, 0x1

    move-object/from16 v3, p4

    move-object/from16 p2, v12

    move-object/from16 v18, v13

    move-object/from16 v13, v21

    move-object/from16 v19, v26

    const/4 v9, 0x0

    const/16 v27, 0x1

    move-object v12, v2

    move-object v2, v7

    move/from16 v7, v20

    invoke-direct/range {v0 .. v5}, Lig0;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_17
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v2, 0x1c00000

    and-int/2addr v2, v7

    xor-int v2, v2, p9

    const/high16 v5, 0x800000

    if-le v2, v5, :cond_28

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_28
    and-int v2, v7, p9

    if-ne v2, v5, :cond_2a

    :cond_29
    move/from16 v2, v27

    goto :goto_18

    :cond_2a
    move v2, v9

    :goto_18
    or-int/2addr v0, v2

    const/high16 v2, 0x70000

    and-int/2addr v2, v7

    const/high16 v5, 0x20000

    if-ne v2, v5, :cond_2b

    move/from16 v2, v27

    goto :goto_19

    :cond_2b
    move v2, v9

    :goto_19
    or-int/2addr v0, v2

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_2d

    if-ne v2, v14, :cond_2c

    goto :goto_1a

    :cond_2c
    move-object v8, v3

    goto :goto_1b

    :cond_2d
    :goto_1a
    new-instance v0, Lig0;

    const/4 v5, 0x0

    move-object v2, v8

    move-object v8, v3

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Lig0;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_1b
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/high16 v0, 0xe000000

    and-int/2addr v0, v7

    const/high16 v3, 0x4000000

    if-ne v0, v3, :cond_2e

    move/from16 v3, v27

    goto :goto_1c

    :cond_2e
    move v3, v9

    :goto_1c
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v3, :cond_2f

    if-ne v0, v14, :cond_30

    :cond_2f
    new-instance v0, Lk0;

    const/16 v3, 0x14

    invoke-direct {v0, v10, v3}, Lk0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_30
    check-cast v0, Lkotlin/jvm/functions/Function1;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_31

    if-ne v9, v14, :cond_32

    :cond_31
    new-instance v9, Lk60;

    const/16 v5, 0x1a

    invoke-direct {v9, v15, v1, v5}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_32
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v9, v6}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_33

    new-instance v3, Landroidx/compose/animation/core/SeekableTransitionState;

    invoke-direct {v3, v13}, Landroidx/compose/animation/core/SeekableTransitionState;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_33
    check-cast v3, Landroidx/compose/animation/core/SeekableTransitionState;

    sget v5, Landroidx/compose/animation/core/SeekableTransitionState;->t:I

    or-int/lit8 v5, v5, 0x30

    const-string v9, "entry"

    move-object/from16 v24, v4

    const/4 v4, 0x0

    invoke-static {v3, v9, v6, v5, v4}, Landroidx/compose/animation/core/TransitionKt;->e(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v5

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_36

    const v4, -0x6afdc7e0

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v9, v9, v17

    move/from16 p9, v9

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez p9, :cond_35

    if-ne v9, v14, :cond_34

    goto :goto_1d

    :cond_34
    move-object/from16 v26, v15

    goto :goto_1e

    :cond_35
    :goto_1d
    new-instance v9, Landroidx/navigation/compose/NavHostKt$NavHost$28$1;

    move-object/from16 v26, v15

    move-object/from16 v10, v23

    const/4 v15, 0x0

    invoke-direct {v9, v3, v11, v10, v15}, Landroidx/navigation/compose/NavHostKt$NavHost$28$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1e
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v4, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v15, 0x0

    goto :goto_21

    :cond_36
    move-object/from16 v26, v15

    const v4, -0x6af76579

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v4, v9

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v4, v9

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_38

    if-ne v9, v14, :cond_37

    goto :goto_1f

    :cond_37
    const/4 v15, 0x0

    goto :goto_20

    :cond_38
    :goto_1f
    new-instance v9, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    const/4 v15, 0x0

    invoke-direct {v9, v3, v13, v5, v15}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_20
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v13, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_21
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v4, v9

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v4, v9

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v4, v9

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v4, v9

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_3a

    if-ne v9, v14, :cond_39

    goto :goto_22

    :cond_39
    move-object v11, v1

    move-object/from16 v4, v24

    goto :goto_23

    :cond_3a
    :goto_22
    new-instance v20, Lnk;

    move-object/from16 v25, v0

    move-object/from16 v22, v1

    move-object/from16 v23, v8

    move-object/from16 v21, v12

    move-object/from16 v27, v24

    move-object/from16 v24, v2

    invoke-direct/range {v20 .. v27}, Lnk;-><init>(Landroidx/collection/MutableObjectFloatMap;Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v9, v20

    move-object/from16 v11, v22

    move-object/from16 v4, v27

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_23
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_3b

    new-instance v0, Lag0;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lag0;-><init>(I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3b
    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance v24, Landroidx/navigation/compose/NavHostKt$NavHost$32;

    move-object/from16 v25, v3

    move-object/from16 v28, v4

    move-object/from16 v27, v18

    move-object/from16 v29, v26

    move-object/from16 v26, v13

    invoke-direct/range {v24 .. v29}, Landroidx/navigation/compose/NavHostKt$NavHost$32;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V

    move-object/from16 v1, v24

    move-object/from16 v26, v29

    const v2, 0x30ebd9dc

    invoke-static {v2, v1, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    shr-int/lit8 v2, v7, 0x3

    and-int/lit8 v2, v2, 0x70

    const v3, 0x36000

    or-int/2addr v2, v3

    and-int/lit16 v3, v7, 0x1c00

    or-int v8, v2, v3

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object v7, v6

    move-object v3, v9

    move-object v6, v1

    move-object v1, v5

    move-object v5, v0

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/AnimatedContentKt;->a(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)V

    move-object v8, v2

    move-object v9, v7

    iget-object v0, v1, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    invoke-virtual {v0}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v10

    iget-object v0, v1, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v3, p0

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_3c

    if-ne v4, v14, :cond_3d

    :cond_3c
    move-object v2, v0

    goto :goto_24

    :cond_3d
    move-object v11, v0

    goto :goto_25

    :goto_24
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;

    const/4 v7, 0x0

    move-object v6, v11

    move-object v4, v12

    move-object/from16 v5, v26

    move-object v11, v2

    move-object v2, v3

    move-object v3, v13

    invoke-direct/range {v0 .. v7}, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/navigation/NavHostController;Landroidx/navigation/NavBackStackEntry;Landroidx/collection/MutableObjectFloatMap;Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_25
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v11, v4, v9}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_26

    :cond_3e
    move v4, v5

    move-object v9, v6

    move-object v8, v12

    move-object/from16 v19, v26

    const/4 v15, 0x0

    const v0, -0x6aa8c906

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_26
    const-string v0, "dialog"

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Landroidx/navigation/NavigatorProvider;->c(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    instance-of v1, v0, Landroidx/navigation/compose/DialogNavigator;

    if-eqz v1, :cond_3f

    move-object v11, v0

    check-cast v11, Landroidx/navigation/compose/DialogNavigator;

    goto :goto_27

    :cond_3f
    move-object v11, v15

    :goto_27
    if-nez v11, :cond_40

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_41

    new-instance v0, Lkg0;

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p10

    move-object v3, v8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v11}, Lkg0;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_40
    move-object v3, v8

    const/4 v4, 0x0

    invoke-static {v11, v9, v4}, Landroidx/navigation/compose/DialogHostKt;->a(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/Composer;I)V

    :goto_28
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_41

    new-instance v0, Lkg0;

    const/4 v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lkg0;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_41
    return-void

    :cond_42
    const-string v0, "NavHost requires a ViewModelStoreOwner to be provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static final b(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v1, p2

    move-object/from16 v12, p9

    move/from16 v13, p11

    move/from16 v14, p12

    const-string v2, "NavHost"

    if-eqz v1, :cond_0

    invoke-static {v1, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    :cond_0
    const v3, -0x57fa4371

    move-object/from16 v4, p10

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    and-int/lit8 v3, v13, 0x6

    if-nez v3, :cond_2

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v13

    goto :goto_1

    :cond_2
    move v3, v13

    :goto_1
    and-int/lit8 v4, v13, 0x30

    if-nez v4, :cond_4

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_2

    :cond_3
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_4
    and-int/lit8 v4, v14, 0x4

    if-eqz v4, :cond_5

    or-int/lit16 v3, v3, 0x180

    goto :goto_4

    :cond_5
    and-int/lit16 v7, v13, 0x180

    if-nez v7, :cond_7

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x100

    goto :goto_3

    :cond_6
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v3, v7

    :cond_7
    :goto_4
    const v7, 0x36c00

    or-int/2addr v7, v3

    and-int/lit8 v8, v14, 0x40

    if-eqz v8, :cond_9

    const v7, 0x1b6c00

    or-int/2addr v7, v3

    :cond_8
    move-object/from16 v3, p5

    goto :goto_6

    :cond_9
    const/high16 v3, 0x180000

    and-int/2addr v3, v13

    if-nez v3, :cond_8

    move-object/from16 v3, p5

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/high16 v10, 0x100000

    goto :goto_5

    :cond_a
    const/high16 v10, 0x80000

    :goto_5
    or-int/2addr v7, v10

    :goto_6
    and-int/lit16 v10, v14, 0x80

    const/high16 v15, 0xc00000

    if-eqz v10, :cond_c

    or-int/2addr v7, v15

    :cond_b
    move-object/from16 v15, p6

    goto :goto_8

    :cond_c
    and-int/2addr v15, v13

    if-nez v15, :cond_b

    move-object/from16 v15, p6

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/high16 v16, 0x800000

    goto :goto_7

    :cond_d
    const/high16 v16, 0x400000

    :goto_7
    or-int v7, v7, v16

    :goto_8
    const/high16 v16, 0x6000000

    and-int v17, v13, v16

    if-nez v17, :cond_10

    and-int/lit16 v5, v14, 0x100

    if-nez v5, :cond_e

    move-object/from16 v5, p7

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    const/high16 v17, 0x4000000

    goto :goto_9

    :cond_e
    move-object/from16 v5, p7

    :cond_f
    const/high16 v17, 0x2000000

    :goto_9
    or-int v7, v7, v17

    goto :goto_a

    :cond_10
    move-object/from16 v5, p7

    :goto_a
    const/high16 v17, 0x30000000

    and-int v17, v13, v17

    if-nez v17, :cond_13

    and-int/lit16 v6, v14, 0x200

    if-nez v6, :cond_11

    move-object/from16 v6, p8

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x20000000

    goto :goto_b

    :cond_11
    move-object/from16 v6, p8

    :cond_12
    const/high16 v17, 0x10000000

    :goto_b
    or-int v7, v7, v17

    goto :goto_c

    :cond_13
    move-object/from16 v6, p8

    :goto_c
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    const/16 v17, 0x20

    goto :goto_d

    :cond_14
    const/16 v17, 0x10

    :goto_d
    const/16 v18, 0x6

    or-int v17, v18, v17

    const v19, 0x12492493

    move-object/from16 p2, v1

    and-int v1, v7, v19

    const v3, 0x12492492

    if-ne v1, v3, :cond_16

    and-int/lit8 v1, v17, 0x13

    const/16 v3, 0x12

    if-ne v1, v3, :cond_16

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->i()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_e

    :cond_15
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v8, v5

    move-object v0, v9

    move-object v7, v15

    move-object/from16 v5, p4

    move-object v9, v6

    move-object/from16 v6, p5

    goto/16 :goto_16

    :cond_16
    :goto_e
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v1, v13, 0x1

    const v19, -0xe000001

    const v20, -0x70000001

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v1, :cond_1a

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_f

    :cond_17
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit16 v1, v14, 0x100

    if-eqz v1, :cond_18

    and-int v7, v7, v19

    :cond_18
    and-int/lit16 v1, v14, 0x200

    if-eqz v1, :cond_19

    and-int v7, v7, v20

    :cond_19
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v15

    move-object/from16 v15, p4

    goto/16 :goto_14

    :cond_1a
    :goto_f
    if-eqz v4, :cond_1b

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :cond_1b
    move-object/from16 v1, p2

    :goto_10
    sget-object v2, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v4

    if-eqz v8, :cond_1d

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_1c

    new-instance v8, Lag0;

    move-object/from16 p2, v1

    const/16 v1, 0xc

    invoke-direct {v8, v1}, Lag0;-><init>(I)V

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_11

    :cond_1c
    move-object/from16 p2, v1

    :goto_11
    move-object v1, v8

    check-cast v1, Lkotlin/jvm/functions/Function1;

    goto :goto_12

    :cond_1d
    move-object/from16 p2, v1

    move-object/from16 v1, p5

    :goto_12
    if-eqz v10, :cond_1f

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_1e

    new-instance v8, Lag0;

    const/16 v10, 0xd

    invoke-direct {v8, v10}, Lag0;-><init>(I)V

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v8, Lkotlin/jvm/functions/Function1;

    goto :goto_13

    :cond_1f
    move-object v8, v15

    :goto_13
    and-int/lit16 v10, v14, 0x100

    if-eqz v10, :cond_20

    and-int v7, v7, v19

    move-object v5, v1

    :cond_20
    and-int/lit16 v10, v14, 0x200

    if-eqz v10, :cond_21

    and-int v6, v7, v20

    move v7, v6

    move-object v6, v8

    :cond_21
    move-object v15, v6

    move-object v6, v5

    move-object v5, v8

    move v8, v7

    move-object v7, v15

    move-object v15, v4

    move-object v4, v1

    move-object/from16 v1, p2

    :goto_14
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    or-int v19, v19, v20

    and-int/lit8 v10, v17, 0x70

    move-object/from16 p3, v1

    const/16 v1, 0x20

    if-ne v10, v1, :cond_22

    const/4 v1, 0x1

    goto :goto_15

    :cond_22
    const/4 v1, 0x0

    :goto_15
    or-int v1, v19, v1

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v1, :cond_23

    if-ne v10, v3, :cond_24

    :cond_23
    iget-object v1, v0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    iget-object v1, v1, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    new-instance v3, Landroidx/navigation/NavGraphBuilder;

    const/4 v10, 0x0

    invoke-direct {v3, v1, v11, v10, v15}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/Object;Lkotlin/reflect/KClass;Ljava/util/Map;)V

    invoke-interface {v12, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/navigation/NavGraphBuilder;->c()Landroidx/navigation/NavGraph;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object v1, v10

    check-cast v1, Landroidx/navigation/NavGraph;

    and-int/lit16 v3, v8, 0x1f8e

    shr-int/lit8 v8, v8, 0x6

    const v10, 0xe000

    and-int/2addr v10, v8

    or-int/2addr v3, v10

    const/high16 v10, 0x70000

    and-int/2addr v10, v8

    or-int/2addr v3, v10

    const/high16 v10, 0x380000

    and-int/2addr v10, v8

    or-int/2addr v3, v10

    const/high16 v10, 0x1c00000

    and-int/2addr v8, v10

    or-int/2addr v3, v8

    or-int v10, v3, v16

    const/4 v8, 0x0

    move-object v3, v2

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v10}, Landroidx/navigation/compose/NavHostKt;->a(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v8, v6

    move-object v0, v9

    move-object v6, v4

    move-object v9, v7

    move-object v4, v3

    move-object v7, v5

    move-object v5, v15

    move-object v3, v2

    :goto_16
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_25

    new-instance v0, Ljg0;

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v10, v12

    move v11, v13

    move v12, v14

    invoke-direct/range {v0 .. v12}, Ljg0;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_25
    return-void
.end method

.method public static final c(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v1, p2

    move-object/from16 v12, p8

    const-string v2, "NavHost"

    if-eqz v1, :cond_0

    invoke-static {v1, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    :cond_0
    const v3, 0x6daffdb6

    move-object/from16 v4, p9

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    and-int/lit8 v3, p10, 0x6

    const/4 v4, 0x2

    if-nez v3, :cond_2

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    or-int v3, p10, v3

    goto :goto_1

    :cond_2
    move/from16 v3, p10

    :goto_1
    and-int/lit8 v6, p10, 0x30

    const/16 v7, 0x20

    if-nez v6, :cond_4

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_2

    :cond_3
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :cond_4
    or-int/lit16 v3, v3, 0x6d80

    const/high16 v6, 0x30000

    and-int v6, p10, v6

    if-nez v6, :cond_6

    move-object/from16 v6, p4

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/high16 v8, 0x20000

    goto :goto_3

    :cond_5
    const/high16 v8, 0x10000

    :goto_3
    or-int/2addr v3, v8

    goto :goto_4

    :cond_6
    move-object/from16 v6, p4

    :goto_4
    const/high16 v8, 0x180000

    and-int v8, p10, v8

    if-nez v8, :cond_8

    move-object/from16 v8, p5

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/high16 v10, 0x100000

    goto :goto_5

    :cond_7
    const/high16 v10, 0x80000

    :goto_5
    or-int/2addr v3, v10

    goto :goto_6

    :cond_8
    move-object/from16 v8, p5

    :goto_6
    const/high16 v10, 0xc00000

    and-int v10, p10, v10

    if-nez v10, :cond_a

    move-object/from16 v10, p6

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/high16 v13, 0x800000

    goto :goto_7

    :cond_9
    const/high16 v13, 0x400000

    :goto_7
    or-int/2addr v3, v13

    goto :goto_8

    :cond_a
    move-object/from16 v10, p6

    :goto_8
    const/high16 v13, 0x6000000

    and-int v13, p10, v13

    if-nez v13, :cond_c

    move-object/from16 v13, p7

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/high16 v14, 0x4000000

    goto :goto_9

    :cond_b
    const/high16 v14, 0x2000000

    :goto_9
    or-int/2addr v3, v14

    goto :goto_a

    :cond_c
    move-object/from16 v13, p7

    :goto_a
    const/high16 v14, 0x30000000

    or-int/2addr v3, v14

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/4 v14, 0x4

    goto :goto_b

    :cond_d
    move v14, v4

    :goto_b
    const v15, 0x12492493

    and-int/2addr v15, v3

    const v5, 0x12492492

    if-ne v15, v5, :cond_f

    and-int/lit8 v5, v14, 0x3

    if-ne v5, v4, :cond_f

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->i()Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_c

    :cond_e
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v4, p3

    move-object v3, v1

    goto/16 :goto_11

    :cond_f
    :goto_c
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v4, p10, 0x1

    if-eqz v4, :cond_11

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_d

    :cond_10
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v2, p3

    goto :goto_e

    :cond_11
    :goto_d
    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    :goto_e
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v4, 0xe000

    and-int v5, v3, v4

    const/16 v15, 0x4000

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-ne v5, v15, :cond_12

    move/from16 v5, v17

    goto :goto_f

    :cond_12
    move/from16 v5, v16

    :goto_f
    and-int/lit8 v15, v3, 0x70

    if-ne v15, v7, :cond_13

    move/from16 v7, v17

    goto :goto_10

    :cond_13
    move/from16 v7, v16

    :goto_10
    or-int/2addr v5, v7

    and-int/lit8 v7, v14, 0xe

    const/4 v14, 0x4

    if-ne v7, v14, :cond_14

    move/from16 v16, v17

    :cond_14
    or-int v5, v5, v16

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_15

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v5, :cond_16

    :cond_15
    iget-object v5, v0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    iget-object v5, v5, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    new-instance v7, Landroidx/navigation/NavGraphBuilder;

    const/4 v14, 0x0

    invoke-direct {v7, v5, v11, v14}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroidx/navigation/NavGraphBuilder;->c()Landroidx/navigation/NavGraph;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v7, Landroidx/navigation/NavGraph;

    and-int/lit16 v5, v3, 0x1f8e

    shr-int/lit8 v3, v3, 0x3

    and-int/2addr v4, v3

    or-int/2addr v4, v5

    const/high16 v5, 0x70000

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    const/high16 v5, 0x380000

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    const/high16 v5, 0x1c00000

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    const/high16 v5, 0xe000000

    and-int/2addr v3, v5

    or-int/2addr v3, v4

    const/4 v8, 0x0

    move-object/from16 v5, p5

    move-object v4, v6

    move-object v6, v10

    move v10, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v7

    move-object v7, v13

    invoke-static/range {v0 .. v10}, Landroidx/navigation/compose/NavHostKt;->a(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v4, v3

    move-object v3, v2

    :goto_11
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_17

    new-instance v0, Lk4;

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p10

    move-object v2, v11

    move-object v9, v12

    invoke-direct/range {v0 .. v10}, Lk4;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method
