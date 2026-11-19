.class public abstract Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;",
        "viewState",
        "",
        "areNotificationsEnabled",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v3, p0

    move-object/from16 v1, p1

    move/from16 v6, p3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x5394de99

    move-object/from16 v2, p2

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    and-int/lit8 v0, v6, 0x6

    if-nez v0, :cond_2

    and-int/lit8 v0, v6, 0x8

    if-nez v0, :cond_0

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, v6

    goto :goto_2

    :cond_2
    move v0, v6

    :goto_2
    and-int/lit8 v2, v6, 0x30

    if-nez v2, :cond_4

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    goto :goto_3

    :cond_3
    const/16 v2, 0x10

    :goto_3
    or-int/2addr v0, v2

    :cond_4
    move v10, v0

    and-int/lit8 v0, v10, 0x13

    const/16 v2, 0x12

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v0, v2, :cond_5

    move v0, v11

    goto :goto_4

    :cond_5
    move v0, v12

    :goto_4
    and-int/lit8 v2, v10, 0x1

    invoke-virtual {v7, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    invoke-static {v7}, Lcom/vuitton/android/presentation/compose/components/LifecycleEventKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_6

    const v5, 0x7920f5c5

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v7}, Lcom/google/accompanist/permissions/PermissionStateKt;->a(Landroidx/compose/runtime/Composer;)Lcom/google/accompanist/permissions/MutablePermissionState;

    move-result-object v5

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_6
    const v5, 0x792287cd

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v5, 0x0

    :goto_5
    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v15

    invoke-static {v15, v7}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v15

    invoke-static {v4}, Lcom/vuitton/android/presentation/utils/NotificationUtils;->a(Landroid/content/Context;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v14, v7}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v14

    sget-object v12, Lcom/google/accompanist/permissions/PermissionStatus$Granted;->a:Lcom/google/accompanist/permissions/PermissionStatus$Granted;

    if-lt v0, v2, :cond_9

    if-eqz v5, :cond_9

    iget-object v8, v5, Lcom/google/accompanist/permissions/MutablePermissionState;->d:Landroidx/compose/runtime/MutableState;

    move-object/from16 v17, v8

    check-cast v17, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Lcom/google/accompanist/permissions/PermissionStatus;

    if-eqz v9, :cond_9

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    check-cast v8, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v8}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/accompanist/permissions/PermissionStatus;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v8, 0x0

    goto :goto_6

    :cond_7
    instance-of v9, v8, Lcom/google/accompanist/permissions/PermissionStatus$Denied;

    if-eqz v9, :cond_8

    check-cast v8, Lcom/google/accompanist/permissions/PermissionStatus$Denied;

    iget-boolean v8, v8, Lcom/google/accompanist/permissions/PermissionStatus$Denied;->a:Z

    :goto_6
    if-eqz v8, :cond_a

    goto :goto_7

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_9
    :goto_7
    if-ge v0, v2, :cond_b

    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_b

    :cond_a
    move v8, v11

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    :goto_8
    if-lt v0, v2, :cond_c

    if-eqz v5, :cond_c

    iget-object v5, v5, Lcom/google/accompanist/permissions/MutablePermissionState;->d:Landroidx/compose/runtime/MutableState;

    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/accompanist/permissions/PermissionStatus;

    if-eqz v5, :cond_c

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v11, :cond_c

    goto :goto_9

    :cond_c
    if-ge v0, v2, :cond_d

    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_9
    move v9, v11

    goto :goto_a

    :cond_d
    const/4 v9, 0x0

    :goto_a
    new-instance v12, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v12}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    and-int/lit8 v14, v10, 0x70

    const/16 v0, 0x20

    if-ne v14, v0, :cond_e

    move v0, v11

    goto :goto_b

    :cond_e
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    or-int/2addr v0, v2

    and-int/lit8 v2, v10, 0xe

    const/4 v5, 0x4

    if-eq v2, v5, :cond_10

    and-int/lit8 v5, v10, 0x8

    if-eqz v5, :cond_f

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_c

    :cond_f
    const/4 v5, 0x0

    goto :goto_d

    :cond_10
    :goto_c
    move v5, v11

    :goto_d
    or-int/2addr v0, v5

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_12

    if-ne v5, v11, :cond_11

    goto :goto_e

    :cond_11
    move v8, v2

    move-object v1, v3

    goto :goto_f

    :cond_12
    :goto_e
    new-instance v0, Ls0;

    const/4 v5, 0x4

    move/from16 v18, v8

    move v8, v2

    move/from16 v2, v18

    invoke-direct/range {v0 .. v5}, Ls0;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;I)V

    move-object v1, v3

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :goto_f
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-static {v12, v5, v7, v0}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v2

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v5, 0x4

    if-eq v8, v5, :cond_14

    and-int/lit8 v5, v10, 0x8

    if-eqz v5, :cond_13

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_10

    :cond_13
    move v5, v0

    goto :goto_11

    :cond_14
    :goto_10
    const/4 v5, 0x1

    :goto_11
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_15

    if-ne v8, v11, :cond_16

    :cond_15
    new-instance v8, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1;

    const/4 v5, 0x0

    invoke-direct {v8, v4, v2, v1, v5}, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1;-><init>(Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v3, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v2

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    const/16 v3, 0x20

    if-ne v14, v3, :cond_17

    const/4 v0, 0x1

    :cond_17
    or-int/2addr v0, v2

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_19

    if-ne v2, v11, :cond_18

    goto :goto_12

    :cond_18
    move-object v8, v1

    move-object v0, v2

    move-object v2, v13

    move-object/from16 v1, p1

    goto :goto_13

    :cond_19
    :goto_12
    new-instance v0, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$2$1;

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-object v8, v1

    move v2, v9

    move-object v1, v13

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$2$1;-><init>(Landroidx/lifecycle/Lifecycle$Event;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    move-object v1, v3

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_13
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v2, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    goto :goto_14

    :cond_1a
    move-object v8, v3

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_14
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_1b

    new-instance v2, Lg2;

    const/16 v3, 0xf

    invoke-direct {v2, v8, v1, v6, v3}, Lg2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method
