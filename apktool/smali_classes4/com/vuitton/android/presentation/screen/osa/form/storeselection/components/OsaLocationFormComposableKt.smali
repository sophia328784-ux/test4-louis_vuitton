.class public abstract Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0006\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00048\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;",
        "osaReasonsFormViewState",
        "Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 35

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x298be772

    move-object/from16 v3, p9

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p10, v1

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v1, v3

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v1, v3

    move-object/from16 v14, p3

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    goto :goto_3

    :cond_3
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v1, v3

    move-object/from16 v15, p4

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x4000

    goto :goto_4

    :cond_4
    const/16 v3, 0x2000

    :goto_4
    or-int/2addr v1, v3

    move-object/from16 v3, p5

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v5, 0x10000

    :goto_5
    or-int/2addr v1, v5

    move-object/from16 v5, p6

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/high16 v6, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v6, 0x80000

    :goto_6
    or-int/2addr v1, v6

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/high16 v6, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v6, 0x400000

    :goto_7
    or-int/2addr v1, v6

    move-object/from16 v6, p8

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/high16 v16, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v16, 0x2000000

    :goto_8
    or-int v1, v1, v16

    const v16, 0x2492493

    and-int v12, v1, v16

    const v10, 0x2492492

    if-eq v12, v10, :cond_9

    const/4 v10, 0x1

    goto :goto_9

    :cond_9
    const/4 v10, 0x0

    :goto_9
    and-int/lit8 v12, v1, 0x1

    invoke-virtual {v9, v12, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_43

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v10

    invoke-static {v10, v9}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v12

    invoke-static {v12, v9}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v11, :cond_a

    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v6, v9}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    const/4 v4, 0x0

    if-ne v13, v11, :cond_b

    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v13, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v11, :cond_c

    new-instance v4, Lc30;

    const/16 v0, 0x10

    invoke-direct {v4, v0, v13}, Lc30;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v0, 0x30

    const/4 v3, 0x5

    invoke-static {v0, v3, v9, v4}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v0

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_d

    if-ne v4, v11, :cond_e

    :cond_d
    new-instance v4, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/a;

    invoke-direct {v4, v6, v13, v0}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/a;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_f

    if-ne v6, v11, :cond_10

    :cond_f
    new-instance v6, Lm8;

    const/4 v3, 0x7

    invoke-direct {v6, v0, v13, v3}, Lm8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v22, v6

    check-cast v22, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    and-int/lit16 v6, v1, 0x380

    move/from16 v24, v1

    const/16 v1, 0x100

    if-ne v6, v1, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    :goto_a
    or-int/2addr v1, v3

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_12

    if-ne v3, v11, :cond_13

    :cond_12
    new-instance v3, Lt3;

    const/16 v1, 0xb

    invoke-direct {v3, v0, v7, v1}, Lt3;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    move-object/from16 v25, v3

    check-cast v25, Lkotlin/jvm/functions/Function0;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v3, v24, 0xe

    move-object/from16 v26, v0

    const/4 v0, 0x4

    if-eq v3, v0, :cond_14

    const/4 v0, 0x0

    goto :goto_b

    :cond_14
    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v27

    or-int v0, v0, v27

    move/from16 v27, v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v27, :cond_16

    if-ne v0, v11, :cond_15

    goto :goto_c

    :cond_15
    move-object/from16 v27, v4

    goto :goto_d

    :cond_16
    :goto_c
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$1$1;

    move-object/from16 v27, v4

    const/4 v4, 0x0

    invoke-direct {v0, v2, v10, v4}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_d
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v1, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x4

    if-eq v3, v0, :cond_17

    const/4 v0, 0x0

    goto :goto_e

    :cond_17
    const/4 v0, 0x1

    :goto_e
    const/high16 v28, 0x1c00000

    and-int v4, v24, v28

    move/from16 v29, v0

    const/high16 v0, 0x800000

    if-ne v4, v0, :cond_18

    const/4 v0, 0x1

    goto :goto_f

    :cond_18
    const/4 v0, 0x0

    :goto_f
    or-int v0, v29, v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_1a

    if-ne v4, v11, :cond_19

    goto :goto_10

    :cond_19
    const/4 v0, 0x0

    goto :goto_11

    :cond_1a
    :goto_10
    new-instance v4, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$2$1;

    const/4 v0, 0x0

    invoke-direct {v4, v2, v8, v0}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_11
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v1, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_1b

    invoke-static {v9}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v0

    :cond_1b
    move-object/from16 v16, v0

    check-cast v16, Landroidx/compose/material3/SnackbarHostState;

    const/4 v0, 0x4

    if-eq v3, v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_12

    :cond_1c
    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v29

    or-int v0, v0, v29

    move/from16 v29, v6

    and-int/lit8 v6, v24, 0x70

    move/from16 v30, v0

    const/16 v0, 0x20

    if-eq v6, v0, :cond_1d

    const/4 v0, 0x0

    goto :goto_13

    :cond_1d
    const/4 v0, 0x1

    :goto_13
    or-int v0, v30, v0

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v30

    or-int v0, v0, v30

    move/from16 v30, v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v30, :cond_1f

    if-ne v0, v11, :cond_1e

    goto :goto_14

    :cond_1e
    move-object v8, v1

    move v14, v6

    move-object v5, v10

    move-object v1, v12

    move-object/from16 v19, v13

    move-object/from16 v12, v27

    move/from16 v10, v29

    const/4 v15, 0x0

    move v13, v3

    goto :goto_15

    :cond_1f
    :goto_14
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;

    move/from16 v30, v6

    const/4 v6, 0x0

    move-object v8, v1

    move-object v1, v2

    move-object v5, v10

    move-object/from16 v19, v13

    move/from16 v10, v29

    move/from16 v14, v30

    const/4 v15, 0x0

    move-object/from16 v2, p1

    move v13, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v12

    move-object/from16 v12, v27

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v3

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_15
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v8, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x4

    if-eq v13, v0, :cond_20

    const/4 v6, 0x0

    goto :goto_16

    :cond_20
    const/4 v6, 0x1

    :goto_16
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_21

    if-ne v0, v11, :cond_22

    :cond_21
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$4$1;

    invoke-direct {v0, v2, v15}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$4$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v8, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x4

    if-eq v13, v0, :cond_23

    const/4 v6, 0x0

    goto :goto_17

    :cond_23
    const/4 v6, 0x1

    :goto_17
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_24

    if-ne v3, v11, :cond_25

    :cond_24
    new-instance v3, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$5$1;

    invoke-direct {v3, v2, v12, v15}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$5$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v8, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;

    const/4 v0, 0x4

    if-eq v13, v0, :cond_26

    const/4 v6, 0x0

    goto :goto_18

    :cond_26
    const/4 v6, 0x1

    :goto_18
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_28

    if-ne v0, v11, :cond_27

    goto :goto_19

    :cond_27
    move-object/from16 v27, v8

    move-object/from16 v23, v12

    move-object/from16 v8, p1

    move-object v12, v5

    goto :goto_1a

    :cond_28
    :goto_19
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$6$1;

    move-object v1, v5

    const-string v5, "onNextClicked()V"

    const/4 v6, 0x0

    move-object v3, v1

    const/4 v1, 0x0

    move-object v4, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    move-object/from16 v23, v4

    const-string v4, "onNextClicked"

    move-object/from16 v27, v23

    move-object/from16 v23, v12

    move-object/from16 v12, v27

    move-object/from16 v27, v8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1a
    move-object/from16 v29, v0

    check-cast v29, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v13, v0, :cond_29

    const/4 v6, 0x0

    goto :goto_1b

    :cond_29
    const/4 v6, 0x1

    :goto_1b
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_2a

    if-ne v0, v11, :cond_2b

    :cond_2a
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$7$1;

    const-string v5, "selectAppointmentType(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    const-string v4, "selectAppointmentType"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2b
    move-object/from16 v30, v0

    check-cast v30, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v13, v0, :cond_2c

    const/4 v6, 0x0

    goto :goto_1c

    :cond_2c
    const/4 v6, 0x1

    :goto_1c
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_2d

    if-ne v0, v11, :cond_2e

    :cond_2d
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$8$1;

    const-string v5, "selectTimeSlot(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    const-string v4, "selectTimeSlot"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2e
    move-object/from16 v31, v0

    check-cast v31, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v13, v0, :cond_2f

    const/4 v6, 0x0

    goto :goto_1d

    :cond_2f
    const/4 v6, 0x1

    :goto_1d
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_30

    if-ne v0, v11, :cond_31

    :cond_30
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$9$1;

    const-string v5, "getAvailableDates()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    const-string v4, "getAvailableDates"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_31
    move-object/from16 v32, v0

    check-cast v32, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v13, v0, :cond_32

    const/4 v6, 0x0

    goto :goto_1e

    :cond_32
    const/4 v6, 0x1

    :goto_1e
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_34

    if-ne v0, v11, :cond_33

    goto :goto_1f

    :cond_33
    move-object/from16 v2, p0

    goto :goto_20

    :cond_34
    :goto_1f
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$10$1;

    const-string v5, "onDateSelected(Ljava/time/LocalDate;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    const-string v4, "onDateSelected"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_20
    check-cast v0, Lkotlin/reflect/KFunction;

    const/4 v1, 0x4

    if-eq v13, v1, :cond_35

    const/4 v6, 0x0

    :goto_21
    const/16 v1, 0x20

    goto :goto_22

    :cond_35
    const/4 v6, 0x1

    goto :goto_21

    :goto_22
    if-eq v14, v1, :cond_36

    const/4 v1, 0x0

    goto :goto_23

    :cond_36
    const/4 v1, 0x1

    :goto_23
    or-int/2addr v1, v6

    const/16 v3, 0x100

    if-ne v10, v3, :cond_37

    const/4 v6, 0x1

    goto :goto_24

    :cond_37
    const/4 v6, 0x0

    :goto_24
    or-int/2addr v1, v6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_38

    if-ne v3, v11, :cond_39

    :cond_38
    new-instance v3, Lof0;

    const/16 v1, 0xe

    invoke-direct {v3, v2, v8, v7, v1}, Lof0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_39
    move-object/from16 v17, v3

    check-cast v17, Lkotlin/jvm/functions/Function0;

    check-cast v29, Lkotlin/jvm/functions/Function0;

    check-cast v30, Lkotlin/jvm/functions/Function2;

    check-cast v31, Lkotlin/jvm/functions/Function2;

    move-object/from16 v21, v32

    check-cast v21, Lkotlin/jvm/functions/Function0;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x4

    if-eq v13, v1, :cond_3a

    const/4 v6, 0x0

    goto :goto_25

    :cond_3a
    const/4 v6, 0x1

    :goto_25
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_3c

    if-ne v3, v11, :cond_3b

    goto :goto_26

    :cond_3b
    const/4 v1, 0x0

    goto :goto_27

    :cond_3c
    :goto_26
    new-instance v3, Lqj0;

    const/4 v1, 0x0

    invoke-direct {v3, v2, v12, v1}, Lqj0;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_27
    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x4

    if-eq v13, v4, :cond_3d

    move v6, v1

    goto :goto_28

    :cond_3d
    const/4 v6, 0x1

    :goto_28
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_3f

    if-ne v5, v11, :cond_3e

    goto :goto_29

    :cond_3e
    const/4 v4, 0x1

    goto :goto_2a

    :cond_3f
    :goto_29
    new-instance v5, Lqj0;

    const/4 v4, 0x1

    invoke-direct {v5, v2, v12, v4}, Lqj0;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_2a
    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x4

    if-eq v13, v6, :cond_40

    move v6, v1

    goto :goto_2b

    :cond_40
    move v6, v4

    :goto_2b
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_41

    if-ne v4, v11, :cond_42

    :cond_41
    new-instance v4, Lqj0;

    const/4 v1, 0x2

    invoke-direct {v4, v2, v12, v1}, Lqj0;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_42
    check-cast v4, Lkotlin/jvm/functions/Function0;

    sget v1, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v1, v1, 0x3

    const/high16 v6, 0xc00000

    or-int v32, v1, v6

    shl-int/lit8 v1, v24, 0x3

    const v6, 0x7e000

    and-int/2addr v1, v6

    const/high16 v6, 0x380000

    and-int v6, v24, v6

    or-int/2addr v1, v6

    shl-int/lit8 v6, v24, 0x6

    and-int v6, v6, v28

    or-int v33, v1, v6

    shr-int/lit8 v1, v24, 0x15

    and-int/lit8 v34, v1, 0x70

    move-object/from16 v24, p4

    move-object/from16 v28, v5

    move-object v11, v15

    move-object/from16 v15, v19

    move-object/from16 v13, v22

    move-object/from16 v12, v23

    move-object/from16 v14, v25

    move-object/from16 v10, v26

    move-object/from16 v18, v29

    move-object/from16 v19, v30

    move-object/from16 v20, v31

    move-object/from16 v23, p3

    move-object/from16 v26, p5

    move-object/from16 v25, p6

    move-object/from16 v30, p8

    move-object/from16 v22, v0

    move-object/from16 v29, v4

    move-object/from16 v31, v9

    move-object/from16 v9, v27

    move-object/from16 v27, v3

    invoke-static/range {v9 .. v34}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt;->c(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    goto :goto_2c

    :cond_43
    move-object v8, v0

    move-object/from16 v31, v9

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2c
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_44

    new-instance v0, Lp9;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    move/from16 v10, p10

    move-object v1, v2

    move-object v3, v7

    move-object v2, v8

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lp9;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_44
    return-void
.end method
