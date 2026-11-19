.class public abstract Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0008\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;",
        "plpViewState",
        "Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;",
        "storeModeViewState",
        "Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;",
        "filtersViewState",
        "Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;",
        "productFiltersViewState",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;Ljava/util/LinkedHashMap;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 38

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x4ec5ab8e    # 1.65817728E9f

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    and-int/lit8 v0, v9, 0x6

    if-nez v0, :cond_2

    and-int/lit8 v0, v9, 0x8

    if-nez v0, :cond_0

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, v9

    goto :goto_2

    :cond_2
    move v0, v9

    :goto_2
    and-int/lit8 v1, v9, 0x30

    if-nez v1, :cond_4

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x20

    goto :goto_3

    :cond_3
    const/16 v1, 0x10

    :goto_3
    or-int/2addr v0, v1

    :cond_4
    and-int/lit16 v1, v9, 0x180

    move-object/from16 v14, p2

    if-nez v1, :cond_6

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x100

    goto :goto_4

    :cond_5
    const/16 v1, 0x80

    :goto_4
    or-int/2addr v0, v1

    :cond_6
    and-int/lit16 v1, v9, 0xc00

    if-nez v1, :cond_8

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x800

    goto :goto_5

    :cond_7
    const/16 v1, 0x400

    :goto_5
    or-int/2addr v0, v1

    :cond_8
    move v12, v0

    and-int/lit16 v0, v12, 0x493

    const/16 v1, 0x492

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    and-int/lit8 v1, v12, 0x1

    invoke-virtual {v10, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v10}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;->Y()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v10}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;->c1()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v10}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    invoke-virtual {v7, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    if-eqz v1, :cond_42

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->o:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v3, v10}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->b:Ljava/lang/String;

    if-nez v13, :cond_a

    const-string v13, ""

    :cond_a
    sget-object v15, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    or-int v17, v17, v18

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v19, v6

    const/4 v6, 0x0

    move-object/from16 v20, v5

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v17, :cond_b

    if-ne v11, v5, :cond_c

    :cond_b
    new-instance v11, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeComposableKt$PLPStoreModeComposable$1$1;

    invoke-direct {v11, v1, v0, v6}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeComposableKt$PLPStoreModeComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v15, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->b:Ljava/lang/String;

    and-int/lit8 v15, v12, 0xe

    const/4 v6, 0x4

    if-eq v15, v6, :cond_e

    and-int/lit8 v6, v12, 0x8

    if-eqz v6, :cond_d

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_8

    :cond_d
    const/4 v6, 0x0

    :goto_7
    move-object/from16 v21, v0

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v6, 0x1

    goto :goto_7

    :goto_9
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_10

    if-ne v0, v5, :cond_f

    goto :goto_a

    :cond_f
    const/4 v6, 0x0

    goto :goto_b

    :cond_10
    :goto_a
    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeComposableKt$PLPStoreModeComposable$2$1;

    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeComposableKt$PLPStoreModeComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_b
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v11, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;->g()Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v24

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v25

    or-int v0, v0, v25

    const/4 v6, 0x4

    if-eq v15, v6, :cond_12

    and-int/lit8 v6, v12, 0x8

    if-eqz v6, :cond_11

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_c

    :cond_11
    const/4 v6, 0x0

    goto :goto_d

    :cond_12
    :goto_c
    const/4 v6, 0x1

    :goto_d
    or-int/2addr v0, v6

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v0, v6

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v0, :cond_14

    if-ne v6, v5, :cond_13

    goto :goto_e

    :cond_13
    move-object v0, v6

    move-object v3, v13

    move-object/from16 v13, v20

    move-object/from16 v32, v21

    move-object/from16 v20, v4

    move-object v6, v5

    goto :goto_f

    :cond_14
    :goto_e
    new-instance v0, Lr0;

    move-object v6, v5

    const/16 v5, 0x14

    move-object/from16 v32, v3

    move-object v3, v2

    move-object v2, v13

    move-object/from16 v13, v20

    move-object/from16 v20, v4

    move-object/from16 v4, v32

    move-object/from16 v32, v21

    invoke-direct/range {v0 .. v5}, Lr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_f
    move-object/from16 v21, v0

    check-cast v21, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x4

    if-eq v15, v0, :cond_16

    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_15

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_10

    :cond_15
    const/4 v0, 0x0

    goto :goto_11

    :cond_16
    :goto_10
    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_18

    if-ne v4, v6, :cond_17

    goto :goto_12

    :cond_17
    move-object v14, v6

    move-object/from16 v7, v19

    move-object/from16 v9, v20

    const/16 v25, 0x0

    move-object/from16 v19, v11

    move/from16 v20, v12

    move-object v11, v1

    move-object v12, v3

    goto :goto_13

    :cond_18
    :goto_12
    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeComposableKt$PLPStoreModeComposable$4$1;

    const-string v5, "refreshWishlist()V"

    move-object v4, v6

    const/4 v6, 0x0

    move-object/from16 v26, v1

    const/4 v1, 0x0

    move-object/from16 v27, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;

    move-object/from16 v28, v4

    const-string v4, "refreshWishlist"

    move-object/from16 v7, v19

    move-object/from16 v9, v20

    move-object/from16 v14, v28

    const/16 v25, 0x0

    move-object/from16 v19, v11

    move/from16 v20, v12

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_13
    check-cast v4, Lkotlin/reflect/KFunction;

    move-object/from16 v26, v4

    check-cast v26, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_19

    if-ne v1, v14, :cond_1a

    :cond_19
    new-instance v1, Lhl0;

    const/4 v0, 0x0

    invoke-direct {v1, v11, v0}, Lhl0;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object/from16 v27, v1

    check-cast v27, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x17

    if-nez v0, :cond_1b

    if-ne v1, v14, :cond_1c

    :cond_1b
    new-instance v1, Lje;

    invoke-direct {v1, v7, v3}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object/from16 v28, v1

    check-cast v28, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x4

    if-eq v15, v6, :cond_1e

    and-int/lit8 v0, v20, 0x8

    if-eqz v0, :cond_1d

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_14

    :cond_1d
    const/4 v0, 0x0

    goto :goto_15

    :cond_1e
    :goto_14
    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    move-object/from16 v5, v32

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_20

    if-ne v1, v14, :cond_1f

    goto :goto_16

    :cond_1f
    move-object/from16 v37, v9

    move v9, v3

    move-object v3, v12

    move-object v12, v11

    move-object/from16 v11, v37

    goto :goto_17

    :cond_20
    :goto_16
    new-instance v0, Lyh;

    const/16 v6, 0x9

    move-object v1, v2

    move-object v4, v9

    move-object v2, v11

    move v9, v3

    move-object v3, v12

    invoke-direct/range {v0 .. v6}, Lyh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v12, v2

    move-object v11, v4

    move-object v2, v1

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_17
    move-object/from16 v29, v1

    check-cast v29, Lkotlin/jvm/functions/Function0;

    const/16 v0, 0x16

    if-nez v8, :cond_21

    const v1, -0x32bf052b    # -2.02354E8f

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :cond_21
    const v1, -0x32bf052a

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v6, 0x4

    if-eq v15, v6, :cond_23

    and-int/lit8 v1, v20, 0x8

    if-eqz v1, :cond_22

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_18

    :cond_22
    const/4 v1, 0x0

    goto :goto_19

    :cond_23
    :goto_18
    const/4 v1, 0x1

    :goto_19
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_24

    if-ne v4, v14, :cond_25

    :cond_24
    new-instance v4, Lrh0;

    invoke-direct {v4, v2, v8, v0}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    move-object v6, v4

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v25, v6

    :goto_1a
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_27

    if-ne v4, v14, :cond_26

    goto :goto_1b

    :cond_26
    const/4 v1, 0x1

    goto :goto_1c

    :cond_27
    :goto_1b
    new-instance v4, Lhl0;

    const/4 v1, 0x1

    invoke-direct {v4, v12, v1}, Lhl0;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1c
    move-object/from16 v30, v4

    check-cast v30, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x4

    if-eq v15, v6, :cond_29

    and-int/lit8 v4, v20, 0x8

    if-eqz v4, :cond_28

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_1d

    :cond_28
    const/4 v4, 0x0

    goto :goto_1e

    :cond_29
    :goto_1d
    move v4, v1

    :goto_1e
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_2a

    if-ne v5, v14, :cond_2b

    :cond_2a
    move v4, v0

    goto :goto_1f

    :cond_2b
    move/from16 v31, v1

    move-object/from16 v34, v3

    goto :goto_20

    :goto_1f
    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeComposableKt$PLPStoreModeComposable$10$1;

    const-string v5, "onWishlistToggled(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V"

    const/4 v6, 0x0

    move/from16 v31, v1

    const/4 v1, 0x1

    move-object/from16 v32, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;

    move/from16 v33, v4

    const-string v4, "onWishlistToggled"

    move-object/from16 v34, v32

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :goto_20
    check-cast v5, Lkotlin/reflect/KFunction;

    move-object/from16 v32, v5

    check-cast v32, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2c

    if-ne v1, v14, :cond_2d

    :cond_2c
    new-instance v1, Lil0;

    const/4 v0, 0x0

    invoke-direct {v1, v12, v0}, Lil0;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2d
    move-object/from16 v33, v1

    check-cast v33, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x4

    if-eq v15, v6, :cond_2f

    and-int/lit8 v0, v20, 0x8

    if-eqz v0, :cond_2e

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_21

    :cond_2e
    const/4 v0, 0x0

    goto :goto_22

    :cond_2f
    :goto_21
    move/from16 v0, v31

    :goto_22
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_30

    if-ne v1, v14, :cond_31

    :cond_30
    new-instance v1, Ltb0;

    invoke-direct {v1, v2, v9}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_31
    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x4

    if-eq v15, v6, :cond_33

    and-int/lit8 v0, v20, 0x8

    if-eqz v0, :cond_32

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_23

    :cond_32
    const/4 v0, 0x0

    goto :goto_24

    :cond_33
    :goto_23
    move/from16 v0, v31

    :goto_24
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_34

    if-ne v1, v14, :cond_35

    :cond_34
    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeComposableKt$PLPStoreModeComposable$13$1;

    const-string v5, "onWishlistAnimationEnd(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;

    const-string v4, "onWishlistAnimationEnd"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_35
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object/from16 v35, v1

    check-cast v35, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x4

    if-eq v15, v6, :cond_37

    and-int/lit8 v0, v20, 0x8

    if-eqz v0, :cond_36

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_25

    :cond_36
    const/4 v0, 0x0

    goto :goto_26

    :cond_37
    :goto_25
    move/from16 v0, v31

    :goto_26
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_38

    if-ne v1, v14, :cond_39

    :cond_38
    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeComposableKt$PLPStoreModeComposable$14$1;

    const-string v5, "updateWishlist(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;

    const-string v4, "updateWishlist"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_39
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object/from16 v36, v1

    check-cast v36, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x4

    if-eq v15, v6, :cond_3b

    and-int/lit8 v0, v20, 0x8

    if-eqz v0, :cond_3a

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_27

    :cond_3a
    const/16 v31, 0x0

    :cond_3b
    :goto_27
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int v0, v31, v0

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    move-object/from16 v3, v34

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3d

    if-ne v1, v14, :cond_3c

    goto :goto_28

    :cond_3c
    move-object v2, v7

    goto :goto_29

    :cond_3d
    :goto_28
    new-instance v0, Lkj0;

    const/4 v6, 0x5

    move-object v1, v2

    move-object v2, v7

    move-object v4, v11

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lkj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_29
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_3f

    if-ne v3, v14, :cond_3e

    goto :goto_2a

    :cond_3e
    const/4 v0, 0x0

    goto :goto_2b

    :cond_3f
    :goto_2a
    new-instance v3, Lgl0;

    const/4 v0, 0x0

    invoke-direct {v3, v12, v0}, Lgl0;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;I)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_2b
    check-cast v3, Lkotlin/jvm/functions/Function5;

    const v4, 0xe000

    shl-int/lit8 v5, v20, 0x6

    and-int v31, v5, v4

    move-object v6, v14

    move-object/from16 v11, v17

    move-object/from16 v16, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v15, v24

    move-object/from16 v21, v25

    move-object/from16 v17, v26

    move-object/from16 v18, v27

    move-object/from16 v20, v29

    move-object/from16 v22, v30

    move-object/from16 v23, v32

    move-object/from16 v24, v33

    move-object/from16 v26, v35

    move-object/from16 v27, v36

    move-object/from16 v14, p2

    move-object/from16 v29, v3

    move-object/from16 v25, v9

    move-object/from16 v30, v10

    move-object/from16 v10, v19

    move-object/from16 v19, v28

    move-object/from16 v28, v1

    invoke-static/range {v10 .. v31}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeScreenKt;->a(Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;Ljava/lang/String;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v1, v30

    invoke-interface/range {p0 .. p0}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;->y0()Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_40

    if-ne v5, v6, :cond_41

    :cond_40
    new-instance v5, Lje;

    const/16 v4, 0x16

    invoke-direct {v5, v2, v4}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_41
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v5, v1, v0}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeLeaveScreenKt;->a(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2c

    :cond_42
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    const-string v1, "No filter view model found for "

    invoke-static {v0, v1}, Lv7;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_43
    move-object v1, v10

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_44

    new-instance v0, Loi0;

    const/4 v6, 0x4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p5

    move-object v4, v8

    invoke-direct/range {v0 .. v6}, Loi0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_44
    return-void
.end method
