.class public abstract Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0008\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;",
        "viewStateAssessment",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
        "contactUsUiModel",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;",
        "calendarViewState",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 40

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x5f623422

    move-object/from16 v3, p13

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x4

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p14, v0

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    move-object/from16 v4, p2

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    const/16 v12, 0x80

    if-eqz v11, :cond_2

    const/16 v11, 0x100

    goto :goto_2

    :cond_2
    move v11, v12

    :goto_2
    or-int/2addr v0, v11

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x800

    goto :goto_3

    :cond_3
    const/16 v11, 0x400

    :goto_3
    or-int/2addr v0, v11

    const/4 v11, 0x0

    if-eqz v8, :cond_4

    new-instance v15, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    invoke-direct {v15, v8}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-object v15, v11

    :goto_4
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/16 v15, 0x4000

    goto :goto_5

    :cond_5
    const/16 v15, 0x2000

    :goto_5
    or-int/2addr v0, v15

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/high16 v15, 0x20000

    goto :goto_6

    :cond_6
    const/high16 v15, 0x10000

    :goto_6
    or-int/2addr v0, v15

    move-object/from16 v15, p6

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/high16 v16, 0x100000

    goto :goto_7

    :cond_7
    const/high16 v16, 0x80000

    :goto_7
    or-int v0, v0, v16

    move-object/from16 v5, p7

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/high16 v17, 0x800000

    goto :goto_8

    :cond_8
    const/high16 v17, 0x400000

    :goto_8
    or-int v0, v0, v17

    move-object/from16 v5, p8

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/high16 v17, 0x4000000

    goto :goto_9

    :cond_9
    const/high16 v17, 0x2000000

    :goto_9
    or-int v0, v0, v17

    move-object/from16 v5, p9

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/high16 v17, 0x20000000

    goto :goto_a

    :cond_a
    const/high16 v17, 0x10000000

    :goto_a
    or-int v0, v0, v17

    move-object/from16 v5, p10

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v17, v6

    :goto_b
    move-object/from16 v5, p11

    goto :goto_c

    :cond_b
    const/16 v17, 0x2

    goto :goto_b

    :goto_c
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v16, 0x20

    goto :goto_d

    :cond_c
    const/16 v16, 0x10

    :goto_d
    or-int v16, v17, v16

    move-object/from16 v5, p12

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v12, 0x100

    :cond_d
    or-int v12, v16, v12

    const v16, 0x12492493

    and-int v10, v0, v16

    const v14, 0x12492492

    const/16 v21, 0x1

    if-ne v10, v14, :cond_f

    and-int/lit16 v10, v12, 0x93

    const/16 v14, 0x92

    if-eq v10, v14, :cond_e

    goto :goto_e

    :cond_e
    const/4 v10, 0x0

    goto :goto_f

    :cond_f
    :goto_e
    move/from16 v10, v21

    :goto_f
    and-int/lit8 v14, v0, 0x1

    invoke-virtual {v13, v14, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_34

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    and-int/lit8 v5, v0, 0xe

    if-eq v5, v6, :cond_10

    const/16 v18, 0x0

    goto :goto_10

    :cond_10
    move/from16 v18, v21

    :goto_10
    or-int v14, v14, v18

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    move/from16 v19, v12

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v14, :cond_11

    if-ne v3, v12, :cond_12

    :cond_11
    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$1$1;

    invoke-direct {v3, v7, v2, v11}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v10, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eq v5, v6, :cond_13

    const/4 v14, 0x0

    goto :goto_11

    :cond_13
    move/from16 v14, v21

    :goto_11
    or-int/2addr v3, v14

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v3, :cond_14

    if-ne v14, v12, :cond_15

    :cond_14
    new-instance v14, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$2$1;

    invoke-direct {v14, v7, v2, v11}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v10, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v22, 0xe000

    and-int v3, v0, v22

    const/16 v14, 0x4000

    if-ne v3, v14, :cond_16

    move/from16 v3, v21

    goto :goto_12

    :cond_16
    const/4 v3, 0x0

    :goto_12
    if-eq v5, v6, :cond_17

    const/4 v14, 0x0

    goto :goto_13

    :cond_17
    move/from16 v14, v21

    :goto_13
    or-int/2addr v3, v14

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v3, :cond_18

    if-ne v14, v12, :cond_19

    :cond_18
    new-instance v14, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$3$1;

    invoke-direct {v14, v8, v2, v11}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$3$1;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v10, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-static {v3, v13}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v18

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-static {v3, v13}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v20

    move-object v3, v10

    invoke-interface {v2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object v10

    new-instance v23, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v36, 0xfff

    const/16 v37, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v23 .. v37}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v14, 0x0

    const/4 v15, 0x2

    move-object/from16 v24, v12

    const/4 v12, 0x0

    move-object v6, v11

    move/from16 v31, v19

    move-object/from16 v11, v23

    move-object/from16 v38, v24

    invoke-static/range {v10 .. v15}, Landroidx/compose/runtime/SnapshotStateKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v32

    invoke-interface {v4}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;->w3()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v10

    invoke-static {v10, v13}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-static {v12, v11, v13, v6}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v26

    and-int/lit8 v14, v0, 0x70

    const/16 v15, 0x20

    if-eq v14, v15, :cond_1a

    move v15, v12

    goto :goto_14

    :cond_1a
    move/from16 v15, v21

    :goto_14
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v15, v15, v16

    const/4 v11, 0x4

    if-eq v5, v11, :cond_1b

    move v11, v12

    goto :goto_15

    :cond_1b
    move/from16 v11, v21

    :goto_15
    or-int/2addr v11, v15

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v11, :cond_1c

    move-object/from16 v11, v38

    if-ne v15, v11, :cond_1d

    goto :goto_16

    :cond_1c
    move-object/from16 v11, v38

    :goto_16
    new-instance v15, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$4$1;

    invoke-direct {v15, v1, v7, v2, v6}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$4$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v3, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v15, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Context;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v11, :cond_1e

    invoke-static {v13}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v6

    :cond_1e
    check-cast v6, Landroidx/compose/material3/SnackbarHostState;

    const/16 v12, 0x20

    if-eq v14, v12, :cond_1f

    const/4 v12, 0x0

    goto :goto_17

    :cond_1f
    move/from16 v12, v21

    :goto_17
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v12, v12, v16

    move-object/from16 v16, v15

    const/4 v15, 0x4

    if-eq v5, v15, :cond_20

    const/16 v19, 0x0

    goto :goto_18

    :cond_20
    move/from16 v19, v21

    :goto_18
    or-int v12, v12, v19

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v12, :cond_21

    if-ne v15, v11, :cond_22

    :cond_21
    move v12, v0

    goto :goto_19

    :cond_22
    move/from16 v39, v5

    move-object v1, v6

    const/4 v12, 0x0

    move v6, v0

    move-object v0, v15

    move-object v15, v3

    goto :goto_1a

    :goto_19
    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;

    move v15, v5

    const/4 v5, 0x0

    move-object v4, v2

    move-object v2, v6

    move v6, v12

    move/from16 v39, v15

    const/4 v12, 0x0

    move-object v15, v3

    move-object/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v1, v2

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1a
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v15, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->c:Z

    const/16 v2, 0x15

    if-eqz v0, :cond_23

    const v0, 0x1b1aaad4

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v0, v6, 0xc

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v0, v0, 0x6

    invoke-static {v1, v9, v13, v0}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailErrorScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v0, v2

    move-object v2, v11

    move v3, v12

    const/4 v1, 0x7

    const/4 v7, 0x0

    goto/16 :goto_26

    :cond_23
    const v0, 0x1b1d6834

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;

    and-int/lit16 v0, v6, 0x380

    const/16 v3, 0x100

    if-eq v0, v3, :cond_24

    move v5, v12

    goto :goto_1b

    :cond_24
    move/from16 v5, v21

    :goto_1b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v5, :cond_25

    if-ne v4, v11, :cond_26

    :cond_25
    move v4, v14

    goto :goto_1c

    :cond_26
    move v5, v14

    move-object v14, v4

    move v4, v5

    const/4 v5, 0x4

    goto :goto_1d

    :goto_1c
    new-instance v14, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$6$1;

    const-string v19, "getAvailableDates(Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V"

    const/16 v20, 0x0

    const/4 v15, 0x3

    const-class v17, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    const-string v18, "getAvailableDates"

    move-object/from16 v16, p2

    const/4 v5, 0x4

    invoke-direct/range {v14 .. v20}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1d
    check-cast v14, Lkotlin/reflect/KFunction;

    move-object/from16 v29, v14

    check-cast v29, Lkotlin/jvm/functions/Function3;

    if-eq v0, v3, :cond_27

    move v0, v12

    goto :goto_1e

    :cond_27
    move/from16 v0, v21

    :goto_1e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_28

    if-ne v3, v11, :cond_29

    :cond_28
    new-instance v14, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$7$1;

    const-string v19, "getAvailableTimeSlots(Ljava/time/LocalDate;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/util/List;)V"

    const/16 v20, 0x0

    const/4 v15, 0x3

    const-class v17, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    const-string v18, "getAvailableTimeSlots"

    move-object/from16 v16, p2

    invoke-direct/range {v14 .. v20}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v14

    :cond_29
    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function3;

    const/16 v15, 0x20

    if-eq v4, v15, :cond_2a

    move v0, v12

    goto :goto_1f

    :cond_2a
    move/from16 v0, v21

    :goto_1f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_2c

    if-ne v3, v11, :cond_2b

    goto :goto_20

    :cond_2b
    move-object/from16 v17, v1

    move v15, v2

    move v12, v5

    move/from16 v16, v6

    const/4 v7, 0x0

    goto :goto_21

    :cond_2c
    :goto_20
    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$8$1;

    move v15, v5

    const-string v5, "fetchSelectedAddress(Ljava/lang/String;Ljava/lang/String;)V"

    move v3, v6

    const/4 v6, 0x0

    move-object v4, v1

    const/4 v1, 0x2

    move/from16 v16, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-object/from16 v17, v4

    const-string v4, "fetchSelectedAddress"

    move v12, v15

    const/4 v7, 0x0

    move v15, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_21
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object/from16 v19, v3

    check-cast v19, Lkotlin/jvm/functions/Function2;

    move/from16 v0, v39

    if-eq v0, v12, :cond_2d

    const/4 v5, 0x0

    goto :goto_22

    :cond_2d
    move/from16 v5, v21

    :goto_22
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v5, :cond_2e

    if-ne v1, v11, :cond_2f

    :cond_2e
    move/from16 v39, v0

    goto :goto_23

    :cond_2f
    move/from16 p13, v15

    move v15, v0

    goto :goto_24

    :goto_23
    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$9$1;

    const-string v5, "rescheduleAppointment(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;

    const-string v4, "rescheduleAppointment"

    move-object/from16 v2, p0

    move/from16 p13, v15

    move/from16 v15, v39

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_24
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object/from16 v20, v1

    check-cast v20, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {v32 .. v32}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    if-eq v15, v12, :cond_30

    const/4 v5, 0x0

    goto :goto_25

    :cond_30
    move/from16 v5, v21

    :goto_25
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_31

    if-ne v0, v11, :cond_32

    :cond_31
    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$10$1;

    const-string v5, "sendTrackingHit(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;

    const-string v4, "sendTrackingHit"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_32
    check-cast v0, Lkotlin/reflect/KFunction;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v1, v16, 0x6

    const/high16 v2, 0x1c00000

    and-int/2addr v2, v1

    or-int/lit16 v2, v2, 0x180

    const/high16 v3, 0xe000000

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    const/high16 v3, 0x70000000

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    shr-int/lit8 v2, v31, 0x3

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v3, v16, 0x12

    and-int/lit16 v4, v3, 0x380

    or-int/2addr v2, v4

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v2, v3

    shl-int/lit8 v3, v31, 0xc

    and-int v4, v3, v22

    or-int/2addr v2, v4

    const/high16 v4, 0x380000

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    sget v3, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v3, v3, 0x15

    or-int v30, v2, v3

    move-object/from16 v18, p7

    move-object/from16 v21, p8

    move-object/from16 v22, p9

    move-object/from16 v25, p12

    move-object/from16 v16, v9

    move-object v12, v10

    move-object v2, v11

    move-object/from16 v11, v17

    move-object/from16 v15, v19

    move-object/from16 v24, v23

    move-object/from16 v9, v27

    move-object/from16 v10, v28

    const/4 v3, 0x0

    move-object/from16 v17, p6

    move-object/from16 v23, p10

    move-object/from16 v19, p11

    move-object/from16 v27, v0

    move-object/from16 v28, v13

    move-object/from16 v13, v29

    move/from16 v0, p13

    move/from16 v29, v1

    const/4 v1, 0x7

    invoke-static/range {v9 .. v30}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailScreenKt;->d(Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v13, v28

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_26
    invoke-interface/range {v32 .. v32}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-static {v3, v1, v13, v7}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v11

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_33

    new-instance v1, Lwq0;

    invoke-direct {v1, v0}, Lwq0;-><init>(I)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_33
    check-cast v1, Lkotlin/jvm/functions/Function0;

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v2, v0, 0x3

    or-int/lit16 v2, v2, 0x6000

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v2

    shl-int/lit8 v2, v31, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int v15, v0, v2

    move-object/from16 v12, p12

    move-object v14, v13

    move-object/from16 v10, v26

    move-object v13, v1

    invoke-static/range {v9 .. v15}, Lcom/vuitton/android/presentation/contact/compose/ContactUsBottomSheetKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v13, v14

    goto :goto_27

    :cond_34
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_27
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_35

    new-instance v0, Lgs0;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p14

    move-object v5, v8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v14}, Lgs0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_35
    return-void
.end method
