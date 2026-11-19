.class public abstract Lcom/vuitton/android/presentation/screen/storemode/components/plp/PSPStoreModeComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\n\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\t\u001a\u00020\u00088\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;",
        "storeModeViewState",
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;",
        "pspViewState",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;Ljava/util/LinkedHashMap;Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 39

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x2697ccec

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x4

    if-eqz v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p5, v0

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x800

    goto :goto_2

    :cond_2
    const/16 v1, 0x400

    :goto_2
    or-int v13, v0, v1

    and-int/lit16 v0, v13, 0x493

    const/16 v1, 0x492

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    and-int/lit8 v1, v13, 0x1

    invoke-virtual {v9, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :cond_5
    :goto_4
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v9}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;->Y()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-static {v3, v9}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;->M0()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-static {v4, v9}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;->c1()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-static {v5, v9}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    if-eqz v6, :cond_4b

    iget-object v14, v6, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->o:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v14, v9}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v14

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;

    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;->g()Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v21

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    and-int/lit8 v22, v13, 0xe

    xor-int/lit8 v15, v22, 0x6

    if-le v15, v11, :cond_6

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    :cond_6
    and-int/lit8 v10, v13, 0x6

    if-ne v10, v11, :cond_8

    :cond_7
    const/4 v10, 0x1

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    :goto_5
    or-int/2addr v1, v10

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v1, v10

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_9

    if-ne v10, v12, :cond_a

    :cond_9
    new-instance v10, Lof0;

    const/16 v1, 0x14

    invoke-direct {v10, v6, v2, v14, v1}, Lof0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v10, Lkotlin/jvm/functions/Function0;

    if-le v15, v11, :cond_b

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    and-int/lit8 v1, v13, 0x6

    if-ne v1, v11, :cond_d

    :cond_c
    const/4 v1, 0x1

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v1, :cond_e

    if-ne v14, v12, :cond_f

    :cond_e
    move-object v1, v0

    goto :goto_7

    :cond_f
    move-object/from16 v34, v14

    move-object v14, v0

    move-object/from16 v0, v34

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v37, v6

    goto :goto_8

    :goto_7
    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PSPStoreModeComposableKt$PSPStoreModeComposable$2$1;

    move-object v14, v5

    const-string v5, "refreshWishlist()V"

    move-object/from16 v25, v6

    const/4 v6, 0x0

    move-object/from16 v26, v1

    const/4 v1, 0x0

    move-object/from16 v27, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;

    move-object/from16 v28, v4

    const-string v4, "refreshWishlist"

    move-object/from16 v36, v14

    move-object/from16 v37, v25

    move-object/from16 v14, v26

    move-object/from16 v34, v27

    move-object/from16 v35, v28

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_8
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object/from16 v25, v0

    check-cast v25, Lkotlin/jvm/functions/Function0;

    if-le v15, v11, :cond_10

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    and-int/lit8 v0, v13, 0x6

    if-ne v0, v11, :cond_12

    :cond_11
    const/4 v0, 0x1

    goto :goto_9

    :cond_12
    const/4 v0, 0x0

    :goto_9
    and-int/lit16 v1, v13, 0x1c00

    const/16 v3, 0x800

    if-ne v1, v3, :cond_13

    const/4 v4, 0x1

    goto :goto_a

    :cond_13
    const/4 v4, 0x0

    :goto_a
    or-int/2addr v0, v4

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x19

    if-nez v0, :cond_14

    if-ne v4, v12, :cond_15

    :cond_14
    new-instance v4, Lrh0;

    invoke-direct {v4, v2, v8, v5}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v24, v4

    check-cast v24, Lkotlin/jvm/functions/Function0;

    move-object/from16 v6, v37

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_16

    if-ne v4, v12, :cond_17

    :cond_16
    new-instance v4, Lhl0;

    const/4 v0, 0x2

    invoke-direct {v4, v6, v0}, Lhl0;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;I)V

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v22, v4

    check-cast v22, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_18

    if-ne v4, v12, :cond_19

    :cond_18
    new-instance v4, Lje;

    invoke-direct {v4, v14, v5}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object/from16 v26, v4

    check-cast v26, Lkotlin/jvm/functions/Function0;

    if-le v15, v11, :cond_1a

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_1a
    and-int/lit8 v0, v13, 0x6

    if-ne v0, v11, :cond_1c

    :cond_1b
    const/4 v0, 0x1

    :goto_b
    move v4, v3

    move-object/from16 v3, v34

    goto :goto_c

    :cond_1c
    const/4 v0, 0x0

    goto :goto_b

    :goto_c
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    move-object/from16 v5, v35

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v27

    or-int v0, v0, v27

    move-object/from16 v4, v36

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v28

    or-int v0, v0, v28

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v0, :cond_1e

    if-ne v11, v12, :cond_1d

    goto :goto_d

    :cond_1d
    move-object/from16 v37, v6

    move-object v0, v11

    const/16 v27, 0x800

    move v11, v1

    goto :goto_e

    :cond_1e
    :goto_d
    new-instance v0, Lyh;

    move-object/from16 v37, v6

    const/16 v6, 0xa

    move-object v11, v5

    move-object v5, v4

    move-object v4, v11

    move v11, v1

    move-object v1, v2

    move-object/from16 v2, v37

    const/16 v27, 0x800

    invoke-direct/range {v0 .. v6}, Lyh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v2, v1

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_e
    move-object/from16 v29, v0

    check-cast v29, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x4

    if-le v15, v0, :cond_1f

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    :cond_1f
    and-int/lit8 v1, v13, 0x6

    if-ne v1, v0, :cond_21

    :cond_20
    const/4 v0, 0x1

    goto :goto_f

    :cond_21
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_23

    if-ne v1, v12, :cond_22

    goto :goto_10

    :cond_22
    move-object v7, v3

    move-object/from16 v30, v10

    move-object/from16 v10, v37

    goto :goto_11

    :cond_23
    :goto_10
    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PSPStoreModeComposableKt$PSPStoreModeComposable$7$1;

    const-string v5, "setFilterBottomSheetVisible(Z)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    move-object/from16 v34, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;

    const-string v4, "setFilterBottomSheetVisible"

    move-object/from16 v30, v10

    move-object/from16 v7, v34

    move-object/from16 v10, v37

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_11
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object/from16 v31, v1

    check-cast v31, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_24

    if-ne v1, v12, :cond_25

    :cond_24
    new-instance v1, Lhl0;

    const/4 v0, 0x3

    invoke-direct {v1, v10, v0}, Lhl0;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;I)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    move-object/from16 v32, v1

    check-cast v32, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x4

    if-le v15, v0, :cond_26

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    :cond_26
    and-int/lit8 v1, v13, 0x6

    if-ne v1, v0, :cond_28

    :cond_27
    const/4 v0, 0x1

    goto :goto_12

    :cond_28
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_29

    if-ne v1, v12, :cond_2a

    :cond_29
    new-instance v1, Lnl0;

    const/4 v0, 0x1

    invoke-direct {v1, v2, v0}, Lnl0;-><init>(Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;I)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    move-object/from16 v33, v1

    check-cast v33, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2b

    if-ne v1, v12, :cond_2c

    :cond_2b
    new-instance v1, Lil0;

    const/4 v0, 0x1

    invoke-direct {v1, v10, v0}, Lil0;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;I)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2c
    move-object/from16 v34, v1

    check-cast v34, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x4

    if-le v15, v0, :cond_2d

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    :cond_2d
    and-int/lit8 v1, v13, 0x6

    if-ne v1, v0, :cond_2f

    :cond_2e
    const/4 v0, 0x1

    goto :goto_13

    :cond_2f
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_31

    if-ne v1, v12, :cond_30

    goto :goto_14

    :cond_30
    const/4 v0, 0x0

    goto :goto_15

    :cond_31
    :goto_14
    new-instance v1, Lnl0;

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lnl0;-><init>(Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;I)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_15
    move-object/from16 v35, v1

    check-cast v35, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x4

    if-le v15, v1, :cond_32

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    :cond_32
    and-int/lit8 v3, v13, 0x6

    if-ne v3, v1, :cond_34

    :cond_33
    const/4 v1, 0x1

    goto :goto_16

    :cond_34
    move v1, v0

    :goto_16
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_35

    if-ne v3, v12, :cond_36

    :cond_35
    move v1, v0

    goto :goto_17

    :cond_36
    move/from16 v36, v0

    goto :goto_18

    :goto_17
    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PSPStoreModeComposableKt$PSPStoreModeComposable$12$1;

    const-string v5, "updateWishlist(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;)V"

    const/4 v6, 0x0

    move v3, v1

    const/4 v1, 0x1

    move v4, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;

    move/from16 v36, v4

    const-string v4, "updateWishlist"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_18
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object/from16 v37, v3

    check-cast v37, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-le v15, v0, :cond_37

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    :cond_37
    and-int/lit8 v1, v13, 0x6

    if-ne v1, v0, :cond_39

    :cond_38
    const/4 v0, 0x1

    goto :goto_19

    :cond_39
    move/from16 v0, v36

    :goto_19
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3a

    if-ne v1, v12, :cond_3b

    :cond_3a
    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PSPStoreModeComposableKt$PSPStoreModeComposable$13$1;

    const-string v5, "onWishlistToggled(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;

    const-string v4, "onWishlistToggled"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_3b
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object/from16 v38, v1

    check-cast v38, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-le v15, v0, :cond_3c

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    :cond_3c
    and-int/lit8 v1, v13, 0x6

    if-ne v1, v0, :cond_3e

    :cond_3d
    const/4 v0, 0x1

    goto :goto_1a

    :cond_3e
    move/from16 v0, v36

    :goto_1a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3f

    if-ne v1, v12, :cond_40

    :cond_3f
    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PSPStoreModeComposableKt$PSPStoreModeComposable$14$1;

    const-string v5, "onWishlistAnimationEnd(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;

    const-string v4, "onWishlistAnimationEnd"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_40
    check-cast v1, Lkotlin/reflect/KFunction;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-le v15, v0, :cond_41

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    :cond_41
    and-int/lit8 v3, v13, 0x6

    if-ne v3, v0, :cond_43

    :cond_42
    const/4 v0, 0x1

    goto :goto_1b

    :cond_43
    move/from16 v0, v36

    :goto_1b
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_44

    if-ne v3, v12, :cond_45

    :cond_44
    new-instance v3, Lgi0;

    const/4 v0, 0x7

    invoke-direct {v3, v2, v14, v7, v0}, Lgi0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_45
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_47

    if-ne v4, v12, :cond_46

    goto :goto_1c

    :cond_46
    const/4 v0, 0x1

    goto :goto_1d

    :cond_47
    :goto_1c
    new-instance v4, Lgl0;

    const/4 v0, 0x1

    invoke-direct {v4, v10, v0}, Lgl0;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;I)V

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1d
    check-cast v4, Lkotlin/jvm/functions/Function5;

    move v5, v11

    move-object/from16 v11, v18

    move-object/from16 v18, v24

    move-object/from16 v24, v33

    const/high16 v33, 0x30000

    move-object/from16 v6, v31

    move-object/from16 v31, v4

    move-object v4, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v6

    move v6, v0

    move-object/from16 v10, v17

    move-object/from16 v13, v20

    move-object/from16 v15, v21

    move-object/from16 v17, v25

    move-object/from16 v20, v26

    move-object/from16 v21, v29

    move-object/from16 v23, v32

    move-object/from16 v25, v34

    move-object/from16 v26, v35

    move/from16 v0, v36

    move-object/from16 v28, v38

    move-object/from16 v29, v1

    move-object/from16 v32, v9

    move-object v1, v14

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v14, p2

    move-object/from16 v30, v3

    move/from16 v3, v27

    move-object/from16 v27, v37

    invoke-static/range {v9 .. v33}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PSPStoreModeScreenKt;->a(Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v9, v32

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;->y0()Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v7

    if-ne v5, v3, :cond_48

    move v14, v6

    goto :goto_1e

    :cond_48
    move v14, v0

    :goto_1e
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v14

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_49

    if-ne v5, v4, :cond_4a

    :cond_49
    new-instance v5, Lol0;

    invoke-direct {v5, v8, v1}, Lol0;-><init>(Lkotlin/jvm/functions/Function0;Landroid/content/Context;)V

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4a
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v7, v5, v9, v0}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeLeaveScreenKt;->a(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1f

    :cond_4b
    move-object v7, v3

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    const-string v1, "No filter view model found for "

    invoke-static {v0, v1}, Lv7;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_4c
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1f
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_4d

    new-instance v0, Luv;

    const/16 v6, 0x18

    move-object/from16 v3, p2

    move/from16 v5, p5

    move-object v1, v2

    move-object v4, v8

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Luv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4d
    return-void
.end method
