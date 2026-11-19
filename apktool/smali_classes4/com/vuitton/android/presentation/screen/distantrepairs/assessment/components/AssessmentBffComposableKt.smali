.class public abstract Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0006\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00048\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
        "contactUsUiModel",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBottomSheetScreen;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 43

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v13, p4

    move-object/from16 v8, p5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x49e9699a

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x4

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p9, v0

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    move-object/from16 v11, p2

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    move-object/from16 v12, p3

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x4000

    goto :goto_4

    :cond_4
    const/16 v1, 0x2000

    :goto_4
    or-int/2addr v0, v1

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v1, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v1, 0x10000

    :goto_5
    or-int/2addr v0, v1

    move-object/from16 v1, p6

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

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

    move-result v14

    if-eqz v14, :cond_7

    const/high16 v14, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v14, 0x400000

    :goto_7
    or-int v22, v0, v14

    const v0, 0x492493

    and-int v0, v22, v0

    const v14, 0x492492

    const/4 v15, 0x1

    const/4 v1, 0x0

    if-eq v0, v14, :cond_8

    move v0, v15

    goto :goto_8

    :cond_8
    move v0, v1

    :goto_8
    and-int/lit8 v14, v22, 0x1

    invoke-virtual {v6, v14, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v14, v22, 0xe

    if-eq v14, v10, :cond_9

    move/from16 v16, v1

    goto :goto_9

    :cond_9
    move/from16 v16, v15

    :goto_9
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v10, 0x0

    if-nez v16, :cond_a

    if-ne v3, v4, :cond_b

    :cond_a
    new-instance v3, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$1$1;

    invoke-direct {v3, v2, v10}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v0, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_c

    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v3, v6}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v23, v3

    check-cast v23, Lkotlinx/coroutines/CoroutineScope;

    new-array v3, v1, [Landroidx/navigation/Navigator;

    invoke-static {v3, v6}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v3

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v9

    invoke-static {v9, v6}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    move/from16 v16, v14

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object v14

    new-instance v24, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v37, 0xfff

    const/16 v38, 0x0

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

    const/16 v36, 0x0

    invoke-direct/range {v24 .. v38}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v18, 0x0

    const/16 v19, 0x2

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v15, v17

    move-object/from16 v17, v6

    move v6, v15

    move-object/from16 v15, v24

    invoke-static/range {v14 .. v19}, Landroidx/compose/runtime/SnapshotStateKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v25

    move-object/from16 v14, v17

    const/4 v15, 0x7

    invoke-static {v1, v15, v14, v10}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v18

    invoke-static {v1, v15, v14, v10}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v7

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v4, :cond_d

    invoke-static {v10}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v15, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v17, :cond_e

    if-ne v10, v4, :cond_f

    :cond_e
    new-instance v10, Lm8;

    invoke-direct {v10, v7, v15, v1}, Lm8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v17, :cond_11

    if-ne v1, v4, :cond_10

    goto :goto_a

    :cond_10
    const/4 v5, 0x0

    goto :goto_b

    :cond_11
    :goto_a
    new-instance v1, Ln8;

    const/4 v5, 0x0

    invoke-direct {v1, v7, v15, v5}, Ln8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_b
    move-object/from16 v17, v1

    check-cast v17, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x4

    if-eq v6, v1, :cond_12

    move v1, v5

    goto :goto_c

    :cond_12
    const/4 v1, 0x1

    :goto_c
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    or-int v1, v1, v26

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_13

    if-ne v5, v4, :cond_14

    :cond_13
    new-instance v5, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$2$1;

    const/4 v1, 0x0

    invoke-direct {v5, v2, v3, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Landroidx/navigation/NavHostController;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v0, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v1, 0x4

    if-eq v6, v1, :cond_15

    const/4 v1, 0x0

    goto :goto_d

    :cond_15
    const/4 v1, 0x1

    :goto_d
    const/high16 v27, 0x70000

    and-int v5, v22, v27

    move/from16 v28, v1

    const/high16 v1, 0x20000

    if-ne v5, v1, :cond_16

    const/4 v1, 0x1

    goto :goto_e

    :cond_16
    const/4 v1, 0x0

    :goto_e
    or-int v1, v28, v1

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_17

    if-ne v5, v4, :cond_18

    :cond_17
    new-instance v5, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$3$1;

    const/4 v1, 0x0

    invoke-direct {v5, v2, v8, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v0, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_19

    invoke-static {v14}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v5

    :cond_19
    check-cast v5, Landroidx/compose/material3/SnackbarHostState;

    move-object/from16 v20, v3

    const/4 v3, 0x4

    if-eq v6, v3, :cond_1a

    const/4 v3, 0x0

    goto :goto_f

    :cond_1a
    const/4 v3, 0x1

    :goto_f
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    or-int v3, v3, v28

    move/from16 v28, v3

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v28, :cond_1c

    if-ne v3, v4, :cond_1b

    goto :goto_10

    :cond_1b
    move-object/from16 v28, v7

    const/4 v7, 0x0

    goto :goto_11

    :cond_1c
    :goto_10
    new-instance v3, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$4$1;

    move-object/from16 v28, v7

    const/4 v7, 0x0

    invoke-direct {v3, v2, v5, v1, v7}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$4$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_11
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v0, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->b:Z

    if-nez v0, :cond_1d

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->j:Z

    if-eqz v0, :cond_1e

    :cond_1d
    move-object/from16 v0, p1

    move-object/from16 v42, v4

    move-object v1, v5

    move/from16 v39, v6

    move-object/from16 v41, v10

    move-object v6, v14

    move-object/from16 v40, v15

    const/4 v14, 0x0

    goto/16 :goto_1e

    :cond_1e
    const v0, -0x31567b8d

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

    const/4 v1, 0x4

    if-eq v6, v1, :cond_1f

    const/4 v0, 0x0

    goto :goto_12

    :cond_1f
    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_21

    if-ne v1, v4, :cond_20

    goto :goto_13

    :cond_20
    move-object v8, v4

    move-object/from16 v29, v5

    move v7, v6

    move-object/from16 p8, v10

    move-object/from16 v24, v20

    const/16 v10, 0x4000

    goto :goto_14

    :cond_21
    :goto_13
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$5$1;

    move-object v1, v5

    const-string v5, "acceptAssessment()V"

    move v3, v6

    const/4 v6, 0x0

    move-object/from16 v29, v1

    const/4 v1, 0x0

    move/from16 v30, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;

    move-object/from16 v31, v4

    const-string v4, "acceptAssessment"

    move-object/from16 p8, v10

    move-object/from16 v24, v20

    move/from16 v7, v30

    move-object/from16 v8, v31

    const/16 v10, 0x4000

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_14
    move-object/from16 v26, v1

    check-cast v26, Lkotlin/reflect/KFunction;

    const/4 v1, 0x4

    if-eq v7, v1, :cond_22

    const/4 v0, 0x0

    goto :goto_15

    :cond_22
    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_23

    if-ne v1, v8, :cond_24

    :cond_23
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$6$1;

    const-string v5, "setSelectedAddressById(Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;

    const-string v4, "setSelectedAddressById"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_24
    move-object/from16 v30, v1

    check-cast v30, Lkotlin/reflect/KFunction;

    const/4 v1, 0x4

    if-eq v7, v1, :cond_25

    const/4 v0, 0x0

    goto :goto_16

    :cond_25
    const/4 v0, 0x1

    :goto_16
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_26

    if-ne v1, v8, :cond_27

    :cond_26
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$7$1;

    const-string v5, "setEditStep(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;

    const-string v4, "setEditStep"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_27
    move-object/from16 v31, v1

    check-cast v31, Lkotlin/reflect/KFunction;

    const/4 v1, 0x4

    if-eq v7, v1, :cond_28

    const/4 v0, 0x0

    goto :goto_17

    :cond_28
    const/4 v0, 0x1

    :goto_17
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2a

    if-ne v1, v8, :cond_29

    goto :goto_18

    :cond_29
    move-object v0, v1

    move-object/from16 v1, p0

    goto :goto_19

    :cond_2a
    :goto_18
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$8$1;

    const-string v5, "gotToNextStep(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;

    const-string v4, "gotToNextStep"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_19
    check-cast v0, Lkotlin/reflect/KFunction;

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const v3, 0xe000

    and-int v3, v22, v3

    if-ne v3, v10, :cond_2b

    const/4 v3, 0x1

    goto :goto_1a

    :cond_2b
    const/4 v3, 0x0

    :goto_1a
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_2d

    if-ne v4, v8, :cond_2c

    goto :goto_1b

    :cond_2c
    const/4 v3, 0x0

    goto :goto_1c

    :cond_2d
    :goto_1b
    new-instance v4, Lo8;

    const/4 v3, 0x0

    invoke-direct {v4, v13, v9, v3}, Lo8;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1c
    move-object v6, v4

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object/from16 v9, v26

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object/from16 v10, v31

    check-cast v10, Lkotlin/jvm/functions/Function1;

    check-cast v30, Lkotlin/jvm/functions/Function1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x4

    if-eq v7, v4, :cond_2e

    move v5, v3

    goto :goto_1d

    :cond_2e
    const/4 v5, 0x1

    :goto_1d
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v5, :cond_2f

    if-ne v4, v8, :cond_30

    :cond_2f
    new-instance v4, Lp8;

    invoke-direct {v4, v1, v3}, Lp8;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;I)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_30
    check-cast v4, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v5, v22, 0xc

    and-int v5, v5, v27

    or-int/lit8 v5, v5, 0x30

    shl-int/lit8 v26, v22, 0xf

    const/high16 v27, 0x1c00000

    and-int v31, v26, v27

    or-int v5, v5, v31

    const/high16 v31, 0xe000000

    and-int v26, v26, v31

    or-int v5, v5, v26

    shr-int/lit8 v26, v22, 0x3

    const v31, 0x71c00

    and-int v26, v26, v31

    and-int v27, v22, v27

    or-int v26, v26, v27

    sget v27, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v27, v27, 0x18

    or-int v26, v26, v27

    move-object/from16 v41, p8

    move-object/from16 v16, v2

    move/from16 v20, v5

    move/from16 v39, v7

    move-object/from16 v42, v8

    move-object v7, v11

    move-object v8, v12

    move-object/from16 v40, v15

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v21, v26

    move-object/from16 v1, v29

    move-object/from16 v11, v30

    move-object/from16 v5, p1

    move-object/from16 v15, p6

    move-object v12, v0

    move-object/from16 v0, v19

    move-object/from16 v19, v14

    move-object v14, v4

    move-object/from16 v4, v17

    move-object/from16 v17, p7

    invoke-static/range {v0 .. v21}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffScreenKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlinx/coroutines/CoroutineScope;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/Composer;II)V

    move-object v0, v5

    move-object/from16 v6, v19

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1f

    :goto_1e
    const v2, -0x31596694

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int/lit8 v2, v22, 0x70

    or-int/lit8 v2, v2, 0x6

    invoke-static {v1, v0, v6, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentLoadingScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1f
    invoke-virtual/range {v28 .. v28}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v1

    if-eqz v1, :cond_31

    const v1, -0x3143caa7    # -1.5788064E9f

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v1, 0x7f140319

    invoke-static {v6, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lg1;

    const/4 v4, 0x2

    move-object/from16 v15, p0

    move-object/from16 v3, v40

    move-object/from16 v10, v41

    invoke-direct {v1, v4, v3, v15, v10}, Lg1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    const v3, 0x7546fb6e

    invoke-static {v3, v1, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    sget v1, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v1, v1, 0x9

    const/high16 v3, 0x6000000

    or-int v12, v1, v3

    const/16 v13, 0xf5

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v11, v6

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, v28

    invoke-static/range {v1 .. v13}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v6, v11

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_20

    :cond_31
    move-object/from16 v15, p0

    const v1, -0x313abdc4

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_20
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/4 v2, 0x7

    const/4 v7, 0x0

    invoke-static {v14, v2, v6, v7}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v3

    move/from16 v7, v39

    const/4 v4, 0x4

    if-eq v7, v4, :cond_32

    goto :goto_21

    :cond_32
    const/4 v14, 0x1

    :goto_21
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v14, :cond_33

    move-object/from16 v8, v42

    if-ne v2, v8, :cond_34

    :cond_33
    new-instance v2, Lp8;

    const/4 v4, 0x1

    invoke-direct {v2, v15, v4}, Lp8;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;I)V

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_34
    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    sget v2, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v4, v2, 0x3

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v4

    shr-int/lit8 v4, v22, 0xc

    and-int/lit16 v4, v4, 0x1c00

    or-int v7, v2, v4

    move-object/from16 v4, p7

    move-object/from16 v2, v18

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/contact/compose/ContactUsBottomSheetKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_22

    :cond_35
    move-object v15, v2

    move-object v0, v7

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_22
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_36

    new-instance v0, Lq8;

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    move-object v1, v15

    invoke-direct/range {v0 .. v10}, Lq8;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_36
    return-void
.end method
