.class public abstract Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v4, p3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7828d1e3

    move-object/from16 v2, p4

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x4

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p5, v0

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    const/16 v13, 0x800

    if-eqz v2, :cond_3

    move v2, v13

    goto :goto_3

    :cond_3
    const/16 v2, 0x400

    :goto_3
    or-int v14, v0, v2

    and-int/lit16 v0, v14, 0x493

    const/16 v2, 0x492

    const/4 v15, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    move v0, v15

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    and-int/lit8 v2, v14, 0x1

    invoke-virtual {v9, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-static {v2, v9}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;->e()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-static {v5, v9}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v22

    new-array v5, v3, [Landroidx/navigation/Navigator;

    invoke-static {v5, v9}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v5

    sget-object v16, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$Reason;->INSTANCE:Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$Reason;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v11, :cond_5

    new-instance v6, Lch0;

    const/16 v3, 0x18

    invoke-direct {v6, v3}, Lch0;-><init>(I)V

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v18, v6

    check-cast v18, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v11, :cond_6

    new-instance v3, Lch0;

    const/16 v6, 0x19

    invoke-direct {v3, v6}, Lch0;-><init>(I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v19, v3

    check-cast v19, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v11, :cond_7

    new-instance v3, Lch0;

    const/16 v6, 0x1a

    invoke-direct {v3, v6}, Lch0;-><init>(I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object/from16 v20, v3

    check-cast v20, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v11, :cond_8

    new-instance v3, Lch0;

    const/16 v6, 0x1b

    invoke-direct {v3, v6}, Lch0;-><init>(I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v21, v3

    check-cast v21, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v3, v14, 0xe

    if-eq v3, v10, :cond_9

    const/4 v6, 0x0

    goto :goto_5

    :cond_9
    move v6, v15

    :goto_5
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    or-int v6, v6, v23

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    or-int v6, v6, v23

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    or-int v6, v6, v23

    and-int/lit16 v12, v14, 0x1c00

    if-ne v12, v13, :cond_a

    move/from16 v24, v15

    goto :goto_6

    :cond_a
    const/16 v24, 0x0

    :goto_6
    or-int v6, v6, v24

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v6, :cond_b

    if-ne v10, v11, :cond_c

    :cond_b
    move-object v4, v0

    goto :goto_7

    :cond_c
    move-object/from16 v29, v2

    move-object v2, v0

    move-object v0, v10

    move v10, v3

    move-object/from16 v3, v29

    goto :goto_8

    :goto_7
    new-instance v0, Ld1;

    const/16 v6, 0xb

    move v10, v3

    move-object v3, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Ld1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v29, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v5

    move-object/from16 v5, v29

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_8
    check-cast v0, Lkotlin/jvm/functions/Function1;

    move v6, v10

    move-object/from16 v10, v16

    move-object/from16 v16, v20

    const v20, 0x36d80030

    move-object/from16 v17, v21

    const/16 v21, 0x43c

    move-object/from16 v25, v11

    const/4 v11, 0x0

    move/from16 v26, v12

    const/4 v12, 0x0

    move/from16 v27, v13

    const/4 v13, 0x0

    move-object/from16 v15, v19

    move/from16 v28, v26

    move-object/from16 v19, v9

    move-object v9, v5

    move v5, v14

    move-object/from16 v14, v18

    move-object/from16 v18, v0

    move-object/from16 v0, v25

    invoke-static/range {v9 .. v21}, Landroidx/navigation/compose/NavHostKt;->b(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v9, v19

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;

    if-nez v10, :cond_d

    const v2, 0x16b7790c

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v5, 0x1

    goto/16 :goto_14

    :cond_d
    const/4 v12, 0x0

    const v13, 0x16b7790d

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    instance-of v13, v10, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$Policy;

    if-eqz v13, :cond_13

    const v5, 0x7715c284

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->i:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->c:Z

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v5, :cond_e

    if-ne v10, v0, :cond_f

    :cond_e
    new-instance v10, Lef;

    const/16 v5, 0xb

    invoke-direct {v10, v2, v5}, Lef;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x4

    if-eq v6, v2, :cond_10

    move v15, v12

    goto :goto_9

    :cond_10
    const/4 v15, 0x1

    :goto_9
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v15, :cond_11

    if-ne v2, v0, :cond_12

    :cond_11
    new-instance v2, Lui0;

    const/4 v5, 0x3

    invoke-direct {v2, v1, v5}, Lui0;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v10, v2, v9, v12}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->e(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_a
    const/4 v5, 0x1

    goto/16 :goto_13

    :cond_13
    instance-of v2, v10, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$ReturnRequest;

    if-eqz v2, :cond_18

    const v2, 0x7715efd8

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->d:Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel;

    const/4 v10, 0x4

    if-eq v6, v10, :cond_14

    move v15, v12

    goto :goto_b

    :cond_14
    const/4 v15, 0x1

    :goto_b
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v10, v15

    and-int/lit8 v5, v5, 0x70

    const/16 v13, 0x20

    if-ne v5, v13, :cond_15

    const/4 v15, 0x1

    goto :goto_c

    :cond_15
    move v15, v12

    :goto_c
    or-int v5, v10, v15

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v5, :cond_16

    if-ne v10, v0, :cond_17

    :cond_16
    new-instance v10, Lzi0;

    invoke-direct {v10, v1, v7, v3, v12}, Lzi0;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v10, v9, v12}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->j(Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_18
    instance-of v2, v10, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$ExchangeRequest;

    if-eqz v2, :cond_20

    const v2, 0x6bb0eb01

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->n:Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel;

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    const/4 v13, 0x4

    if-eq v6, v13, :cond_19

    move v15, v12

    goto :goto_d

    :cond_19
    const/4 v15, 0x1

    :goto_d
    or-int/2addr v10, v15

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v10, :cond_1a

    if-ne v13, v0, :cond_1b

    :cond_1a
    new-instance v13, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$6$4$1;

    invoke-direct {v13, v1, v3, v11}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$6$4$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v2, v13}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->n:Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel;

    const/4 v10, 0x4

    if-eq v6, v10, :cond_1c

    move v15, v12

    goto :goto_e

    :cond_1c
    const/4 v15, 0x1

    :goto_e
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v10, v15

    and-int/lit16 v5, v5, 0x380

    const/16 v13, 0x100

    if-ne v5, v13, :cond_1d

    const/4 v15, 0x1

    goto :goto_f

    :cond_1d
    move v15, v12

    :goto_f
    or-int v5, v10, v15

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v5, :cond_1f

    if-ne v10, v0, :cond_1e

    goto :goto_10

    :cond_1e
    const/4 v5, 0x1

    goto :goto_11

    :cond_1f
    :goto_10
    new-instance v10, Lzi0;

    const/4 v5, 0x1

    invoke-direct {v10, v1, v8, v3, v5}, Lzi0;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_11
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v10, v9, v12}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->c(Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_20
    const/4 v5, 0x1

    instance-of v2, v10, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;

    if-eqz v2, :cond_28

    const v2, 0x7716b9bb

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    check-cast v10, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;

    const/4 v10, 0x4

    if-eq v6, v10, :cond_21

    move v15, v12

    goto :goto_12

    :cond_21
    move v15, v5

    :goto_12
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v15, :cond_22

    if-ne v3, v0, :cond_23

    :cond_22
    new-instance v3, Lui0;

    invoke-direct {v3, v1, v12}, Lui0;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3, v9, v12}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->k(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_14
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v10, 0x4

    if-eq v6, v10, :cond_24

    move v15, v12

    :goto_15
    move/from16 v3, v28

    const/16 v6, 0x800

    goto :goto_16

    :cond_24
    move v15, v5

    goto :goto_15

    :goto_16
    if-ne v3, v6, :cond_25

    move v12, v5

    :cond_25
    or-int v3, v15, v12

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_26

    if-ne v5, v0, :cond_27

    :cond_26
    new-instance v5, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$7$1;

    invoke-direct {v5, v1, v4, v11}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$7$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v2, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    goto :goto_17

    :cond_28
    const v0, 0x7715c051

    invoke-static {v9, v0, v12}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_29
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_17
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_2a

    new-instance v0, Luv;

    const/16 v6, 0x10

    move/from16 v5, p5

    move-object v2, v7

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Luv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2a
    return-void
.end method
