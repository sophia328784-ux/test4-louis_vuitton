.class public abstract Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressBffComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0008\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u0004\u0018\u00010\u00068\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;",
        "viewStateAssessment",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
        "contactUsUiModel",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;",
        "currentAction",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x5609d302

    move-object/from16 v3, p9

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p10, v0

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    move-object/from16 v4, p2

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v0, v6

    move-object/from16 v6, p3

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x800

    goto :goto_3

    :cond_3
    const/16 v9, 0x400

    :goto_3
    or-int/2addr v0, v9

    move-object/from16 v15, p4

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x4000

    goto :goto_4

    :cond_4
    const/16 v9, 0x2000

    :goto_4
    or-int/2addr v0, v9

    move-object/from16 v9, p5

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/high16 v10, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v10, 0x10000

    :goto_5
    or-int/2addr v0, v10

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/high16 v10, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v10, 0x80000

    :goto_6
    or-int/2addr v0, v10

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    const/high16 v13, 0x800000

    if-eqz v10, :cond_7

    move v10, v13

    goto :goto_7

    :cond_7
    const/high16 v10, 0x400000

    :goto_7
    or-int/2addr v0, v10

    move-object/from16 v10, p8

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/high16 v14, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v14, 0x2000000

    :goto_8
    or-int/2addr v0, v14

    const v14, 0x2492493

    and-int/2addr v14, v0

    const v11, 0x2492492

    const/16 v21, 0x1

    const/4 v5, 0x0

    if-eq v14, v11, :cond_9

    move/from16 v11, v21

    goto :goto_9

    :cond_9
    move v11, v5

    :goto_9
    and-int/lit8 v14, v0, 0x1

    invoke-virtual {v12, v14, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_20

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v11

    invoke-static {v11, v12}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v17

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v11

    invoke-static {v11, v12}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v18

    invoke-interface {v1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object v9

    new-instance v22, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v35, 0xfff

    const/16 v36, 0x0

    const/16 v23, 0x0

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

    invoke-direct/range {v22 .. v36}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move v11, v13

    const/4 v13, 0x0

    const/4 v14, 0x2

    move/from16 v19, v11

    const/4 v11, 0x0

    move-object/from16 v10, v22

    invoke-static/range {v9 .. v14}, Landroidx/compose/runtime/SnapshotStateKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v22

    const/4 v9, 0x7

    const/4 v10, 0x0

    move-object/from16 v11, v18

    invoke-static {v5, v9, v12, v10}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v18

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->h:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    if-eqz v13, :cond_a

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    goto :goto_a

    :cond_a
    move-object v13, v10

    :goto_a
    invoke-static {v13, v12}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    sget-object v14, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v5, v0, 0xe

    if-eq v5, v3, :cond_b

    const/16 v19, 0x0

    goto :goto_b

    :cond_b
    move/from16 v19, v21

    :goto_b
    and-int/lit8 v9, v0, 0x70

    const/16 v3, 0x20

    if-eq v9, v3, :cond_c

    const/4 v3, 0x0

    goto :goto_c

    :cond_c
    move/from16 v3, v21

    :goto_c
    or-int v3, v19, v3

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    move/from16 v24, v0

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_d

    if-ne v10, v0, :cond_e

    :cond_d
    new-instance v10, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$1$1;

    const/4 v3, 0x0

    invoke-direct {v10, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v14, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/16 v3, 0x20

    if-eq v9, v3, :cond_f

    const/4 v3, 0x0

    goto :goto_d

    :cond_f
    move/from16 v3, v21

    :goto_d
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v3, v10

    const/high16 v25, 0x380000

    and-int v10, v24, v25

    move/from16 v26, v3

    const/high16 v3, 0x100000

    if-ne v10, v3, :cond_10

    move/from16 v3, v21

    goto :goto_e

    :cond_10
    const/4 v3, 0x0

    :goto_e
    or-int v3, v26, v3

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v3, :cond_11

    if-ne v10, v0, :cond_12

    :cond_11
    new-instance v10, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$2$1;

    const/4 v3, 0x0

    invoke-direct {v10, v2, v7, v13, v3}, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v14, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/16 v3, 0x20

    if-eq v9, v3, :cond_13

    const/4 v3, 0x0

    goto :goto_f

    :cond_13
    move/from16 v3, v21

    :goto_f
    const/high16 v10, 0x1c00000

    and-int v10, v24, v10

    const/high16 v13, 0x800000

    if-ne v10, v13, :cond_14

    move/from16 v10, v21

    goto :goto_10

    :cond_14
    const/4 v10, 0x0

    :goto_10
    or-int/2addr v3, v10

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v3, :cond_15

    if-ne v10, v0, :cond_16

    :cond_15
    new-instance v10, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$3$1;

    const/4 v3, 0x0

    invoke-direct {v10, v2, v8, v3}, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v14, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_17

    invoke-static {v12}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v10

    :cond_17
    check-cast v10, Landroidx/compose/material3/SnackbarHostState;

    const/16 v13, 0x20

    if-eq v9, v13, :cond_18

    const/4 v9, 0x0

    goto :goto_11

    :cond_18
    move/from16 v9, v21

    :goto_11
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v9, v13

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v9, :cond_1a

    if-ne v13, v0, :cond_19

    goto :goto_12

    :cond_19
    const/4 v9, 0x0

    goto :goto_13

    :cond_1a
    :goto_12
    new-instance v13, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$4$1;

    const/4 v9, 0x0

    invoke-direct {v13, v2, v10, v3, v9}, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$4$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_13
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v14, v13}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->b:Z

    if-nez v3, :cond_1b

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->b:Z

    if-nez v3, :cond_1b

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->i:Z

    if-eqz v3, :cond_1c

    :cond_1b
    move-object v4, v9

    move-object/from16 v10, v18

    const/4 v3, 0x7

    const/4 v6, 0x0

    goto :goto_14

    :cond_1c
    const v3, -0x611f3bf1

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v16, v13

    check-cast v16, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    shl-int/lit8 v13, v24, 0x3

    and-int/lit16 v14, v13, 0x1c00

    or-int/lit16 v14, v14, 0x180

    const v17, 0xe000

    and-int v17, v13, v17

    or-int v14, v14, v17

    const/high16 v17, 0x70000

    and-int v17, v13, v17

    or-int v14, v14, v17

    and-int v13, v13, v25

    or-int/2addr v13, v14

    const/high16 v14, 0xe000000

    and-int v14, v24, v14

    or-int/2addr v13, v14

    sget v14, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v14, v14, 0x1b

    or-int/2addr v13, v14

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    move-object/from16 v17, p8

    move-object/from16 v19, v12

    move/from16 v20, v13

    move-object v14, v15

    move-object/from16 v15, p5

    move-object v12, v4

    move-object v13, v6

    move-object v4, v9

    move-object v9, v3

    const/4 v3, 0x7

    invoke-static/range {v9 .. v20}, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressBffComposableKt;->c(Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v10, v18

    move-object/from16 v12, v19

    const/4 v6, 0x0

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :goto_14
    const v9, -0x61205aef

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12, v6}, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressLoadingScreenKt;->a(Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_15
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-static {v6, v3, v12, v4}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v11

    const/4 v3, 0x4

    if-eq v5, v3, :cond_1d

    move/from16 v21, v6

    :cond_1d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v21, :cond_1e

    if-ne v3, v0, :cond_1f

    :cond_1e
    new-instance v3, Lpr0;

    invoke-direct {v3, v1, v6}, Lpr0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    move-object v13, v3

    check-cast v13, Lkotlin/jvm/functions/Function0;

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v3, v0, 0x3

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v3

    shr-int/lit8 v3, v24, 0xf

    and-int/lit16 v3, v3, 0x1c00

    or-int v15, v0, v3

    move-object v14, v12

    move-object/from16 v12, p8

    invoke-static/range {v9 .. v15}, Lcom/vuitton/android/presentation/contact/compose/ContactUsBottomSheetKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v12, v14

    goto :goto_16

    :cond_20
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_16
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_21

    new-instance v0, Lp9;

    const/4 v11, 0x4

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lp9;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_21
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v1, "RepairsConfirmAddressBffMainContent"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v4, 0x33b1998e

    move-object/from16 v5, p6

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    or-int v4, p7, v4

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v4, v6

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x100

    goto :goto_2

    :cond_3
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v4, v6

    move-object/from16 v6, p3

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x800

    goto :goto_3

    :cond_4
    const/16 v7, 0x400

    :goto_3
    or-int/2addr v4, v7

    move-object/from16 v7, p4

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x4000

    goto :goto_4

    :cond_5
    const/16 v8, 0x2000

    :goto_4
    or-int/2addr v4, v8

    move-object/from16 v8, p5

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/high16 v9, 0x20000

    goto :goto_5

    :cond_6
    const/high16 v9, 0x10000

    :goto_5
    or-int/2addr v4, v9

    const v9, 0x12493

    and-int/2addr v9, v4

    const v10, 0x12492

    const/4 v13, 0x0

    if-eq v9, v10, :cond_7

    const/4 v9, 0x1

    goto :goto_6

    :cond_7
    move v9, v13

    :goto_6
    and-int/lit8 v10, v4, 0x1

    invoke-virtual {v12, v10, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_1e

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v10, 0x0

    invoke-static {v0, v9, v10, v5}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v12}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v9

    const/16 v10, 0xe

    invoke-static {v5, v9, v13, v10}, Landroidx/compose/foundation/ScrollKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v10, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v9, v10, v12, v13}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v9

    iget-wide v14, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v12, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v11, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    const/16 v28, 0x0

    if-eqz v11, :cond_1d

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_8

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_8
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_7
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v9, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v14, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v9, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v5, v9, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v14

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v18, 0x0

    const/16 v19, 0xd

    const/4 v15, 0x0

    const/16 v17, 0x0

    move/from16 v16, v5

    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const v9, 0x7f14091e

    invoke-static {v12, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->f:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v26, 0x0

    const v27, 0x1fff8

    move-object v6, v5

    move-object v5, v9

    move-object/from16 v23, v10

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v24, v12

    move/from16 v16, v13

    const-wide/16 v12, 0x0

    move-wide v7, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v18, v16

    const-wide/16 v16, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v20, v19

    const/16 v19, 0x0

    move/from16 v21, v20

    const/16 v20, 0x0

    move/from16 v22, v21

    const/16 v21, 0x0

    move/from16 v25, v22

    const/16 v22, 0x0

    move/from16 v29, v25

    const/16 v25, 0x0

    move/from16 v30, v29

    move-object/from16 v29, v0

    move/from16 v0, v30

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v12, v24

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v7, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v9, 0x0

    const/16 v10, 0xd

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const v5, 0x7f140917

    invoke-static {v12, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    move-object/from16 v23, v7

    move-wide v7, v8

    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v12, v24

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v7, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v9, 0x0

    const/16 v10, 0xd

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const v6, 0x7f1408e7

    invoke-static {v12, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    shl-int/lit8 v14, v4, 0x6

    const/high16 v7, 0x70000

    and-int/2addr v7, v14

    or-int/lit16 v7, v7, 0x180

    const/16 v13, 0x18

    move v12, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v10, p3

    move-object/from16 v11, v24

    invoke-static/range {v5 .. v13}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v12, v11

    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/content/Context;

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->f:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->g:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->h:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    if-eqz v7, :cond_9

    iget-object v9, v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->l:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    if-eqz v9, :cond_9

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    goto :goto_8

    :cond_9
    move-object/from16 v9, v28

    :goto_8
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v9, v10

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v9, :cond_a

    if-ne v10, v11, :cond_d

    :cond_a
    if-eqz v5, :cond_b

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/account/profile/MapperKt;->b(Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;)Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-result-object v9

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/account/addressbook/mappers/AddressMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/profile/Address;)Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;

    move-result-object v9

    sget-object v10, Lcom/vuitton/android/core/platform/serialization/JsonProviderKt;->a:Lkotlinx/serialization/json/Json;

    invoke-static {v15, v10, v8, v9}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBuilder;->a(Landroid/content/Context;Lkotlinx/serialization/json/Json;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;)Ljava/lang/String;

    move-result-object v9

    :goto_9
    move-object v10, v9

    goto :goto_a

    :cond_b
    if-eqz v7, :cond_c

    iget-object v9, v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->l:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    if-eqz v9, :cond_c

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    if-eqz v9, :cond_c

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModelKt;->a(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;)Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :cond_c
    move-object/from16 v10, v28

    :goto_a
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v10, Ljava/lang/String;

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v13

    iget v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v9

    move/from16 v18, v13

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    if-eqz v5, :cond_e

    iget-object v13, v5, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->f:Ljava/lang/String;

    goto :goto_b

    :cond_e
    move-object/from16 v13, v28

    :goto_b
    const-string v16, ""

    if-nez v13, :cond_f

    move-object/from16 v13, v16

    :cond_f
    if-eqz v5, :cond_10

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->g:Ljava/lang/String;

    goto :goto_c

    :cond_10
    move-object/from16 v5, v28

    :goto_c
    if-nez v5, :cond_11

    move-object/from16 v5, v16

    :cond_11
    if-nez v10, :cond_12

    move-object/from16 v10, v16

    :cond_12
    const v17, 0x7f1408b8

    const/high16 v18, 0x380000

    and-int v14, v14, v18

    move-object/from16 v19, v6

    const v6, 0x7f140924

    move/from16 p6, v4

    move-object v0, v7

    move-object v2, v8

    move-object v4, v11

    move-object v7, v13

    move v13, v14

    move-object/from16 v14, v19

    move-object/from16 v11, p4

    move-object v8, v5

    move-object v5, v9

    move-object v9, v10

    move/from16 v10, v17

    invoke-static/range {v5 .. v13}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairAddressCardComponentKt;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    iget-boolean v5, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->p:Z

    if-eqz v5, :cond_1c

    const v5, -0x524cb4cb

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_13

    if-ne v6, v4, :cond_16

    :cond_13
    if-eqz v14, :cond_14

    sget-object v0, Lcom/vuitton/android/core/platform/serialization/JsonProviderKt;->a:Lkotlinx/serialization/json/Json;

    invoke-static {v14}, Lcom/vuitton/android/presentation/screen/account/profile/MapperKt;->b(Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;)Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/account/addressbook/mappers/AddressMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/profile/Address;)Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;

    move-result-object v4

    invoke-static {v15, v0, v2, v4}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBuilder;->a(Landroid/content/Context;Lkotlinx/serialization/json/Json;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    move-object v6, v0

    goto :goto_e

    :cond_14
    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->l:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->f:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModelKt;->a(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_15
    move-object/from16 v6, v28

    :goto_e
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v6, Ljava/lang/String;

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v24, 0x0

    const/16 v25, 0xd

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v0

    move/from16 v22, v1

    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v14, :cond_17

    iget-object v0, v14, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->f:Ljava/lang/String;

    goto :goto_f

    :cond_17
    move-object/from16 v0, v28

    :goto_f
    if-nez v0, :cond_18

    move-object/from16 v7, v16

    goto :goto_10

    :cond_18
    move-object v7, v0

    :goto_10
    if-eqz v14, :cond_19

    iget-object v0, v14, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->g:Ljava/lang/String;

    move-object/from16 v28, v0

    :cond_19
    if-nez v28, :cond_1a

    move-object/from16 v8, v16

    goto :goto_11

    :cond_1a
    move-object/from16 v8, v28

    :goto_11
    if-nez v6, :cond_1b

    move-object/from16 v9, v16

    goto :goto_12

    :cond_1b
    move-object v9, v6

    :goto_12
    shl-int/lit8 v0, p6, 0x3

    and-int v13, v0, v18

    const v6, 0x7f140919

    const v10, 0x7f1408bb

    move-object/from16 v11, p5

    invoke-static/range {v5 .. v13}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairAddressCardComponentKt;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    const/4 v0, 0x1

    goto :goto_14

    :cond_1c
    const/4 v0, 0x0

    const v1, -0x5239ce02

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :goto_14
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :cond_1d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v28

    :cond_1e
    move-object/from16 v29, v0

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_15
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1f

    new-instance v0, Lu1;

    const/16 v8, 0x1c

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v1, v29

    invoke-direct/range {v0 .. v8}, Lu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void
.end method

.method public static final c(Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v6, p11

    const v0, -0x5974d107

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    and-int/lit8 v0, v6, 0x6

    move-object/from16 v11, p0

    if-nez v0, :cond_1

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v6

    goto :goto_1

    :cond_1
    move v0, v6

    :goto_1
    and-int/lit8 v1, v6, 0x30

    move-object/from16 v12, p1

    if-nez v1, :cond_3

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, v6, 0xc00

    move-object/from16 v4, p3

    if-nez v1, :cond_5

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x800

    goto :goto_3

    :cond_4
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v6, 0x6000

    move-object/from16 v13, p4

    if-nez v1, :cond_7

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x4000

    goto :goto_4

    :cond_6
    const/16 v1, 0x2000

    :goto_4
    or-int/2addr v0, v1

    :cond_7
    const/high16 v1, 0x30000

    and-int/2addr v1, v6

    move-object/from16 v14, p5

    if-nez v1, :cond_9

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/high16 v1, 0x20000

    goto :goto_5

    :cond_8
    const/high16 v1, 0x10000

    :goto_5
    or-int/2addr v0, v1

    :cond_9
    const/high16 v1, 0x180000

    and-int/2addr v1, v6

    if-nez v1, :cond_b

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/high16 v1, 0x100000

    goto :goto_6

    :cond_a
    const/high16 v1, 0x80000

    :goto_6
    or-int/2addr v0, v1

    :cond_b
    const/high16 v1, 0xc00000

    and-int/2addr v1, v6

    if-nez v1, :cond_e

    const/high16 v1, 0x1000000

    and-int/2addr v1, v6

    if-nez v1, :cond_c

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_7

    :cond_c
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    :goto_7
    if-eqz v1, :cond_d

    const/high16 v1, 0x800000

    goto :goto_8

    :cond_d
    const/high16 v1, 0x400000

    :goto_8
    or-int/2addr v0, v1

    :cond_e
    const/high16 v1, 0x6000000

    and-int/2addr v1, v6

    move-object/from16 v5, p8

    if-nez v1, :cond_10

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/high16 v1, 0x4000000

    goto :goto_9

    :cond_f
    const/high16 v1, 0x2000000

    :goto_9
    or-int/2addr v0, v1

    :cond_10
    const/high16 v1, 0x30000000

    and-int/2addr v1, v6

    if-nez v1, :cond_13

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v6

    if-nez v1, :cond_11

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_a

    :cond_11
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    :goto_a
    if-eqz v1, :cond_12

    const/high16 v1, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v1, 0x10000000

    :goto_b
    or-int/2addr v0, v1

    :cond_13
    const v1, 0x12492493

    and-int/2addr v1, v0

    const v2, 0x12492492

    const/4 v3, 0x1

    if-eq v1, v2, :cond_14

    move v1, v3

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    :goto_c
    and-int/2addr v0, v3

    invoke-virtual {v9, v0, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lv8;

    const/4 v1, 0x3

    move-object v3, v8

    move-object v2, v10

    invoke-direct/range {v0 .. v5}, Lv8;-><init>(ILcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x42ef05b5

    invoke-static {v1, v0, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    new-instance v1, Lkn0;

    const/16 v2, 0x9

    invoke-direct {v1, v7, v2}, Lkn0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v2, 0x5b8b7894

    invoke-static {v2, v1, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    new-instance v2, Lae0;

    const/16 v3, 0x1c

    move-object/from16 v4, p2

    invoke-direct {v2, v4, v3}, Lae0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v3, 0x7427eb73

    invoke-static {v3, v2, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    new-instance v8, Lp0;

    const/16 v15, 0x13

    move-object v3, v9

    move-object v9, v11

    move-object v10, v12

    move-object/from16 v11, p7

    move-object/from16 v12, p9

    invoke-direct/range {v8 .. v15}, Lp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v5, -0x177de776

    invoke-static {v5, v8, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v19

    const v21, 0x30000db0

    const/16 v22, 0x1f1

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object/from16 v20, v3

    invoke-static/range {v8 .. v22}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_d

    :cond_15
    move-object/from16 v4, p2

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_d
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_16

    new-instance v0, Lmf;

    const/4 v12, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object v3, v4

    move v11, v6

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v12}, Lmf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;II)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public static final d(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 14

    move/from16 v12, p2

    const v0, 0x199fdc1d

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, v12

    and-int/lit8 v3, v0, 0x3

    const/4 v13, 0x1

    const/4 v4, 0x0

    if-eq v3, v1, :cond_1

    move v1, v13

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "RepairsConfirmAddressBottomContent"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object v9, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v5, v6, v7, v9}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v6, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    iget-wide v6, v2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v2, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v10, v2, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v10, :cond_3

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_2

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_2
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v4, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v7, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v4, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v5, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    const v5, 0x7f140635

    invoke-static {v2, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v3}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v1, v5, v3, v6, v9}, Landroidx/compose/foundation/layout/PaddingKt;->l(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    shl-int/lit8 v0, v0, 0x1b

    const/high16 v1, 0x70000000

    and-int/2addr v0, v1

    const/high16 v1, 0xc00000

    or-int/2addr v0, v1

    const/16 v1, 0x178

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v8, p0

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_3

    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_3
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lkn0;

    const/16 v2, 0xa

    invoke-direct {v1, v12, v2, p0}, Lkn0;-><init>(IILkotlin/jvm/functions/Function0;)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method
