.class public abstract Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0008\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u0004\u0018\u00010\u00068\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;",
        "ctaState",
        "",
        "currentIsLoading",
        "Lcom/vuitton/android/presentation/screen/booking/list/models/ExperienceBottomSheet;",
        "bottomSheet",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlinx/coroutines/flow/StateFlow;Ljava/lang/String;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x2f7ebe45

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p8, v2

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v2, v6

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v2, v6

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x4000

    goto :goto_3

    :cond_3
    const/16 v6, 0x2000

    :goto_3
    or-int/2addr v2, v6

    move-object/from16 v12, p5

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v6, 0x20000

    goto :goto_4

    :cond_4
    const/high16 v6, 0x10000

    :goto_4
    or-int/2addr v2, v6

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/high16 v6, 0x100000

    goto :goto_5

    :cond_5
    const/high16 v6, 0x80000

    :goto_5
    or-int/2addr v2, v6

    const v6, 0x92493

    and-int/2addr v6, v2

    const v13, 0x92492

    const/4 v14, 0x0

    if-eq v6, v13, :cond_6

    const/4 v6, 0x1

    goto :goto_6

    :cond_6
    move v6, v14

    :goto_6
    and-int/lit8 v13, v2, 0x1

    invoke-virtual {v0, v13, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_2b

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->w:Lkotlinx/coroutines/flow/StateFlow;

    const/4 v4, 0x0

    const/4 v15, 0x7

    invoke-static {v13, v4, v0, v14, v15}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v22

    shr-int/lit8 v13, v2, 0x3

    and-int/lit8 v13, v13, 0xe

    invoke-static {v7, v4, v0, v13, v15}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v23

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;->d:Ljava/util/List;

    check-cast v13, Ljava/lang/Iterable;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->a:Ljava/lang/String;

    sget-object v19, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/BookingId$Companion;

    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_7

    :cond_8
    move-object/from16 v17, v4

    :goto_7
    move-object/from16 v10, v17

    check-cast v10, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    sget-object v11, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->LOADING:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    if-ne v13, v11, :cond_9

    const/4 v11, 0x1

    goto :goto_8

    :cond_9
    move v11, v14

    :goto_8
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v13, v0}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->u:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v5, v4, v0, v14, v15}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v15, :cond_a

    if-ne v4, v14, :cond_b

    :cond_a
    new-instance v4, Lj6;

    const/16 v15, 0xa

    invoke-direct {v4, v15, v13}, Lj6;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v13, 0x5

    const/4 v15, 0x0

    invoke-static {v15, v13, v0, v4}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v4

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/booking/list/models/ExperienceBottomSheet;

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    or-int v19, v19, v20

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v19, :cond_d

    if-ne v15, v14, :cond_c

    goto :goto_9

    :cond_c
    move/from16 v19, v2

    goto :goto_a

    :cond_d
    :goto_9
    new-instance v15, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsComposableKt$BookingDetailsComposable$1$1;

    move/from16 v19, v2

    const/4 v2, 0x0

    invoke-direct {v15, v5, v4, v2}, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsComposableKt$BookingDetailsComposable$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_a
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v13, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    and-int/lit8 v13, v19, 0xe

    const/4 v15, 0x4

    if-eq v13, v15, :cond_e

    const/4 v15, 0x0

    goto :goto_b

    :cond_e
    const/4 v15, 0x1

    :goto_b
    or-int/2addr v2, v15

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v2, :cond_f

    if-ne v15, v14, :cond_10

    :cond_f
    new-instance v15, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsComposableKt$BookingDetailsComposable$2$1;

    const/4 v2, 0x0

    invoke-direct {v15, v10, v1, v2}, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsComposableKt$BookingDetailsComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v10, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;->d:Ljava/util/List;

    const/4 v15, 0x4

    if-eq v13, v15, :cond_11

    const/4 v15, 0x0

    goto :goto_c

    :cond_11
    const/4 v15, 0x1

    :goto_c
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    or-int v15, v15, v21

    move-object/from16 v21, v2

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v15, :cond_12

    if-ne v2, v14, :cond_13

    :cond_12
    new-instance v2, Lk;

    const/16 v15, 0x13

    invoke-direct {v2, v1, v6, v15}, Lk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v15, 0x4

    if-eq v13, v15, :cond_14

    const/4 v15, 0x0

    goto :goto_d

    :cond_14
    const/4 v15, 0x1

    :goto_d
    const/high16 v24, 0x380000

    move-object/from16 v25, v2

    and-int v2, v19, v24

    const/high16 v3, 0x100000

    if-ne v2, v3, :cond_15

    const/4 v2, 0x1

    goto :goto_e

    :cond_15
    const/4 v2, 0x0

    :goto_e
    or-int/2addr v2, v15

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_16

    if-ne v3, v14, :cond_17

    :cond_16
    new-instance v3, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsComposableKt$BookingDetailsComposable$4$1;

    invoke-direct {v3, v1, v9}, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsComposableKt$BookingDetailsComposable$4$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x4

    if-eq v13, v15, :cond_18

    const/4 v2, 0x0

    goto :goto_f

    :cond_18
    const/4 v2, 0x1

    :goto_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v2, :cond_19

    if-ne v15, v14, :cond_1a

    :cond_19
    new-instance v15, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsComposableKt$BookingDetailsComposable$5$1;

    invoke-direct {v15, v1}, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsComposableKt$BookingDetailsComposable$5$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;)V

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v15, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x4

    if-eq v13, v2, :cond_1b

    const/4 v2, 0x0

    goto :goto_10

    :cond_1b
    const/4 v2, 0x1

    :goto_10
    const v17, 0xe000

    move/from16 v24, v2

    and-int v2, v19, v17

    move-object/from16 v17, v3

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x1

    goto :goto_11

    :cond_1c
    const/4 v2, 0x0

    :goto_11
    or-int v2, v24, v2

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1d

    if-ne v3, v14, :cond_1e

    :cond_1d
    new-instance v3, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsComposableKt$BookingDetailsComposable$6$1;

    invoke-direct {v3, v1, v8}, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsComposableKt$BookingDetailsComposable$6$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    move/from16 v18, v2

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v18, :cond_20

    if-ne v2, v14, :cond_1f

    goto :goto_12

    :cond_1f
    move-object/from16 v18, v3

    const/4 v3, 0x1

    goto :goto_13

    :cond_20
    :goto_12
    new-instance v2, Lef;

    move-object/from16 v18, v3

    const/4 v3, 0x1

    invoke-direct {v2, v6, v3}, Lef;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_13
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v16, :cond_22

    if-ne v3, v14, :cond_21

    goto :goto_14

    :cond_21
    move-object/from16 v16, v2

    goto :goto_15

    :cond_22
    :goto_14
    new-instance v3, Lef;

    move-object/from16 v16, v2

    const/4 v2, 0x2

    invoke-direct {v3, v6, v2}, Lef;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_15
    check-cast v3, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v2, v19, 0x9

    and-int/lit16 v2, v2, 0x380

    const/high16 v19, 0x30000000

    or-int v2, v2, v19

    move-object/from16 v19, v21

    move/from16 v21, v2

    move v2, v11

    move-object/from16 v11, v19

    move-object/from16 v19, p3

    move-object/from16 v20, v0

    move-object v0, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v3

    move v3, v13

    move-object/from16 v13, v25

    const/16 v25, 0x1

    invoke-static/range {v10 .. v21}, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsScreenKt;->e(Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v10, v20

    invoke-virtual {v4}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v11

    if-eqz v11, :cond_2a

    const v11, -0xe0b4fc8

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v0, :cond_23

    invoke-static {v10}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v11

    :cond_23
    check-cast v11, Landroidx/compose/material3/SnackbarHostState;

    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v15, 0x4

    if-eq v3, v15, :cond_24

    const/4 v14, 0x0

    goto :goto_16

    :cond_24
    move/from16 v14, v25

    :goto_16
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v13, v14

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_25

    if-ne v14, v0, :cond_26

    :cond_25
    new-instance v14, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsComposableKt$BookingDetailsComposable$9$1;

    const/4 v13, 0x0

    invoke-direct {v14, v1, v11, v6, v13}, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsComposableKt$BookingDetailsComposable$9$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_26
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v12, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v12, Landroidx/compose/material3/ModalBottomSheetProperties;

    xor-int/lit8 v6, v2, 0x1

    invoke-direct {v12, v6, v6}, Landroidx/compose/material3/ModalBottomSheetProperties;-><init>(ZZ)V

    const v6, 0x7f140319

    invoke-static {v10, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    const/4 v15, 0x4

    if-eq v3, v15, :cond_27

    const/4 v14, 0x0

    goto :goto_17

    :cond_27
    move/from16 v14, v25

    :goto_17
    or-int v3, v6, v14

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_29

    if-ne v6, v0, :cond_28

    goto :goto_18

    :cond_28
    const/4 v15, 0x0

    goto :goto_19

    :cond_29
    :goto_18
    new-instance v6, Lhf;

    const/4 v15, 0x0

    invoke-direct {v6, v2, v1, v15}, Lhf;-><init>(ZLjava/lang/Object;I)V

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_19
    move-object v14, v6

    check-cast v14, Lkotlin/jvm/functions/Function0;

    new-instance v0, Lp0;

    move-object v2, v4

    move-object v4, v1

    move-object v1, v11

    move-object v11, v2

    move-object v2, v5

    move-object/from16 v3, v22

    move-object/from16 v6, v23

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lp0;-><init>(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)V

    const v1, -0x682451b6

    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v19

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v0, v0, 0x9

    const/high16 v1, 0x6000000

    or-int v21, v0, v1

    const/16 v22, 0x71

    move-object/from16 v20, v10

    const/4 v10, 0x0

    move-object v6, v14

    const/4 v14, 0x0

    move/from16 v24, v15

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    move-object v0, v13

    move-object v13, v11

    move-object v11, v0

    move-object/from16 v18, v12

    move/from16 v0, v24

    move-object v12, v6

    invoke-static/range {v10 .. v22}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v10, v20

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :cond_2a
    const/4 v0, 0x0

    const v1, -0xded0f79

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1a
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_1b

    :cond_2b
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_2c

    new-instance v0, Lo;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object v2, v7

    move-object v5, v8

    move-object v7, v9

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lo;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlinx/coroutines/flow/StateFlow;Ljava/lang/String;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2c
    return-void
.end method
