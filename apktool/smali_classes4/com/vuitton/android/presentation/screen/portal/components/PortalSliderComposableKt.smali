.class public abstract Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;",
        "permissionViewState",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x30746d9f

    move-object/from16 v3, p5

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p6, v0

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    const/16 v14, 0x20

    if-eqz v3, :cond_1

    move v3, v14

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    move-object/from16 v8, p2

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v0, v3

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    goto :goto_3

    :cond_3
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v0, v3

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x4000

    goto :goto_4

    :cond_4
    const/16 v3, 0x2000

    :goto_4
    or-int/2addr v0, v3

    and-int/lit16 v3, v0, 0x2493

    const/16 v4, 0x2492

    const/4 v5, 0x0

    if-eq v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    move v3, v5

    :goto_5
    and-int/lit8 v4, v0, 0x1

    invoke-virtual {v12, v4, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_28

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-static {v5, v4, v12, v3}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v22

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-static {v3, v12}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v16

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->u:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v3, v12}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v7, :cond_6

    invoke-static {v12}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v4

    :cond_6
    check-cast v4, Landroidx/compose/material3/SnackbarHostState;

    move-object/from16 v17, v3

    move-object v3, v4

    invoke-static {v12}, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v7, :cond_7

    sget-object v15, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v15, v12}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v15, Lkotlinx/coroutines/CoroutineScope;

    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v13, v0, 0x70

    if-eq v13, v14, :cond_8

    const/16 v23, 0x0

    goto :goto_6

    :cond_8
    const/16 v23, 0x1

    :goto_6
    and-int/lit8 v14, v0, 0xe

    move/from16 v25, v0

    const/4 v0, 0x4

    if-eq v14, v0, :cond_9

    const/4 v0, 0x0

    goto :goto_7

    :cond_9
    const/4 v0, 0x1

    :goto_7
    or-int v0, v23, v0

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    or-int v0, v0, v23

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    or-int v0, v0, v23

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    or-int v0, v0, v23

    move/from16 v23, v0

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v23, :cond_b

    if-ne v0, v7, :cond_a

    goto :goto_8

    :cond_a
    move-object v11, v7

    move-object/from16 v8, v17

    move/from16 v10, v25

    move-object v7, v3

    move-object v3, v5

    move-object v5, v6

    goto :goto_9

    :cond_b
    :goto_8
    new-instance v0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComposableKt$PortalSliderComposable$1$1;

    move-object/from16 v23, v7

    const/4 v7, 0x0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    move-object/from16 v8, v17

    move-object/from16 v11, v23

    move/from16 v10, v25

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComposableKt$PortalSliderComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/coroutines/Continuation;)V

    move-object v7, v3

    move-object v3, v6

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_9
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v9, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/16 v0, 0x20

    if-eq v13, v0, :cond_c

    const/4 v0, 0x0

    goto :goto_a

    :cond_c
    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_e

    if-ne v1, v11, :cond_d

    goto :goto_b

    :cond_d
    move-object v0, v1

    move-object v9, v4

    move-object/from16 v17, v7

    move/from16 v25, v10

    move-object/from16 v1, p1

    move-object v7, v3

    move-object v10, v5

    goto :goto_c

    :cond_e
    :goto_b
    new-instance v0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComposableKt$PortalSliderComposable$2$1;

    move-object v9, v5

    const-string v5, "onNotificationPermissionGranted(Z)V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v2, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    move-object/from16 v17, v4

    const-string v4, "onNotificationPermissionGranted"

    move/from16 v25, v10

    move-object v10, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v7

    move-object v7, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_c
    check-cast v0, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v2, v25, 0x3

    and-int/lit8 v2, v2, 0xe

    invoke-static {v1, v0, v12, v2}, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt;->a(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;

    const/4 v0, 0x4

    if-eq v14, v0, :cond_f

    const/4 v5, 0x0

    goto :goto_d

    :cond_f
    const/4 v5, 0x1

    :goto_d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_11

    if-ne v0, v11, :cond_10

    goto :goto_e

    :cond_10
    move-object/from16 v1, p0

    goto :goto_f

    :cond_11
    :goto_e
    new-instance v0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComposableKt$PortalSliderComposable$3$1;

    const-string v5, "onSoundButtonClick()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;

    const-string v4, "onSoundButtonClick"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_f
    move-object/from16 v18, v0

    check-cast v18, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v14, v0, :cond_12

    const/4 v5, 0x0

    goto :goto_10

    :cond_12
    const/4 v5, 0x1

    :goto_10
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_13

    if-ne v0, v11, :cond_14

    :cond_13
    new-instance v0, Lep0;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lep0;-><init>(Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;I)V

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v26, v0

    check-cast v26, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x4

    if-eq v14, v0, :cond_15

    const/4 v5, 0x0

    goto :goto_11

    :cond_15
    const/4 v5, 0x1

    :goto_11
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_16

    if-ne v0, v11, :cond_17

    :cond_16
    new-instance v0, Lxo0;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lxo0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v27, v0

    check-cast v27, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-eq v14, v0, :cond_18

    const/4 v5, 0x0

    goto :goto_12

    :cond_18
    const/4 v5, 0x1

    :goto_12
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v5

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    const/16 v2, 0x20

    if-eq v13, v2, :cond_19

    const/4 v5, 0x0

    goto :goto_13

    :cond_19
    const/4 v5, 0x1

    :goto_13
    or-int/2addr v0, v5

    move/from16 v3, v25

    and-int/lit16 v4, v3, 0x380

    const/16 v5, 0x100

    if-ne v4, v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_14

    :cond_1a
    const/4 v5, 0x0

    :goto_14
    or-int/2addr v0, v5

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_1c

    if-ne v4, v11, :cond_1b

    goto :goto_15

    :cond_1b
    move/from16 v24, v2

    move/from16 v25, v3

    move-object v6, v8

    move-object v9, v10

    move-object/from16 v3, v17

    move-object/from16 v2, p1

    goto :goto_16

    :cond_1c
    :goto_15
    new-instance v0, Lcom/vuitton/android/presentation/screen/portal/components/b;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v24, v2

    move/from16 v25, v3

    move-object v3, v7

    move-object v6, v8

    move-object v8, v9

    move-object v9, v10

    move-object v2, v15

    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/portal/components/b;-><init>(Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;)V

    move-object v2, v4

    move-object v3, v7

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_16
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-eq v14, v0, :cond_1d

    const/4 v5, 0x0

    goto :goto_17

    :cond_1d
    const/4 v5, 0x1

    :goto_17
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_1f

    if-ne v0, v11, :cond_1e

    goto :goto_18

    :cond_1e
    const/4 v5, 0x1

    goto :goto_19

    :cond_1f
    :goto_18
    new-instance v0, Lep0;

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5}, Lep0;-><init>(Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;I)V

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_19
    move-object/from16 v17, v0

    check-cast v17, Lkotlin/jvm/functions/Function0;

    check-cast v18, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x4

    if-eq v14, v0, :cond_20

    const/4 v0, 0x0

    goto :goto_1a

    :cond_20
    move v0, v5

    :goto_1a
    const v7, 0xe000

    and-int v7, v25, v7

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_21

    move v7, v5

    goto :goto_1b

    :cond_21
    const/4 v7, 0x0

    :goto_1b
    or-int/2addr v0, v7

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x9

    if-nez v0, :cond_23

    if-ne v7, v11, :cond_22

    goto :goto_1c

    :cond_22
    move-object/from16 v0, p4

    goto :goto_1d

    :cond_23
    :goto_1c
    new-instance v7, Ljm0;

    move-object/from16 v0, p4

    invoke-direct {v7, v1, v0, v8}, Ljm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1d
    move-object/from16 v19, v7

    check-cast v19, Lkotlin/jvm/functions/Function0;

    const/16 v21, 0x30

    move v14, v13

    move-object v13, v3

    move v3, v14

    move-object/from16 v20, v12

    move-object/from16 v12, v16

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    move-object/from16 v16, v4

    move/from16 v4, v24

    invoke-static/range {v12 .. v21}, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderScreenKt;->a(Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v7, v20

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    sget-object v12, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;->f:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_27

    const v10, -0x42ed9574

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v10, 0x7f140319

    invoke-static {v7, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    if-eq v3, v4, :cond_24

    const/4 v5, 0x0

    :cond_24
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v5, :cond_25

    if-ne v3, v11, :cond_26

    :cond_25
    new-instance v3, Lfp0;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lfp0;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_26
    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function0;

    new-instance v3, Lr;

    move-object/from16 v10, p3

    invoke-direct {v3, v6, v9, v2, v10}, Lr;-><init>(Landroidx/compose/runtime/MutableState;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lkotlin/jvm/functions/Function0;)V

    const v4, -0x2a7bf950

    invoke-static {v4, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v21

    sget v3, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/2addr v3, v8

    const/high16 v4, 0x6000000

    or-int v23, v3, v4

    const/16 v24, 0xf1

    const/4 v12, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v15, v22

    move-object/from16 v22, v7

    invoke-static/range {v12 .. v24}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1e

    :cond_27
    move-object/from16 v10, p3

    const/4 v4, 0x0

    const v3, -0x42e0045d

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1e

    :cond_28
    move-object v0, v11

    move-object v7, v12

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1e
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_29

    new-instance v0, Lkj0;

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object v4, v10

    invoke-direct/range {v0 .. v6}, Lkj0;-><init>(Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_29
    return-void
.end method
