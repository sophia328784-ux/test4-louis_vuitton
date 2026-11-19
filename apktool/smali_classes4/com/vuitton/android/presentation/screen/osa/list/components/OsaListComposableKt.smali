.class public abstract Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u00a8\u0006\u0006\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u0012\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u0012\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;",
        "viewState",
        "Lkotlin/Function0;",
        "",
        "currentOnBackPressed",
        "currentOnBookAppointmentClicked",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x4e409506

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x4

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p6, v0

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

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    move-object/from16 v13, p3

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    move-object/from16 v11, p4

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x4000

    goto :goto_4

    :cond_4
    const/16 v1, 0x2000

    :goto_4
    or-int v12, v0, v1

    and-int/lit16 v0, v12, 0x2493

    const/16 v1, 0x2492

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v0, v1, :cond_5

    move v0, v15

    goto :goto_5

    :cond_5
    move v0, v14

    :goto_5
    and-int/lit8 v1, v12, 0x1

    invoke-virtual {v9, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v9}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v20

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v3, :cond_6

    invoke-static {v9}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v1

    :cond_6
    check-cast v1, Landroidx/compose/material3/SnackbarHostState;

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v5, v12, 0xe

    if-eq v5, v10, :cond_7

    move v6, v14

    goto :goto_6

    :cond_7
    move v6, v15

    :goto_6
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v6, v6, v16

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v6, :cond_8

    if-ne v10, v3, :cond_9

    :cond_8
    new-instance v10, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListComposableKt$OsaListComposable$1$1;

    const/4 v6, 0x0

    invoke-direct {v10, v2, v1, v0, v6}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListComposableKt$OsaListComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v4, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7, v9}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_a

    if-ne v6, v3, :cond_b

    :cond_a
    new-instance v6, Lu00;

    const/16 v4, 0xe

    invoke-direct {v6, v4, v0}, Lu00;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v14, v6, v9, v14, v15}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_c

    new-instance v4, Lr1;

    const/16 v6, 0x8

    invoke-direct {v4, v6, v0}, Lr1;-><init>(ILandroidx/compose/runtime/MutableState;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v6, 0x42bf9cd3

    invoke-direct {v0, v6, v15, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :cond_c
    move-object v10, v4

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v9}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    const/4 v4, 0x4

    if-eq v5, v4, :cond_d

    move v4, v14

    goto :goto_7

    :cond_d
    move v4, v15

    :goto_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_e

    if-ne v6, v3, :cond_f

    :cond_e
    new-instance v6, Lrh0;

    const/16 v4, 0xa

    invoke-direct {v6, v2, v0, v4}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object v0, v6

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

    iget-boolean v4, v4, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->d:Z

    const/16 v6, 0x36

    if-eqz v4, :cond_13

    const v0, -0x4d6b1acd

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v4, 0x4

    if-eq v5, v4, :cond_10

    move v0, v14

    goto :goto_8

    :cond_10
    move v0, v15

    :goto_8
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_12

    if-ne v4, v3, :cond_11

    goto :goto_9

    :cond_11
    move-object v12, v1

    move v15, v6

    goto :goto_a

    :cond_12
    :goto_9
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListComposableKt$OsaListComposable$3$1;

    const-string v5, "getAppointmentList()V"

    move v3, v6

    const/4 v6, 0x0

    move-object v4, v1

    const/4 v1, 0x0

    move v12, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;

    move-object/from16 v16, v4

    const-string v4, "getAppointmentList"

    move v15, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_a
    check-cast v4, Lkotlin/reflect/KFunction;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v12, v10, v4, v9, v15}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListErrorScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_b
    move-object/from16 v2, p0

    move-object v3, v9

    move v0, v14

    const/4 v1, 0x1

    goto/16 :goto_13

    :cond_13
    move-object v11, v1

    move v15, v6

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->c:Z

    if-eqz v1, :cond_14

    const v0, -0x4d68428b

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v11, v10, v9, v15}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListLoadingScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_14
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->c:Z

    if-nez v1, :cond_15

    const v1, -0x4d63ffda

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v11, v10, v0, v9, v15}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListEmptyScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_15
    const v1, -0x4d6015cd

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

    const/4 v4, 0x4

    if-eq v5, v4, :cond_16

    move v1, v14

    goto :goto_c

    :cond_16
    const/4 v1, 0x1

    :goto_c
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_17

    if-ne v2, v3, :cond_18

    :cond_17
    move-object v6, v0

    goto :goto_d

    :cond_18
    move-object v7, v3

    move v14, v5

    move/from16 v17, v12

    move-object v12, v0

    goto :goto_e

    :goto_d
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListComposableKt$OsaListComposable$4$1;

    move v1, v5

    const-string v5, "setAppointmentToCancel(Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;)V"

    move-object v2, v6

    const/4 v6, 0x0

    move v4, v1

    const/4 v1, 0x1

    move-object/from16 v17, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;

    move/from16 v18, v4

    const-string v4, "setAppointmentToCancel"

    move-object/from16 v7, v17

    move/from16 v14, v18

    move/from16 v17, v12

    move-object v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_e
    check-cast v2, Lkotlin/reflect/KFunction;

    move-object/from16 v18, v2

    check-cast v18, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x4

    if-eq v14, v4, :cond_19

    const/4 v0, 0x0

    goto :goto_f

    :cond_19
    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1b

    if-ne v1, v7, :cond_1a

    goto :goto_10

    :cond_1a
    move-object/from16 v2, p0

    goto :goto_11

    :cond_1b
    :goto_10
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListComposableKt$OsaListComposable$5$1;

    const-string v5, "cancelAppointment()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;

    const-string v4, "cancelAppointment"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_11
    check-cast v1, Lkotlin/reflect/KFunction;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x4

    if-eq v14, v4, :cond_1c

    const/4 v0, 0x0

    goto :goto_12

    :cond_1c
    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_1d

    if-ne v3, v7, :cond_1e

    :cond_1d
    new-instance v3, Lx60;

    const/16 v0, 0x17

    invoke-direct {v3, v2, v0}, Lx60;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v3, Lkotlin/jvm/functions/Function0;

    const v0, 0xe000

    shl-int/lit8 v4, v17, 0x3

    and-int/2addr v0, v4

    or-int/lit16 v0, v0, 0x1b0

    shl-int/lit8 v4, v17, 0x9

    const/high16 v5, 0x1c00000

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    move-object/from16 v16, p4

    move/from16 v19, v0

    move-object/from16 v17, v3

    move-object/from16 v14, v18

    const/4 v0, 0x0

    move-object/from16 v18, v9

    move-object v9, v15

    move-object v15, v1

    const/4 v1, 0x1

    invoke-static/range {v9 .. v19}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListScreenKt;->a(Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v3, v18

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

    iget-boolean v4, v4, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->b:Z

    if-eqz v4, :cond_1f

    const v4, -0x4d555cba

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v0, v3, v0, v1}, Lcom/vuitton/android/designkit/components/components/LVLoadingOverlayKt;->a(ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_1f
    const v1, -0x4d54dd18

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_20
    move-object v3, v9

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_14
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_21

    new-instance v0, Lkj0;

    const/4 v7, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object v1, v2

    move-object v3, v8

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v7}, Lkj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_21
    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v15, p2

    const v0, 0x5cab76da

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, v15

    and-int/lit8 v2, v0, 0x3

    if-eq v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {v11, v2, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x7f140d5b

    invoke-static {v11, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    shl-int/lit8 v0, v0, 0x12

    const/high16 v1, 0x380000

    and-int v12, v0, v1

    const/4 v13, 0x0

    const/16 v14, 0xfb7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v0 .. v14}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;III)V

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lkw;

    const/16 v2, 0x19

    invoke-direct {v1, v15, v2, v6}, Lkw;-><init>(IILkotlin/jvm/functions/Function0;)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method
