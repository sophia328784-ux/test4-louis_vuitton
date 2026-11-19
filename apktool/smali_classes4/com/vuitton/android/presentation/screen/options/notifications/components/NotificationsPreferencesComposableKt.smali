.class public abstract Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;",
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
.method public static final a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    const v0, -0x7912466

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p5, v0

    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    invoke-virtual {v9, p3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x800

    goto :goto_3

    :cond_3
    const/16 v5, 0x400

    :goto_3
    or-int/2addr v0, v5

    and-int/lit16 v5, v0, 0x493

    const/16 v6, 0x492

    const/4 v11, 0x0

    if-eq v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    move v5, v11

    :goto_4
    and-int/lit8 v6, v0, 0x1

    invoke-virtual {v9, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NotifyMeDisabled;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NotifyMeDisabled;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NoOptInCustomization;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NoOptInCustomization;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$None;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$None;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x6cafa0c7

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_6
    const v0, 0x6cb033e8

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_7
    :goto_5
    const v5, 0x6caa1ae3

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v4, p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iget-object v5, p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;->c:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iget-object v6, p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;->d:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    and-int/lit8 v7, v0, 0xe

    shl-int/lit8 v0, v0, 0x6

    const v8, 0xe000

    and-int/2addr v8, v0

    or-int/2addr v7, v8

    const/high16 v8, 0x70000

    and-int/2addr v0, v8

    or-int v10, v7, v0

    move-object v3, p0

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v3 .. v10}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationPermissionBottomSheetKt;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_8
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_9

    new-instance v0, Luv;

    const/16 v6, 0xd

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Luv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/Function;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;II)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x311ac2d9

    move-object/from16 v2, p6

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p7, v0

    move-object/from16 v3, p1

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v0, v5

    move-object/from16 v5, p2

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x100

    goto :goto_2

    :cond_2
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v0, v7

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x800

    goto :goto_3

    :cond_3
    const/16 v7, 0x400

    :goto_3
    or-int/2addr v0, v7

    move-object/from16 v7, p4

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x4000

    goto :goto_4

    :cond_4
    const/16 v10, 0x2000

    :goto_4
    or-int/2addr v0, v10

    and-int/lit8 v10, p8, 0x20

    const/high16 v12, 0x20000

    if-eqz v10, :cond_5

    const/high16 v14, 0x30000

    or-int/2addr v0, v14

    move/from16 v14, p5

    goto :goto_6

    :cond_5
    move/from16 v14, p5

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v15

    if-eqz v15, :cond_6

    move v15, v12

    goto :goto_5

    :cond_6
    const/high16 v15, 0x10000

    :goto_5
    or-int/2addr v0, v15

    :goto_6
    const v15, 0x12493

    and-int/2addr v15, v0

    const v11, 0x12492

    const/4 v9, 0x0

    const/16 v17, 0x1

    if-eq v15, v11, :cond_7

    move/from16 v11, v17

    goto :goto_7

    :cond_7
    move v11, v9

    :goto_7
    and-int/lit8 v15, v0, 0x1

    invoke-virtual {v13, v15, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_20

    if-eqz v10, :cond_8

    move v10, v9

    goto :goto_8

    :cond_8
    move v10, v14

    :goto_8
    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v11

    invoke-static {v11, v13}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;->j2()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v14

    invoke-static {v14, v13}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v14

    const/4 v15, 0x7

    const/4 v6, 0x0

    invoke-static {v9, v15, v13, v6}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v15

    sget-object v8, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v6, :cond_9

    invoke-static {v13}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v9

    :cond_9
    check-cast v9, Landroidx/compose/material3/SnackbarHostState;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/high16 v18, 0x70000

    and-int v3, v0, v18

    if-ne v3, v12, :cond_a

    move/from16 v3, v17

    goto :goto_9

    :cond_a
    const/4 v3, 0x0

    :goto_9
    and-int/lit8 v12, v0, 0xe

    move/from16 v18, v3

    const/4 v3, 0x4

    if-eq v12, v3, :cond_b

    const/4 v3, 0x0

    goto :goto_a

    :cond_b
    move/from16 v3, v17

    :goto_a
    or-int v3, v18, v3

    move/from16 v18, v3

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v18, :cond_c

    if-ne v3, v6, :cond_d

    :cond_c
    new-instance v3, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$1$1;

    const/4 v4, 0x0

    invoke-direct {v3, v10, v1, v4}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$1$1;-><init>(ZLcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v2, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v3, 0x4

    if-eq v12, v3, :cond_e

    const/4 v3, 0x0

    goto :goto_b

    :cond_e
    move/from16 v3, v17

    :goto_b
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_f

    if-ne v4, v6, :cond_10

    :cond_f
    new-instance v4, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$2$1;

    const/4 v3, 0x0

    invoke-direct {v4, v1, v9, v8, v3}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v2, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    const/4 v4, 0x4

    if-eq v12, v4, :cond_11

    const/4 v4, 0x0

    :goto_c
    move-object/from16 v18, v2

    goto :goto_d

    :cond_11
    move/from16 v4, v17

    goto :goto_c

    :goto_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v4, :cond_13

    if-ne v2, v6, :cond_12

    goto :goto_e

    :cond_12
    const/4 v4, 0x0

    goto :goto_f

    :cond_13
    :goto_e
    new-instance v2, Lpg0;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lpg0;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;I)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_f
    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v13, v4}, Landroidx/lifecycle/compose/LifecycleEffectKt;->a(Landroidx/lifecycle/Lifecycle$Event;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x4

    if-eq v12, v4, :cond_14

    const/4 v4, 0x0

    goto :goto_10

    :cond_14
    move/from16 v4, v17

    :goto_10
    or-int/2addr v3, v4

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_15

    if-ne v4, v6, :cond_16

    :cond_15
    new-instance v4, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;

    const/4 v3, 0x0

    invoke-direct {v4, v1, v11, v14, v3}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v2, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_17

    if-ne v4, v6, :cond_18

    :cond_17
    new-instance v4, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$5$1;

    const/4 v3, 0x0

    invoke-direct {v4, v14, v15, v3}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$5$1;-><init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v2, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v3, 0x4

    if-eq v12, v3, :cond_19

    const/4 v2, 0x0

    goto :goto_11

    :cond_19
    move/from16 v2, v17

    :goto_11
    and-int/lit16 v3, v0, 0x380

    const/16 v4, 0x100

    if-ne v3, v4, :cond_1a

    move/from16 v3, v17

    goto :goto_12

    :cond_1a
    const/4 v3, 0x0

    :goto_12
    or-int/2addr v2, v3

    and-int/lit8 v3, v0, 0x70

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1b

    move/from16 v3, v17

    goto :goto_13

    :cond_1b
    const/4 v3, 0x0

    :goto_13
    or-int/2addr v2, v3

    and-int/lit16 v3, v0, 0x1c00

    const/16 v4, 0x800

    if-ne v3, v4, :cond_1c

    move/from16 v3, v17

    goto :goto_14

    :cond_1c
    const/4 v3, 0x0

    :goto_14
    or-int/2addr v2, v3

    const v3, 0xe000

    and-int/2addr v0, v3

    const/16 v3, 0x4000

    if-ne v0, v3, :cond_1d

    goto :goto_15

    :cond_1d
    const/16 v17, 0x0

    :goto_15
    or-int v0, v2, v17

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_1f

    if-ne v2, v6, :cond_1e

    goto :goto_16

    :cond_1e
    move-object/from16 v12, p3

    move-object/from16 v7, v18

    goto :goto_17

    :cond_1f
    :goto_16
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1;

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object v5, v7

    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v12, v4

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_17
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v7, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lkw;

    const/16 v1, 0xb

    invoke-direct {v0, v12, v1}, Lkw;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v1, -0x7faa815

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    new-instance v0, Lae0;

    const/4 v1, 0x5

    invoke-direct {v0, v9, v1}, Lae0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v1, 0x653d46ed

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/notifications/components/a;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v6, v8

    move-object v2, v11

    move-object v5, v14

    move-object v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/options/notifications/components/a;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;)V

    const v1, 0x31a81f36

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const v14, 0x30000c30

    const/16 v15, 0x1f5

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v7

    const-wide/16 v7, 0x0

    move-object v11, v9

    move v4, v10

    const-wide/16 v9, 0x0

    move/from16 v16, v4

    move-object v4, v11

    const/4 v11, 0x0

    move-object v12, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move/from16 v6, v16

    goto :goto_18

    :cond_20
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    move v6, v14

    :goto_18
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_21

    new-instance v0, Lp1;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lp1;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZII)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_21
    return-void
.end method
