.class public abstract Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0008\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00068\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;",
        "datePickerViewState",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
        "contactUsUiModel",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 48

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v14, p2

    move-object/from16 v8, p5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x13b4f8a1

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x4

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p9, v0

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v0, v3

    move-object/from16 v11, p3

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    goto :goto_3

    :cond_3
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v0, v3

    move-object/from16 v12, p4

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x4000

    goto :goto_4

    :cond_4
    const/16 v3, 0x2000

    :goto_4
    or-int/2addr v0, v3

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v3, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v3, 0x10000

    :goto_5
    or-int/2addr v0, v3

    move-object/from16 v3, p6

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/high16 v5, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v5, 0x80000

    :goto_6
    or-int/2addr v0, v5

    move-object/from16 v5, p7

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/high16 v15, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v15, 0x400000

    :goto_7
    or-int/2addr v0, v15

    const v15, 0x492493

    and-int/2addr v15, v0

    const v13, 0x492492

    const/4 v1, 0x0

    if-eq v15, v13, :cond_8

    const/4 v13, 0x1

    goto :goto_8

    :cond_8
    move v13, v1

    :goto_8
    and-int/lit8 v15, v0, 0x1

    invoke-virtual {v6, v15, v13}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v13

    if-eqz v13, :cond_58

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v13, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v15, v0, 0xe

    if-eq v15, v9, :cond_9

    move/from16 v16, v1

    goto :goto_9

    :cond_9
    const/16 v16, 0x1

    :goto_9
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v4, 0x0

    if-nez v16, :cond_a

    if-ne v10, v9, :cond_b

    :cond_a
    new-instance v10, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$1$1;

    invoke-direct {v10, v2, v4}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v13, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    move-object/from16 v26, v4

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_c

    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v4, v6}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v27, v4

    check-cast v27, Lkotlinx/coroutines/CoroutineScope;

    new-array v4, v1, [Landroidx/navigation/Navigator;

    invoke-static {v4, v6}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v4

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v6}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    move-object/from16 v29, v1

    invoke-interface {v7}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;->w3()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v6}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    move/from16 v16, v15

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object v15

    new-instance v30, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v43, 0xfff

    const/16 v44, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-direct/range {v30 .. v44}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v17, 0x0

    move-object/from16 v18, v6

    move/from16 v6, v16

    move-object/from16 v16, v30

    invoke-static/range {v15 .. v20}, Landroidx/compose/runtime/SnapshotStateKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v37

    move-object/from16 v15, v18

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_d

    invoke-static/range {v26 .. v26}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v3, Landroidx/compose/runtime/MutableState;

    const/4 v11, 0x7

    move-object/from16 v5, v26

    const/4 v12, 0x0

    invoke-static {v12, v11, v15, v5}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v16

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v9, :cond_e

    new-instance v5, Lj6;

    const/16 v12, 0x17

    invoke-direct {v5, v12, v3}, Lj6;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/16 v12, 0x30

    const/4 v11, 0x5

    invoke-static {v12, v11, v15, v5}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v12

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    and-int/lit16 v11, v0, 0x380

    move/from16 v19, v0

    const/16 v0, 0x100

    if-ne v11, v0, :cond_f

    const/4 v0, 0x1

    goto :goto_a

    :cond_f
    const/4 v0, 0x0

    :goto_a
    or-int/2addr v0, v5

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_11

    if-ne v5, v9, :cond_10

    goto :goto_b

    :cond_10
    const/4 v0, 0x0

    goto :goto_c

    :cond_11
    :goto_b
    new-instance v5, Lju;

    const/4 v0, 0x0

    invoke-direct {v5, v12, v14, v3, v0}, Lju;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_c
    move-object v11, v5

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_12

    if-ne v0, v9, :cond_13

    :cond_12
    new-instance v0, Ln8;

    const/4 v5, 0x2

    invoke-direct {v0, v12, v3, v5}, Ln8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v0, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v5, v19, 0x70

    move-object/from16 v20, v3

    const/16 v3, 0x20

    if-eq v5, v3, :cond_14

    const/16 v22, 0x0

    :goto_d
    const/4 v3, 0x4

    goto :goto_e

    :cond_14
    const/16 v22, 0x1

    goto :goto_d

    :goto_e
    if-eq v6, v3, :cond_15

    const/4 v3, 0x0

    goto :goto_f

    :cond_15
    const/4 v3, 0x1

    :goto_f
    or-int v3, v22, v3

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v22

    or-int v3, v3, v22

    move/from16 v22, v3

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v22, :cond_17

    if-ne v3, v9, :cond_16

    goto :goto_10

    :cond_16
    move-object/from16 v22, v12

    goto :goto_11

    :cond_17
    :goto_10
    new-instance v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$2$1;

    move-object/from16 v22, v12

    const/4 v12, 0x0

    invoke-direct {v3, v7, v2, v11, v12}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_11
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v13, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_18

    invoke-static {v15}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v3

    :cond_18
    move-object v12, v3

    check-cast v12, Landroidx/compose/material3/SnackbarHostState;

    const/16 v3, 0x20

    if-eq v5, v3, :cond_19

    const/4 v3, 0x0

    goto :goto_12

    :cond_19
    const/4 v3, 0x1

    :goto_12
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    or-int v3, v3, v25

    move/from16 v25, v3

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v25, :cond_1b

    if-ne v3, v9, :cond_1a

    goto :goto_13

    :cond_1a
    move/from16 v25, v5

    goto :goto_14

    :cond_1b
    :goto_13
    new-instance v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$3$1;

    move/from16 v25, v5

    const/4 v5, 0x0

    invoke-direct {v3, v7, v12, v10, v5}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_14
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v13, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_1c

    invoke-static {v15}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v3

    :cond_1c
    check-cast v3, Landroidx/compose/material3/SnackbarHostState;

    const/4 v5, 0x4

    if-eq v6, v5, :cond_1d

    const/4 v5, 0x0

    goto :goto_15

    :cond_1d
    const/4 v5, 0x1

    :goto_15
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    or-int v5, v5, v30

    move/from16 v30, v5

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v30, :cond_1f

    if-ne v5, v9, :cond_1e

    goto :goto_16

    :cond_1e
    move-object/from16 v30, v11

    goto :goto_17

    :cond_1f
    :goto_16
    new-instance v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$4$1;

    move-object/from16 v30, v11

    const/4 v11, 0x0

    invoke-direct {v5, v2, v3, v10, v11}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$4$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_17
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v13, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v5, 0x4

    if-eq v6, v5, :cond_20

    const/4 v5, 0x0

    goto :goto_18

    :cond_20
    const/4 v5, 0x1

    :goto_18
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v5, v10

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v5, :cond_21

    if-ne v10, v9, :cond_22

    :cond_21
    new-instance v10, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$5$1;

    const/4 v5, 0x0

    invoke-direct {v10, v2, v4, v5}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$5$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;Landroidx/navigation/NavHostController;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v13, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->f:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;->a:Ljava/lang/String;

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x4

    if-eq v6, v11, :cond_23

    const/4 v11, 0x0

    goto :goto_19

    :cond_23
    const/4 v11, 0x1

    :goto_19
    or-int/2addr v10, v11

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_24

    if-ne v11, v9, :cond_25

    :cond_24
    new-instance v11, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$6$1;

    const/4 v10, 0x0

    invoke-direct {v11, v2, v1, v10}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$6$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v5, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v5, :cond_27

    if-ne v10, v9, :cond_26

    goto :goto_1a

    :cond_26
    const/4 v5, 0x0

    goto :goto_1b

    :cond_27
    :goto_1a
    new-instance v10, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$7$1;

    const/4 v5, 0x0

    invoke-direct {v10, v5, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$7$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1b
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v13, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    invoke-interface/range {v37 .. v37}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/4 v13, 0x4

    if-eq v6, v13, :cond_28

    const/4 v13, 0x0

    goto :goto_1c

    :cond_28
    const/4 v13, 0x1

    :goto_1c
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v13, :cond_29

    if-ne v5, v9, :cond_2a

    :cond_29
    move-object v5, v0

    goto :goto_1d

    :cond_2a
    move/from16 v13, v25

    move-object/from16 v25, v11

    move v11, v13

    move-object/from16 v38, v1

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    move/from16 v45, v6

    move-object/from16 v39, v20

    move-object/from16 v13, v29

    move-object/from16 v20, v10

    move-object v10, v0

    goto :goto_1e

    :goto_1d
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$8$1;

    move-object v13, v5

    const-string v5, "sendRepairData()V"

    move/from16 v31, v6

    const/4 v6, 0x0

    move-object/from16 v32, v1

    const/4 v1, 0x0

    move-object/from16 v33, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    move-object/from16 v34, v4

    const-string v4, "sendRepairData"

    move/from16 v38, v25

    move-object/from16 v25, v11

    move/from16 v11, v38

    move-object/from16 v39, v20

    move/from16 v45, v31

    move-object/from16 v38, v32

    move-object/from16 v20, v10

    move-object v10, v13

    move-object/from16 v13, v29

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :goto_1e
    check-cast v5, Lkotlin/reflect/KFunction;

    move-object/from16 v26, v5

    check-cast v26, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x20

    if-eq v11, v3, :cond_2b

    const/4 v1, 0x0

    goto :goto_1f

    :cond_2b
    const/4 v1, 0x1

    :goto_1f
    or-int/2addr v0, v1

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2c

    if-ne v1, v9, :cond_2d

    :cond_2c
    new-instance v1, Lku;

    const/4 v0, 0x0

    invoke-direct {v1, v10, v7, v13, v0}, Lku;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2d
    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function0;

    move/from16 v0, v45

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2e

    const/4 v1, 0x0

    goto :goto_20

    :cond_2e
    const/4 v1, 0x1

    :goto_20
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_2f

    if-ne v2, v9, :cond_30

    :cond_2f
    move v6, v0

    goto :goto_21

    :cond_30
    move v7, v0

    goto :goto_22

    :goto_21
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$10$1;

    const-string v5, "setEditStep(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V"

    move/from16 v45, v6

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    const-string v4, "setEditStep"

    move-object/from16 v2, p0

    move/from16 v7, v45

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_22
    check-cast v2, Lkotlin/reflect/KFunction;

    move-object/from16 v21, v2

    check-cast v21, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    if-eq v7, v5, :cond_31

    const/4 v1, 0x0

    goto :goto_23

    :cond_31
    const/4 v1, 0x1

    :goto_23
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_32

    if-ne v0, v9, :cond_33

    :cond_32
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$11$1;

    const-string v5, "goToNextStep(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    const-string v4, "goToNextStep"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_33
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object/from16 v29, v0

    check-cast v29, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    if-eq v7, v5, :cond_34

    const/4 v1, 0x0

    goto :goto_24

    :cond_34
    const/4 v1, 0x1

    :goto_24
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_35

    if-ne v0, v9, :cond_36

    :cond_35
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$12$1;

    const-string v5, "setContactMethod(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    const-string v4, "setContactMethod"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_36
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object/from16 v31, v0

    check-cast v31, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    if-eq v7, v5, :cond_37

    const/4 v1, 0x0

    goto :goto_25

    :cond_37
    const/4 v1, 0x1

    :goto_25
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_38

    if-ne v0, v9, :cond_39

    :cond_38
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$13$1;

    const-string v5, "setPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x3

    const-class v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    const-string v4, "setPhoneNumber"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_39
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object/from16 v32, v0

    check-cast v32, Lkotlin/jvm/functions/Function3;

    const/4 v5, 0x4

    if-eq v7, v5, :cond_3a

    const/4 v1, 0x0

    goto :goto_26

    :cond_3a
    const/4 v1, 0x1

    :goto_26
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_3c

    if-ne v0, v9, :cond_3b

    goto :goto_27

    :cond_3b
    move-object/from16 v2, p0

    goto :goto_28

    :cond_3c
    :goto_27
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$14$1;

    const-string v5, "setProductDescription(Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    const-string v4, "setProductDescription"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_28
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object/from16 v35, v0

    check-cast v35, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    if-eq v7, v5, :cond_3d

    const/4 v1, 0x0

    goto :goto_29

    :cond_3d
    const/4 v1, 0x1

    :goto_29
    const/high16 v0, 0x70000

    and-int v0, v19, v0

    const/high16 v3, 0x20000

    if-ne v0, v3, :cond_3e

    const/4 v0, 0x1

    goto :goto_2a

    :cond_3e
    const/4 v0, 0x0

    :goto_2a
    or-int/2addr v0, v1

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3f

    if-ne v1, v9, :cond_40

    :cond_3f
    new-instance v1, Lvg;

    const/16 v0, 0x1a

    invoke-direct {v1, v2, v8, v0}, Lvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_40
    move-object/from16 v36, v1

    check-cast v36, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x6

    if-nez v0, :cond_41

    if-ne v1, v9, :cond_42

    :cond_41
    new-instance v1, Lk0;

    invoke-direct {v1, v10, v3}, Lk0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_42
    move-object/from16 v40, v1

    check-cast v40, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    if-eq v7, v5, :cond_43

    const/4 v1, 0x0

    goto :goto_2b

    :cond_43
    const/4 v1, 0x1

    :goto_2b
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_44

    if-ne v1, v9, :cond_45

    :cond_44
    new-instance v1, Ldt;

    const/4 v5, 0x4

    invoke-direct {v1, v2, v10, v5}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_45
    move-object/from16 v41, v1

    check-cast v41, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_46

    if-ne v1, v9, :cond_47

    :cond_46
    new-instance v1, Lu8;

    const/16 v0, 0xe

    invoke-direct {v1, v10, v0}, Lu8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_47
    move-object/from16 v42, v1

    check-cast v42, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x4

    if-eq v7, v5, :cond_48

    const/4 v1, 0x0

    goto :goto_2c

    :cond_48
    const/4 v1, 0x1

    :goto_2c
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_4a

    if-ne v0, v9, :cond_49

    goto :goto_2d

    :cond_49
    const/4 v1, 0x0

    goto :goto_2e

    :cond_4a
    :goto_2d
    new-instance v0, Lgu;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lgu;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_2e
    move-object/from16 v28, v0

    check-cast v28, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_4b

    if-ne v4, v9, :cond_4c

    :cond_4b
    new-instance v4, Lu8;

    const/16 v0, 0xf

    invoke-direct {v4, v10, v0}, Lu8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4c
    move-object v10, v4

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x4

    if-eq v7, v5, :cond_4d

    move v0, v1

    goto :goto_2f

    :cond_4d
    const/4 v0, 0x1

    :goto_2f
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_4f

    if-ne v4, v9, :cond_4e

    goto :goto_30

    :cond_4e
    move/from16 v44, v1

    move/from16 v43, v3

    goto :goto_31

    :cond_4f
    :goto_30
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$21$1;

    const-string v5, "updateZipPostalCode(Ljava/lang/String;)V"

    const/4 v6, 0x0

    move v4, v1

    const/4 v1, 0x1

    move/from16 v43, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    move/from16 v44, v4

    const-string v4, "updateZipPostalCode"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_31
    check-cast v4, Lkotlin/reflect/KFunction;

    move-object/from16 v45, v4

    check-cast v45, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-eq v7, v0, :cond_50

    move/from16 v1, v44

    goto :goto_32

    :cond_50
    const/4 v1, 0x1

    :goto_32
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_51

    if-ne v2, v9, :cond_52

    :cond_51
    move/from16 v24, v0

    goto :goto_33

    :cond_52
    move/from16 v24, v0

    goto :goto_34

    :goto_33
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$22$1;

    const-string v5, "onFieldUpdated(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    const-string v4, "onFieldUpdated"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_34
    check-cast v2, Lkotlin/reflect/KFunction;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    sget v46, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v0, v46, 0xf

    or-int/lit16 v0, v0, 0x180

    shl-int/lit8 v1, v19, 0xc

    const/high16 v3, 0x380000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, v19, 0xf

    const/high16 v3, 0x7e000000

    and-int/2addr v1, v3

    shr-int/lit8 v3, v19, 0x9

    and-int/lit16 v3, v3, 0x1c00

    move-object/from16 v47, v9

    move-object v5, v13

    move-object/from16 v13, v16

    move-object/from16 v9, v20

    move-object/from16 v17, v21

    move-object/from16 v4, v22

    move-object/from16 v18, v29

    move-object/from16 v6, v30

    move-object/from16 v19, v31

    move-object/from16 v20, v32

    move-object/from16 v8, v34

    move-object/from16 v21, v35

    move-object/from16 v22, v36

    move-object/from16 v23, v40

    move-object/from16 v24, v41

    move-object/from16 v30, v45

    move-object/from16 v31, p6

    move/from16 v34, v0

    move/from16 v35, v1

    move-object/from16 v32, v2

    move/from16 v36, v3

    move-object/from16 v29, v10

    move-object/from16 v16, v11

    move-object v2, v12

    move-object/from16 v12, v25

    move-object/from16 v11, v27

    move-object/from16 v10, v33

    move-object/from16 v25, v42

    move/from16 v1, v44

    const/4 v0, 0x1

    const/4 v3, 0x7

    move-object/from16 v27, p4

    move-object/from16 v33, v15

    move-object/from16 v15, v26

    move-object/from16 v26, p3

    invoke-static/range {v8 .. v36}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormScreenKt;->b(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    move-object v14, v13

    move-object/from16 v11, v33

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    iget-boolean v8, v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->g:Z

    if-eqz v8, :cond_53

    const v8, 0x512beaff

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v1, v11, v1, v0}, Lcom/vuitton/android/designkit/components/components/LVLoadingOverlayKt;->a(ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_35

    :cond_53
    const v8, 0x512c6aa1

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_35
    invoke-virtual {v4}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v8

    if-eqz v8, :cond_54

    const v8, 0x512e919b

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v8, 0x7f140319

    invoke-static {v11, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    move/from16 v23, v0

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;

    const/4 v10, 0x0

    move-object/from16 v8, p7

    move/from16 v28, v1

    move/from16 v17, v3

    move v15, v7

    move-object/from16 v9, v38

    move-object/from16 v1, v39

    const/16 v18, 0x5

    move-object/from16 v3, p0

    move-object v7, v4

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SnackbarHostState;Ljava/lang/Object;Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    move-object v1, v0

    move-object v0, v3

    move-object v4, v7

    const v2, -0x4f71ee57

    invoke-static {v2, v1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    shl-int/lit8 v1, v46, 0x9

    const/high16 v2, 0x6000000

    or-int/2addr v1, v2

    const/16 v13, 0xf1

    move-object v2, v12

    move v12, v1

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object/from16 v30, v6

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 p8, v14

    move/from16 v14, v28

    move-object/from16 v3, v30

    invoke-static/range {v1 .. v13}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_36

    :cond_54
    move/from16 v23, v0

    move v15, v7

    move-object/from16 p8, v14

    move-object/from16 v0, p0

    move v14, v1

    const v1, 0x51580a61

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_36
    invoke-interface/range {v37 .. v37}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/4 v3, 0x7

    const/4 v5, 0x0

    invoke-static {v14, v3, v11, v5}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v3

    const/4 v5, 0x4

    if-eq v15, v5, :cond_55

    move v10, v14

    goto :goto_37

    :cond_55
    move/from16 v10, v23

    :goto_37
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v10, :cond_56

    move-object/from16 v4, v47

    if-ne v2, v4, :cond_57

    :cond_56
    new-instance v2, Lgu;

    const/4 v4, 0x5

    invoke-direct {v2, v0, v4}, Lgu;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_57
    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v2, v46, 0x3

    shl-int/lit8 v4, v46, 0x6

    or-int/2addr v2, v4

    or-int v7, v2, v36

    move-object/from16 v4, p6

    move-object/from16 v2, p8

    move-object v6, v11

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/contact/compose/ContactUsBottomSheetKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_38

    :cond_58
    move-object v0, v2

    move-object v11, v6

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_38
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_59

    new-instance v0, Lq8;

    const/16 v10, 0x8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lq8;-><init>(Ljava/lang/Object;Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_59
    return-void
.end method
