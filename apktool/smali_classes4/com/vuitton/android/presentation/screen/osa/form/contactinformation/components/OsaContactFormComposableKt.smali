.class public abstract Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00028\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 30

    move-object/from16 v2, p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x6af0b94

    move-object/from16 v1, p14

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p15, v0

    move-object/from16 v9, p1

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0x20

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    move-object/from16 v10, p2

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v0, v3

    move-object/from16 v12, p3

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    goto :goto_3

    :cond_3
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v0, v3

    move-object/from16 v15, p4

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x4000

    goto :goto_4

    :cond_4
    const/16 v3, 0x2000

    :goto_4
    or-int/2addr v0, v3

    move-object/from16 v3, p5

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const/high16 v16, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v16, 0x10000

    :goto_5
    or-int v0, v0, v16

    move-object/from16 v11, p6

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/high16 v16, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v16, 0x80000

    :goto_6
    or-int v0, v0, v16

    move-object/from16 v1, p7

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/high16 v17, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v17, 0x400000

    :goto_7
    or-int v0, v0, v17

    move-object/from16 v13, p8

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    const/high16 v19, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v19, 0x2000000

    :goto_8
    or-int v0, v0, v19

    move-object/from16 v14, p9

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    const/high16 v20, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v20, 0x10000000

    :goto_9
    or-int v20, v0, v20

    move-object/from16 v0, p10

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/16 v16, 0x4

    :goto_a
    move-object/from16 v6, p11

    goto :goto_b

    :cond_a
    const/16 v16, 0x2

    goto :goto_a

    :goto_b
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    move/from16 v18, v5

    goto :goto_c

    :cond_b
    const/16 v18, 0x10

    :goto_c
    or-int v5, v16, v18

    move-object/from16 v6, p12

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/16 v21, 0x100

    goto :goto_d

    :cond_c
    const/16 v21, 0x80

    :goto_d
    or-int v5, v5, v21

    move-object/from16 v6, p13

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v17, 0x800

    goto :goto_e

    :cond_d
    const/16 v17, 0x400

    :goto_e
    or-int v5, v5, v17

    const v16, 0x12492493

    and-int v8, v20, v16

    const v4, 0x12492492

    if-ne v8, v4, :cond_f

    and-int/lit16 v4, v5, 0x493

    const/16 v8, 0x492

    if-eq v4, v8, :cond_e

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v4, 0x1

    :goto_10
    and-int/lit8 v8, v20, 0x1

    invoke-virtual {v7, v8, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_35

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-static {v4, v7}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v26

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v8, :cond_10

    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v4, v7}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v8, :cond_11

    new-instance v6, Lfj0;

    move/from16 v19, v5

    const/4 v5, 0x0

    invoke-direct {v6, v5}, Lfj0;-><init>(I)V

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_11

    :cond_11
    move/from16 v19, v5

    const/4 v5, 0x0

    :goto_11
    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/16 v5, 0x30

    const/4 v0, 0x5

    invoke-static {v5, v0, v7, v6}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-ne v5, v8, :cond_12

    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    const/high16 v22, 0x1c00000

    and-int v6, v20, v22

    move-object/from16 v24, v0

    const/high16 v0, 0x800000

    if-ne v6, v0, :cond_13

    const/4 v0, 0x1

    goto :goto_12

    :cond_13
    const/4 v0, 0x0

    :goto_12
    or-int v0, v21, v0

    and-int/lit8 v6, v20, 0xe

    move/from16 v16, v0

    const/4 v0, 0x4

    if-eq v6, v0, :cond_14

    const/4 v0, 0x0

    goto :goto_13

    :cond_14
    const/4 v0, 0x1

    :goto_13
    or-int v0, v16, v0

    move/from16 v16, v0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v16, :cond_16

    if-ne v0, v8, :cond_15

    goto :goto_14

    :cond_15
    move-object v9, v4

    move-object v4, v5

    move-object/from16 v1, v24

    const/16 v18, 0x0

    goto :goto_15

    :cond_16
    :goto_14
    new-instance v0, Lr0;

    move-object/from16 v16, v4

    move-object v4, v5

    const/16 v5, 0x11

    move-object v3, v2

    move-object/from16 v9, v16

    const/16 v18, 0x0

    move-object v2, v1

    move-object/from16 v1, v24

    invoke-direct/range {v0 .. v5}, Lr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v2, v3

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_15
    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_17

    if-ne v3, v8, :cond_18

    :cond_17
    new-instance v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/a;

    invoke-direct {v3, v9, v4, v1}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/a;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_19

    if-ne v9, v8, :cond_1a

    :cond_19
    new-instance v9, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt$OsaContactFormComposable$1$1;

    const/4 v5, 0x0

    invoke-direct {v9, v4, v1, v5}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt$OsaContactFormComposable$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v0, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v5, 0x4

    if-eq v6, v5, :cond_1b

    move/from16 v5, v18

    goto :goto_16

    :cond_1b
    const/4 v5, 0x1

    :goto_16
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_1c

    if-ne v9, v8, :cond_1d

    :cond_1c
    new-instance v9, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt$OsaContactFormComposable$2$1;

    const/4 v5, 0x0

    invoke-direct {v9, v2, v5}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt$OsaContactFormComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v0, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v5, 0x4

    if-eq v6, v5, :cond_1e

    move/from16 v5, v18

    goto :goto_17

    :cond_1e
    const/4 v5, 0x1

    :goto_17
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v5, v9

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v5, v9

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_1f

    if-ne v9, v8, :cond_20

    :cond_1f
    new-instance v9, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt$OsaContactFormComposable$3$1;

    const/4 v5, 0x0

    invoke-direct {v9, v2, v3, v1, v5}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt$OsaContactFormComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v0, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v8, :cond_21

    invoke-static {v7}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v5

    :cond_21
    move-object v9, v5

    check-cast v9, Landroidx/compose/material3/SnackbarHostState;

    const/4 v5, 0x4

    if-eq v6, v5, :cond_22

    move/from16 v5, v18

    goto :goto_18

    :cond_22
    const/4 v5, 0x1

    :goto_18
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    or-int v5, v5, v21

    move-object/from16 v24, v1

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v5, :cond_23

    if-ne v1, v8, :cond_24

    :cond_23
    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt$OsaContactFormComposable$4$1;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v9, v3, v5}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt$OsaContactFormComposable$4$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v0, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;

    const/4 v5, 0x4

    if-eq v6, v5, :cond_25

    move/from16 v5, v18

    goto :goto_19

    :cond_25
    const/4 v5, 0x1

    :goto_19
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_27

    if-ne v0, v8, :cond_26

    goto :goto_1a

    :cond_26
    move-object/from16 v17, v9

    move v9, v6

    goto :goto_1b

    :cond_27
    :goto_1a
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt$OsaContactFormComposable$5$1;

    const-string v5, "onFieldUpdated(Lcom/vuitton/android/presentation/screen/osa/models/FormTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V"

    move v1, v6

    const/4 v6, 0x0

    move v3, v1

    const/4 v1, 0x3

    move v4, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    move/from16 v25, v4

    const-string v4, "onFieldUpdated"

    move-object/from16 v17, v9

    move/from16 v9, v25

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1b
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object/from16 v18, v0

    check-cast v18, Lkotlin/jvm/functions/Function3;

    const/4 v5, 0x4

    if-eq v9, v5, :cond_28

    const/4 v6, 0x0

    goto :goto_1c

    :cond_28
    const/4 v6, 0x1

    :goto_1c
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_29

    if-ne v0, v8, :cond_2a

    :cond_29
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt$OsaContactFormComposable$6$1;

    const-string v5, "checkAccountStatus(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    const-string v4, "checkAccountStatus"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object/from16 v25, v0

    check-cast v25, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    if-eq v9, v5, :cond_2b

    const/4 v6, 0x0

    goto :goto_1d

    :cond_2b
    const/4 v6, 0x1

    :goto_1d
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_2c

    if-ne v0, v8, :cond_2d

    :cond_2c
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt$OsaContactFormComposable$7$1;

    const-string v5, "resetAccountStatus()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    const-string v4, "resetAccountStatus"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2d
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object/from16 v27, v0

    check-cast v27, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x4

    if-eq v9, v5, :cond_2e

    const/4 v6, 0x0

    goto :goto_1e

    :cond_2e
    const/4 v6, 0x1

    :goto_1e
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_2f

    if-ne v0, v8, :cond_30

    :cond_2f
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt$OsaContactFormComposable$8$1;

    const-string v5, "onConfirmAppointment(Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    const-string v4, "onConfirmAppointment"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_30
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object/from16 v28, v0

    check-cast v28, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    if-eq v9, v5, :cond_31

    const/4 v6, 0x0

    goto :goto_1f

    :cond_31
    const/4 v6, 0x1

    :goto_1f
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_32

    if-ne v0, v8, :cond_33

    :cond_32
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt$OsaContactFormComposable$9$1;

    const-string v5, "sendTrackingHit(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    const-string v4, "sendTrackingHit"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_33
    check-cast v0, Lkotlin/reflect/KFunction;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v1, v20, 0x70

    or-int/lit16 v1, v1, 0x180

    sget v2, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v2, v2, 0x9

    or-int/2addr v1, v2

    shl-int/lit8 v2, v20, 0x9

    const/high16 v3, 0x70000

    and-int v4, v2, v3

    or-int/2addr v1, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v2

    or-int/2addr v1, v4

    and-int v4, v2, v22

    or-int/2addr v1, v4

    const/high16 v4, 0xe000000

    and-int/2addr v4, v2

    or-int/2addr v1, v4

    const/high16 v4, 0x70000000

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    shr-int/lit8 v2, v19, 0x6

    and-int/lit8 v2, v2, 0x7e

    shr-int/lit8 v4, v20, 0x12

    and-int/lit16 v5, v4, 0x380

    or-int/2addr v2, v5

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v2, v4

    shl-int/lit8 v4, v19, 0xc

    const v5, 0xe000

    and-int/2addr v5, v4

    or-int/2addr v2, v5

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    move-object/from16 v9, p5

    move-object/from16 v22, v0

    move-object v6, v10

    move-object v10, v11

    move-object v8, v15

    move-object/from16 v3, v17

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    move-object/from16 v19, v25

    move-object/from16 v20, v27

    move-object/from16 v15, p10

    move-object/from16 v11, p12

    move/from16 v24, v1

    move/from16 v25, v2

    move-object/from16 v23, v7

    move-object v7, v12

    move-object/from16 v17, v16

    move-object/from16 v1, v21

    move-object/from16 v21, v28

    move-object/from16 v2, p1

    move-object/from16 v16, p11

    move-object/from16 v12, p13

    invoke-static/range {v1 .. v25}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormScreenKt;->b(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v0, v23

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->b:Z

    if-eqz v1, :cond_34

    const v1, 0x34092094

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-static {v5, v0, v5, v1}, Lcom/vuitton/android/designkit/components/components/LVLoadingOverlayKt;->a(ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_20

    :cond_34
    const/4 v5, 0x0

    const v1, 0x3409a036

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_20

    :cond_35
    move-object v0, v7

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_20
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_36

    move-object v1, v0

    new-instance v0, Lal;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p15

    move-object/from16 v29, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v15}, Lal;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    move-object/from16 v1, v29

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_36
    return-void
.end method
