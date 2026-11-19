.class public abstract Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;",
        "permissionsViewState",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p14

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x715f878d

    move-object/from16 v3, p15

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p16, v2

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x10

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    or-int/2addr v2, v6

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    const/16 v16, 0x80

    const/16 v17, 0x100

    if-eqz v6, :cond_2

    move/from16 v6, v17

    goto :goto_2

    :cond_2
    move/from16 v6, v16

    :goto_2
    or-int/2addr v2, v6

    move-object/from16 v6, p3

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    const/16 v19, 0x400

    const/16 v20, 0x800

    if-eqz v18, :cond_3

    move/from16 v18, v20

    goto :goto_3

    :cond_3
    move/from16 v18, v19

    :goto_3
    or-int v2, v2, v18

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    const/16 v21, 0x2000

    if-eqz v18, :cond_4

    const/16 v18, 0x4000

    goto :goto_4

    :cond_4
    move/from16 v18, v21

    :goto_4
    or-int v2, v2, v18

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/high16 v18, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v18, 0x10000

    :goto_5
    or-int v2, v2, v18

    move-object/from16 v3, p6

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    const/high16 v23, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v23, 0x80000

    :goto_6
    or-int v2, v2, v23

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    const/high16 v23, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v23, 0x400000

    :goto_7
    or-int v2, v2, v23

    move-object/from16 v3, p8

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    const/high16 v24, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v24, 0x2000000

    :goto_8
    or-int v2, v2, v24

    move-object/from16 v3, p9

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    const/high16 v24, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v24, 0x10000000

    :goto_9
    or-int v24, v2, v24

    move-object/from16 v2, p10

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    const/16 v25, 0x4

    goto :goto_a

    :cond_a
    const/16 v25, 0x2

    :goto_a
    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    const/16 v7, 0x20

    :cond_b
    or-int v7, v25, v7

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    move/from16 v16, v17

    :cond_c
    or-int v7, v7, v16

    move-object/from16 v3, p13

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v19, v20

    :cond_d
    or-int v7, v7, v19

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v21, 0x4000

    :cond_e
    or-int v7, v7, v21

    const v16, 0x12492493

    and-int v5, v24, v16

    const v8, 0x12492492

    const/16 v25, 0x1

    if-ne v5, v8, :cond_10

    and-int/lit16 v5, v7, 0x2493

    const/16 v8, 0x2492

    if-eq v5, v8, :cond_f

    goto :goto_b

    :cond_f
    const/4 v5, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    move/from16 v5, v25

    :goto_c
    and-int/lit8 v8, v24, 0x1

    invoke-virtual {v15, v8, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_2a

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-static {v5, v15}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v26

    invoke-interface {v4}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-static {v5, v15}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v3, v24, 0x70

    const/16 v2, 0x20

    if-eq v3, v2, :cond_11

    const/4 v2, 0x0

    goto :goto_d

    :cond_11
    move/from16 v2, v25

    :goto_d
    move/from16 v19, v2

    and-int/lit8 v2, v24, 0xe

    move-object/from16 v20, v5

    const/4 v5, 0x4

    if-eq v2, v5, :cond_12

    const/4 v2, 0x0

    goto :goto_e

    :cond_12
    move/from16 v2, v25

    :goto_e
    or-int v2, v19, v2

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_13

    if-ne v5, v10, :cond_14

    :cond_13
    new-instance v5, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxComposableKt$InboxComposable$1$1;

    const/4 v2, 0x0

    invoke-direct {v5, v4, v1, v2}, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxComposableKt$InboxComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v8, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/16 v2, 0x20

    if-eq v3, v2, :cond_15

    const/4 v5, 0x0

    goto :goto_f

    :cond_15
    move/from16 v5, v25

    :goto_f
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_16

    if-ne v8, v10, :cond_17

    :cond_16
    move/from16 v16, v2

    goto :goto_10

    :cond_17
    move/from16 v27, v3

    move/from16 v21, v7

    const/4 v1, 0x4

    goto :goto_11

    :goto_10
    new-instance v2, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxComposableKt$InboxComposable$2$1;

    move v5, v7

    const-string v7, "onNotificationPermissionGranted(Z)V"

    const/4 v8, 0x0

    move/from16 v19, v3

    const/4 v3, 0x0

    move/from16 v21, v5

    const-class v5, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    const-string v6, "onNotificationPermissionGranted"

    move/from16 v27, v19

    const/4 v1, 0x4

    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v8, v2

    :goto_11
    check-cast v8, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v2, v24, 0x3

    const/16 v3, 0xe

    and-int/2addr v2, v3

    invoke-static {v4, v8, v15, v2}, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt;->a(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->b:Z

    const/high16 v28, 0x1c00000

    const/high16 v29, 0x70000

    const/4 v5, 0x6

    if-eqz v2, :cond_18

    const v2, -0x5bcc8af4

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v2, Lkw;

    invoke-direct {v2, v0, v1}, Lkw;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v1, -0x23f72ca6

    invoke-static {v1, v2, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    invoke-static {v1, v15, v5}, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxLoadingScreenKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    move v2, v3

    move v3, v1

    move v1, v2

    move-object v2, v10

    move-object v4, v11

    move-object v6, v15

    :goto_13
    move-object/from16 v10, p5

    goto/16 :goto_1a

    :cond_18
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->c:Z

    if-eqz v1, :cond_19

    const v1, -0x5bca8908

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v1, Lkw;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Lkw;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v2, 0x43ce1e0f

    invoke-static {v2, v1, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    and-int/lit8 v2, v21, 0x70

    or-int/2addr v2, v5

    invoke-static {v1, v12, v15, v2}, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxErrorScreenKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_19
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    const v1, -0x5bc6b7ed

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    new-instance v2, Lkw;

    invoke-direct {v2, v0, v5}, Lkw;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v5, -0x696d4a43

    invoke-static {v5, v2, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v16

    move-object/from16 v2, v20

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    const v17, 0xe000

    and-int v6, v21, v17

    const/16 v7, 0x4000

    if-ne v6, v7, :cond_1a

    move/from16 v6, v25

    goto :goto_14

    :cond_1a
    const/4 v6, 0x0

    :goto_14
    or-int/2addr v5, v6

    move/from16 v6, v27

    const/16 v8, 0x20

    if-eq v6, v8, :cond_1b

    const/16 v18, 0x0

    goto :goto_15

    :cond_1b
    move/from16 v18, v25

    :goto_15
    or-int v5, v5, v18

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v5, :cond_1c

    if-ne v3, v10, :cond_1d

    :cond_1c
    new-instance v3, Lpp;

    const/16 v5, 0xd

    invoke-direct {v3, v14, v4, v2, v5}, Lpp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object/from16 v19, v3

    check-cast v19, Lkotlin/jvm/functions/Function0;

    and-int v2, v24, v17

    if-ne v2, v7, :cond_1e

    move/from16 v3, v25

    goto :goto_16

    :cond_1e
    const/4 v3, 0x0

    :goto_16
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v3, :cond_1f

    if-ne v2, v10, :cond_20

    :cond_1f
    new-instance v2, Lpy;

    const/16 v3, 0xb

    invoke-direct {v2, v9, v3}, Lpy;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    move-object/from16 v20, v2

    check-cast v20, Lkotlin/jvm/functions/Function0;

    if-eq v6, v8, :cond_21

    const/4 v3, 0x0

    goto :goto_17

    :cond_21
    move/from16 v3, v25

    :goto_17
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v3, :cond_23

    if-ne v2, v10, :cond_22

    goto :goto_18

    :cond_22
    move-object/from16 v22, v1

    const/16 v1, 0xe

    goto :goto_19

    :cond_23
    :goto_18
    new-instance v2, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxComposableKt$InboxComposable$8$1;

    const-string v7, "closeBottomSheet()V"

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-class v5, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    const-string v6, "closeBottomSheet"

    move-object/from16 v22, v1

    const/16 v1, 0xe

    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_19
    check-cast v2, Lkotlin/reflect/KFunction;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v3, v24, 0x3

    and-int v3, v3, v17

    or-int/lit8 v3, v3, 0x30

    move-object/from16 v21, v15

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v15, v22

    move-object/from16 v19, p3

    move-object/from16 v20, v2

    move/from16 v22, v3

    invoke-static/range {v15 .. v22}, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxEmptyNotificationListScreenKt;->a(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v6, v21

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v3, v2

    move-object v2, v10

    move-object v4, v11

    goto/16 :goto_13

    :cond_24
    move v1, v3

    move-object v6, v15

    const v2, -0x5bba2259

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->d:Ljava/util/List;

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->h:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;

    iget-boolean v5, v5, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->i:Z

    new-instance v7, Lx2;

    const/16 v8, 0x9

    invoke-direct {v7, v13, v0, v8}, Lx2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    const v15, -0x67e08860

    invoke-static {v15, v7, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    shr-int/lit8 v15, v24, 0x9

    move/from16 v16, v8

    and-int v8, v15, v29

    or-int/lit16 v8, v8, 0x6000

    const/high16 v17, 0x380000

    and-int v15, v15, v17

    or-int/2addr v8, v15

    shl-int/lit8 v15, v21, 0x15

    and-int v15, v15, v28

    or-int/2addr v8, v15

    shl-int/lit8 v15, v24, 0x9

    const/high16 v17, 0xe000000

    and-int v17, v15, v17

    or-int v8, v8, v17

    const/high16 v17, 0x70000000

    and-int v15, v15, v17

    or-int v22, v8, v15

    shr-int/lit8 v8, v21, 0x9

    and-int/lit8 v23, v8, 0xe

    move-object v12, v10

    move-object v10, v2

    move-object v2, v12

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    move-object/from16 v20, p13

    move-object v12, v4

    move v13, v5

    move-object/from16 v21, v6

    move-object v14, v7

    move-object v4, v11

    move-object v11, v3

    invoke-static/range {v10 .. v23}, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxNotificationListScreenKt;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v10, v18

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1a
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;->e:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    if-nez v5, :cond_25

    const v1, -0x5babd3c0

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1d

    :cond_25
    const v3, -0x5babd3bf

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int v3, v24, v29

    const/high16 v7, 0x20000

    if-ne v3, v7, :cond_26

    move/from16 v3, v25

    goto :goto_1b

    :cond_26
    const/4 v3, 0x0

    :goto_1b
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v3, v7

    and-int v7, v24, v28

    const/high16 v8, 0x800000

    if-ne v7, v8, :cond_27

    goto :goto_1c

    :cond_27
    const/16 v25, 0x0

    :goto_1c
    or-int v3, v3, v25

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_28

    if-ne v7, v2, :cond_29

    :cond_28
    new-instance v7, Lpp;

    invoke-direct {v7, v10, v5, v4, v1}, Lpp;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_29
    check-cast v7, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v1, v24, 0xf

    and-int/lit16 v1, v1, 0x380

    const/4 v2, 0x0

    move-object v3, v5

    move-object v5, v7

    move v7, v1

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/account/inbox/components/NotificationDialogKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1d

    :cond_2a
    move-object v6, v15

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1d
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_2b

    new-instance v0, La40;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move-object/from16 v30, v1

    move-object v5, v9

    move-object v6, v10

    move-object/from16 v1, p0

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v16}, La40;-><init>(Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    move-object v1, v0

    move-object/from16 v0, v30

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2b
    return-void
.end method

.method public static final b(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 17

    const v0, -0x3084ea0b

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v1, p4, 0x6

    move v2, v1

    move/from16 v1, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, p4, 0x6

    if-nez v1, :cond_2

    move/from16 v1, p0

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int v2, p4, v2

    goto :goto_1

    :cond_2
    move/from16 v1, p0

    move/from16 v2, p4

    :goto_1
    and-int/lit8 v3, p5, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v4, p1

    :goto_2
    move-object/from16 v7, p2

    goto :goto_4

    :cond_3
    move-object/from16 v4, p1

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_3

    :cond_4
    const/16 v5, 0x10

    :goto_3
    or-int/2addr v2, v5

    goto :goto_2

    :goto_4
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x100

    goto :goto_5

    :cond_5
    const/16 v5, 0x80

    :goto_5
    or-int/2addr v2, v5

    and-int/lit16 v5, v2, 0x93

    const/16 v6, 0x92

    const/4 v8, 0x0

    if-eq v5, v6, :cond_6

    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    move v5, v8

    :goto_6
    and-int/lit8 v6, v2, 0x1

    invoke-virtual {v12, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v0, :cond_7

    move v0, v8

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    if-eqz v3, :cond_9

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v3, :cond_8

    new-instance v1, Ll30;

    const/16 v3, 0x1a

    invoke-direct {v1, v3}, Ll30;-><init>(I)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v1, Lkotlin/jvm/functions/Function0;

    goto :goto_8

    :cond_9
    move-object v1, v4

    :goto_8
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v3, 0x7f140d8b

    invoke-static {v12, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lb40;

    invoke-direct {v3, v0, v1}, Lb40;-><init>(ZLkotlin/jvm/functions/Function0;)V

    const v5, 0x62d039f4

    invoke-static {v5, v3, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    shl-int/lit8 v2, v2, 0xc

    const/high16 v3, 0x380000

    and-int/2addr v2, v3

    const/high16 v3, 0xc00000

    or-int v13, v2, v3

    const/4 v14, 0x0

    const/16 v15, 0xf37

    move-object v2, v1

    const/4 v1, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    move-object v5, v3

    const/4 v3, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    move-object v9, v6

    const/4 v6, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object/from16 v16, v11

    const/4 v11, 0x0

    invoke-static/range {v1 .. v15}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;III)V

    move v5, v0

    move-object/from16 v6, v16

    goto :goto_9

    :cond_a
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    move v5, v1

    move-object v6, v4

    :goto_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v4, Lwd;

    move-object/from16 v7, p2

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lwd;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object v4, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method
