.class public abstract Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0008\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Landroidx/compose/runtime/Composer;I)V
    .locals 45

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v14, p3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x25fa963a

    move-object/from16 v3, p12

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    const/4 v15, 0x4

    if-eqz v0, :cond_0

    move v0, v15

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    or-int v0, p13, v0

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    const/16 v8, 0x100

    if-eqz v4, :cond_2

    move v4, v8

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x800

    goto :goto_3

    :cond_3
    const/16 v4, 0x400

    :goto_3
    or-int/2addr v0, v4

    move-object/from16 v4, p4

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x4000

    goto :goto_4

    :cond_4
    const/16 v9, 0x2000

    :goto_4
    or-int/2addr v0, v9

    move-object/from16 v9, p5

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/high16 v10, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v10, 0x10000

    :goto_5
    or-int/2addr v0, v10

    move-object/from16 v10, p6

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/high16 v12, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v12, 0x80000

    :goto_6
    or-int/2addr v0, v12

    move-object/from16 v12, p7

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/high16 v13, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v13, 0x400000

    :goto_7
    or-int/2addr v0, v13

    move-object/from16 v13, p8

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/high16 v16, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v16, 0x2000000

    :goto_8
    or-int v0, v0, v16

    move-object/from16 v5, p9

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/high16 v16, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v16, 0x10000000

    :goto_9
    or-int v0, v0, v16

    move-object/from16 v5, p10

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    move v3, v15

    :cond_a
    move-object/from16 v5, p11

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x20

    goto :goto_a

    :cond_b
    const/16 v16, 0x10

    :goto_a
    or-int v29, v3, v16

    const v3, 0x12492493

    and-int/2addr v3, v0

    const v6, 0x12492492

    if-ne v3, v6, :cond_d

    and-int/lit8 v3, v29, 0x13

    const/16 v6, 0x12

    if-eq v3, v6, :cond_c

    goto :goto_b

    :cond_c
    const/4 v3, 0x0

    goto :goto_c

    :cond_d
    :goto_b
    const/4 v3, 0x1

    :goto_c
    and-int/lit8 v6, v0, 0x1

    invoke-virtual {v11, v6, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_2c

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit16 v3, v0, 0x380

    if-ne v3, v8, :cond_e

    const/16 v17, 0x1

    goto :goto_d

    :cond_e
    const/16 v17, 0x0

    :goto_d
    and-int/lit8 v5, v0, 0xe

    if-eq v5, v15, :cond_f

    const/16 v19, 0x0

    goto :goto_e

    :cond_f
    const/16 v19, 0x1

    :goto_e
    or-int v17, v17, v19

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v10, 0x0

    if-nez v17, :cond_10

    if-ne v8, v15, :cond_11

    :cond_10
    new-instance v8, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$1$1;

    invoke-direct {v8, v7, v2, v10}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v6, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v8

    invoke-static {v8, v11}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v17

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v8

    invoke-static {v8, v11}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v20

    invoke-interface {v2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

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

    const/4 v12, 0x0

    const/4 v13, 0x2

    move-object/from16 v21, v10

    const/4 v10, 0x0

    move/from16 v19, v0

    move-object/from16 v0, v21

    move-object/from16 v9, v30

    invoke-static/range {v8 .. v13}, Landroidx/compose/runtime/SnapshotStateKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v30

    invoke-interface/range {p11 .. p11}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;->w3()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v8

    invoke-static {v8, v11}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-static {v10, v9, v11, v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v25

    and-int/lit8 v12, v19, 0x70

    const/16 v13, 0x20

    if-eq v12, v13, :cond_12

    move v13, v10

    :goto_f
    const/16 v9, 0x100

    goto :goto_10

    :cond_12
    const/4 v13, 0x1

    goto :goto_f

    :goto_10
    if-ne v3, v9, :cond_13

    const/4 v3, 0x1

    goto :goto_11

    :cond_13
    move v3, v10

    :goto_11
    or-int/2addr v3, v13

    const/4 v9, 0x4

    if-eq v5, v9, :cond_14

    move v9, v10

    goto :goto_12

    :cond_14
    const/4 v9, 0x1

    :goto_12
    or-int/2addr v3, v9

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_15

    if-ne v9, v15, :cond_16

    :cond_15
    new-instance v9, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$2$1;

    invoke-direct {v9, v1, v7, v2, v0}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v6, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v15, :cond_17

    invoke-static {v11}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v9

    :cond_17
    check-cast v9, Landroidx/compose/material3/SnackbarHostState;

    const/16 v13, 0x20

    if-eq v12, v13, :cond_18

    move v12, v10

    goto :goto_13

    :cond_18
    const/4 v12, 0x1

    :goto_13
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    const/4 v13, 0x4

    if-eq v5, v13, :cond_19

    move v13, v10

    goto :goto_14

    :cond_19
    const/4 v13, 0x1

    :goto_14
    or-int/2addr v12, v13

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_1a

    if-ne v13, v15, :cond_1b

    :cond_1a
    move-object/from16 v21, v0

    goto :goto_15

    :cond_1b
    move-object v12, v13

    move-object v13, v0

    move-object v0, v12

    move v12, v10

    move-object v10, v9

    move v9, v12

    move v12, v5

    move/from16 v26, v19

    goto :goto_16

    :goto_15
    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$3$1;

    move v12, v5

    const/4 v5, 0x0

    move-object v4, v2

    move-object v2, v9

    move v9, v10

    move/from16 v10, v19

    move-object/from16 v13, v21

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;Lkotlin/coroutines/Continuation;)V

    move/from16 v26, v10

    move-object v10, v2

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_16
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v6, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->c:Z

    if-eqz v0, :cond_1c

    const v0, 0x5c179f0c

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v0, v26, 0x6

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v0, v0, 0x6

    invoke-static {v10, v14, v11, v0}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailErrorScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v2, p0

    move v6, v9

    move v0, v12

    move-object v4, v13

    move-object v3, v15

    const/4 v1, 0x7

    const/4 v5, 0x4

    goto/16 :goto_1d

    :cond_1c
    const v0, 0x5c1a7827

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;

    and-int/lit8 v0, v29, 0x70

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1d

    move v5, v9

    goto :goto_17

    :cond_1d
    const/4 v5, 0x1

    :goto_17
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v5, :cond_1e

    if-ne v1, v15, :cond_1f

    :cond_1e
    new-instance v16, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$4$1;

    const-string v21, "getAvailableDates(Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V"

    const/16 v22, 0x0

    const/16 v17, 0x3

    const-class v19, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    const-string v20, "getAvailableDates"

    move-object/from16 v18, p11

    invoke-direct/range {v16 .. v22}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v1, v16

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    move-object/from16 v31, v1

    check-cast v31, Lkotlin/reflect/KFunction;

    const/16 v1, 0x20

    if-eq v0, v1, :cond_20

    move v5, v9

    goto :goto_18

    :cond_20
    const/4 v5, 0x1

    :goto_18
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_21

    if-ne v0, v15, :cond_22

    :cond_21
    new-instance v16, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$5$1;

    const-string v21, "getAvailableTimeSlots(Ljava/time/LocalDate;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/util/List;)V"

    const/16 v22, 0x0

    const/16 v17, 0x3

    const-class v19, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    const-string v20, "getAvailableTimeSlots"

    move-object/from16 v18, p11

    invoke-direct/range {v16 .. v22}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function3;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_23

    move v5, v9

    goto :goto_19

    :cond_23
    const/4 v5, 0x1

    :goto_19
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_24

    if-ne v0, v15, :cond_25

    :cond_24
    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$6$1;

    const-string v5, "rescheduleAppointment(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    const-string v4, "rescheduleAppointment"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    move-object/from16 v17, v0

    check-cast v17, Lkotlin/reflect/KFunction;

    invoke-interface/range {v30 .. v30}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_26

    move v5, v9

    goto :goto_1a

    :cond_26
    const/4 v5, 0x1

    :goto_1a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v5, :cond_27

    if-ne v1, v15, :cond_28

    :cond_27
    move/from16 v23, v0

    goto :goto_1b

    :cond_28
    move-object/from16 v2, p0

    move/from16 v23, v0

    goto :goto_1c

    :goto_1b
    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$7$1;

    const-string v5, "sendTrackingHit(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    const-string v4, "sendTrackingHit"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_1c
    check-cast v1, Lkotlin/reflect/KFunction;

    check-cast v31, Lkotlin/jvm/functions/Function3;

    move-object/from16 v18, v17

    check-cast v18, Lkotlin/jvm/functions/Function1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v0, v26, 0x9

    const/high16 v3, 0x380000

    and-int v4, v0, v3

    or-int/lit16 v4, v4, 0x180

    const/high16 v5, 0x1c00000

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    const/high16 v5, 0xe000000

    and-int/2addr v0, v5

    or-int/2addr v0, v4

    const/high16 v4, 0x70000000

    and-int v4, v26, v4

    or-int/2addr v0, v4

    shr-int/lit8 v4, v26, 0xf

    and-int/lit16 v4, v4, 0x1ff0

    shl-int/lit8 v5, v29, 0x12

    and-int/2addr v3, v5

    or-int/2addr v3, v4

    sget v4, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v3, v4

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move-object/from16 v21, p8

    move-object/from16 v17, p9

    move-object/from16 v24, p10

    move v6, v9

    move-object/from16 v26, v11

    move-object v4, v13

    move-object/from16 v13, v16

    move/from16 v5, v23

    move-object/from16 v9, v28

    move-object/from16 v16, p5

    move-object/from16 v23, v1

    move/from16 v28, v3

    move-object v11, v8

    move-object v3, v15

    move-object/from16 v8, v27

    const/4 v1, 0x7

    move-object/from16 v15, p4

    move/from16 v27, v0

    move v0, v12

    move-object/from16 v12, v31

    invoke-static/range {v8 .. v28}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->j(Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v11, v26

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1d
    invoke-interface/range {v30 .. v30}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-static {v6, v1, v11, v4}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v10

    if-eq v0, v5, :cond_29

    move v5, v6

    goto :goto_1e

    :cond_29
    const/4 v5, 0x1

    :goto_1e
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_2a

    if-ne v0, v3, :cond_2b

    :cond_2a
    new-instance v0, Lpr0;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lpr0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2b
    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function0;

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v1, v0, 0x3

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v1

    shl-int/lit8 v1, v29, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int v14, v0, v1

    move-object v13, v11

    move-object/from16 v9, v25

    move-object/from16 v11, p10

    invoke-static/range {v8 .. v14}, Lcom/vuitton/android/presentation/contact/compose/ContactUsBottomSheetKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v11, v13

    goto :goto_1f

    :cond_2c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1f
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_2d

    new-instance v0, Lle;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    move-object v1, v2

    move-object v3, v7

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v13}, Lle;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;I)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2d
    return-void
.end method
