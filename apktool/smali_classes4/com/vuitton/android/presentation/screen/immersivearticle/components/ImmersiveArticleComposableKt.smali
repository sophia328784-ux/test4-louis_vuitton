.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0008\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;",
        "audioPlayerControllerUiState",
        "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;",
        "permissionViewState",
        "",
        "isExpanded",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModel;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 47

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v9, p7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x5a0f9c30

    move-object/from16 v1, p13

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p14, v0

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    move-object/from16 v14, p2

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    move-object/from16 v7, p3

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    move/from16 v1, p4

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x4000

    goto :goto_4

    :cond_4
    const/16 v5, 0x2000

    :goto_4
    or-int/2addr v0, v5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v5, 0x10000

    :goto_5
    or-int/2addr v0, v5

    move-object/from16 v5, p6

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/high16 v16, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v16, 0x80000

    :goto_6
    or-int v0, v0, v16

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/high16 v16, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v16, 0x400000

    :goto_7
    or-int v0, v0, v16

    move-object/from16 v15, p8

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/high16 v18, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v18, 0x2000000

    :goto_8
    or-int v0, v0, v18

    move-object/from16 v15, p9

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/high16 v18, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v18, 0x10000000

    :goto_9
    or-int v0, v0, v18

    move-object/from16 v15, p10

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v20, 0x4

    :goto_a
    move-object/from16 v4, p11

    goto :goto_b

    :cond_a
    const/16 v20, 0x2

    goto :goto_a

    :goto_b
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const/16 v17, 0x20

    goto :goto_c

    :cond_b
    const/16 v17, 0x10

    :goto_c
    or-int v17, v20, v17

    move-object/from16 v15, p12

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v19, 0x100

    goto :goto_d

    :cond_c
    const/16 v19, 0x80

    :goto_d
    or-int v15, v17, v19

    const v17, 0x12492493

    and-int v11, v0, v17

    const v8, 0x12492492

    if-ne v11, v8, :cond_e

    and-int/lit16 v8, v15, 0x93

    const/16 v11, 0x92

    if-eq v8, v11, :cond_d

    goto :goto_e

    :cond_d
    const/4 v8, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v8, 0x1

    :goto_f
    and-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v11, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_69

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v8

    invoke-static {v8, v10}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-interface {v14}, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModel;->d7()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v8

    invoke-static {v8, v10}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v13

    invoke-static {v13, v10}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-static {v10}, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v5

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    move/from16 v23, v15

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v15, :cond_f

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v6, Landroidx/compose/runtime/MutableState;

    sget-object v12, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v15, :cond_10

    invoke-static {v10}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v3

    :cond_10
    check-cast v3, Landroidx/compose/material3/SnackbarHostState;

    move/from16 v26, v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_11

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v10}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/high16 v27, 0x1c00000

    move-object/from16 v28, v0

    and-int v0, v26, v27

    const/high16 v1, 0x800000

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_10

    :cond_12
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_14

    if-ne v1, v15, :cond_13

    goto :goto_11

    :cond_13
    const/4 v0, 0x4

    goto :goto_12

    :cond_14
    :goto_11
    new-instance v1, Lna;

    const/4 v0, 0x4

    invoke-direct {v1, v9, v6, v0}, Lna;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_12
    check-cast v1, Lkotlin/jvm/functions/Function0;

    move-object/from16 v25, v5

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v1, v10, v0, v5}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object/from16 v19, v6

    and-int/lit8 v6, v26, 0xe

    const/4 v0, 0x4

    if-eq v6, v0, :cond_15

    const/4 v0, 0x0

    goto :goto_13

    :cond_15
    move v0, v5

    :goto_13
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    or-int v0, v0, v27

    and-int/lit8 v5, v23, 0x70

    move/from16 v29, v0

    const/16 v0, 0x20

    if-ne v5, v0, :cond_16

    const/4 v0, 0x1

    goto :goto_14

    :cond_16
    const/4 v0, 0x0

    :goto_14
    or-int v0, v29, v0

    move/from16 v29, v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v29, :cond_18

    if-ne v0, v15, :cond_17

    goto :goto_15

    :cond_17
    move/from16 v7, v26

    move-object/from16 v26, v3

    move-object v3, v12

    move v12, v7

    move/from16 v37, v5

    move-object/from16 v20, v13

    move-object/from16 v7, v25

    move-object/from16 v9, v28

    const/16 v27, 0x1

    move-object v13, v1

    move-object v1, v2

    goto :goto_16

    :cond_18
    :goto_15
    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1;

    move/from16 v29, v5

    const/4 v5, 0x0

    move-object/from16 v20, v13

    move-object/from16 v7, v25

    move-object/from16 v9, v28

    move/from16 v37, v29

    const/16 v27, 0x1

    move-object v13, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v12

    move/from16 v12, v26

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v26, v2

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_16
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v13, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->g:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    const/4 v5, 0x4

    if-eq v6, v5, :cond_19

    const/4 v5, 0x0

    goto :goto_17

    :cond_19
    move/from16 v5, v27

    :goto_17
    or-int/2addr v4, v5

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_1a

    if-ne v5, v15, :cond_1b

    :cond_1a
    new-instance v5, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$3$1;

    const/4 v4, 0x0

    invoke-direct {v5, v1, v8, v11, v4}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, v5, v10}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v0, v12, 0x70

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1c

    const/4 v5, 0x0

    goto :goto_18

    :cond_1c
    move/from16 v5, v27

    :goto_18
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v5, :cond_1d

    if-ne v2, v15, :cond_1e

    :cond_1d
    move v2, v0

    goto :goto_19

    :cond_1e
    move-object/from16 v29, v9

    move-object/from16 v30, v11

    move-object/from16 v28, v19

    move v11, v0

    move-object v0, v2

    move v9, v6

    move-object/from16 v19, v8

    move-object/from16 v2, p1

    move-object v8, v3

    goto :goto_1a

    :goto_19
    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$4$1;

    const-string v5, "onNotificationPermissionGranted(Z)V"

    move v4, v6

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object/from16 v28, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    move/from16 v29, v4

    const-string v4, "onNotificationPermissionGranted"

    move-object/from16 v30, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v28

    move-object/from16 v28, v30

    move/from16 v30, v29

    move-object/from16 v29, v9

    move/from16 v9, v30

    move-object/from16 v30, v11

    move v11, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1a
    check-cast v0, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v1, v12, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-static {v2, v0, v10, v1}, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt;->a(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/16 v0, 0x20

    if-eq v11, v0, :cond_1f

    const/4 v6, 0x0

    :goto_1b
    const/4 v0, 0x4

    goto :goto_1c

    :cond_1f
    move/from16 v6, v27

    goto :goto_1b

    :goto_1c
    if-eq v9, v0, :cond_20

    const/4 v0, 0x0

    goto :goto_1d

    :cond_20
    move/from16 v0, v27

    :goto_1d
    or-int/2addr v0, v6

    and-int/lit16 v1, v12, 0x1c00

    const/16 v3, 0x800

    if-ne v1, v3, :cond_21

    move/from16 v6, v27

    goto :goto_1e

    :cond_21
    const/4 v6, 0x0

    :goto_1e
    or-int/2addr v0, v6

    const/high16 v31, 0x70000

    and-int v4, v12, v31

    const/high16 v5, 0x20000

    if-ne v4, v5, :cond_22

    move/from16 v6, v27

    goto :goto_1f

    :cond_22
    const/4 v6, 0x0

    :goto_1f
    or-int/2addr v0, v6

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_24

    if-ne v5, v15, :cond_23

    goto :goto_20

    :cond_23
    move/from16 v38, v1

    move/from16 v39, v4

    goto :goto_21

    :cond_24
    :goto_20
    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$5$1;

    move-object v6, v7

    move-object v7, v8

    const/4 v8, 0x0

    move-object/from16 v3, p3

    move/from16 v38, v1

    move-object v1, v2

    move/from16 v39, v4

    move-object/from16 v5, v26

    move-object/from16 v2, p0

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$5$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    move-object v8, v7

    move-object v7, v6

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :goto_21
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v13, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {v30 .. v30}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v33, v0

    check-cast v33, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    const/4 v0, 0x4

    if-eq v9, v0, :cond_25

    const/4 v6, 0x0

    goto :goto_22

    :cond_25
    move/from16 v6, v27

    :goto_22
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_26

    if-ne v0, v15, :cond_27

    :cond_26
    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$6$1;

    const-string v5, "onSceneLoaded()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;

    const-string v4, "onSceneLoaded"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    move-object/from16 v35, v0

    check-cast v35, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v9, v0, :cond_28

    const/4 v6, 0x0

    goto :goto_23

    :cond_28
    move/from16 v6, v27

    :goto_23
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_29

    if-ne v0, v15, :cond_2a

    :cond_29
    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$7$1;

    const-string v5, "onPlayerReadyForFirstVideo()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;

    const-string v4, "onPlayerReadyForFirstVideo"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    move-object/from16 v36, v0

    check-cast v36, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v9, v0, :cond_2b

    const/4 v6, 0x0

    goto :goto_24

    :cond_2b
    move/from16 v6, v27

    :goto_24
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_2c

    if-ne v0, v15, :cond_2d

    :cond_2c
    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$8$1;

    const-string v5, "on3dError(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;

    const-string v4, "on3dError"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2d
    move-object/from16 v41, v0

    check-cast v41, Lkotlin/reflect/KFunction;

    and-int/lit16 v0, v12, 0x380

    const/16 v1, 0x100

    if-eq v0, v1, :cond_2e

    const/4 v6, 0x0

    goto :goto_25

    :cond_2e
    move/from16 v6, v27

    :goto_25
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_30

    if-ne v0, v15, :cond_2f

    goto :goto_26

    :cond_2f
    move-object v14, v0

    move-object v0, v15

    const/high16 v1, 0x20000000

    goto :goto_27

    :cond_30
    :goto_26
    new-instance v14, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$9$1;

    const-string v19, "onEvent(Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;)V"

    const/16 v20, 0x0

    move-object v0, v15

    const/4 v15, 0x1

    const-class v17, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModel;

    const/high16 v1, 0x20000000

    const-string v18, "onEvent"

    move-object/from16 v16, p2

    invoke-direct/range {v14 .. v20}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_27
    check-cast v14, Lkotlin/reflect/KFunction;

    const/4 v5, 0x4

    if-eq v9, v5, :cond_31

    const/4 v6, 0x0

    goto :goto_28

    :cond_31
    move/from16 v6, v27

    :goto_28
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v6, :cond_32

    if-ne v2, v0, :cond_33

    :cond_32
    move-object v2, v0

    goto :goto_29

    :cond_33
    move-object v15, v0

    goto :goto_2a

    :goto_29
    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$10$1;

    const-string v5, "hideScreenshotNotification()V"

    const/4 v6, 0x0

    move/from16 v18, v1

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;

    const-string v4, "hideScreenshotNotification"

    move-object v15, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_2a
    move-object/from16 v16, v2

    check-cast v16, Lkotlin/reflect/KFunction;

    const/16 v0, 0x20

    if-eq v11, v0, :cond_34

    const/4 v6, 0x0

    goto :goto_2b

    :cond_34
    move/from16 v6, v27

    :goto_2b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_35

    if-ne v0, v15, :cond_36

    :cond_35
    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$11$1;

    const-string v5, "closeBottomSheet()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    const-string v4, "closeBottomSheet"

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_36
    move-object/from16 v17, v0

    check-cast v17, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v9, v0, :cond_37

    const/4 v6, 0x0

    goto :goto_2c

    :cond_37
    move/from16 v6, v27

    :goto_2c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_38

    if-ne v0, v15, :cond_39

    :cond_38
    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$12$1;

    const-string v5, "sendTrackingHit(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;

    const-string v4, "sendTrackingHit"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_39
    move-object/from16 v19, v0

    check-cast v19, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v9, v0, :cond_3a

    const/4 v6, 0x0

    goto :goto_2d

    :cond_3a
    move/from16 v6, v27

    :goto_2d
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_3b

    if-ne v0, v15, :cond_3c

    :cond_3b
    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$13$1;

    const-string v5, "onCountdownFinished(Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;

    const-string v4, "onCountdownFinished"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3c
    move-object/from16 v20, v0

    check-cast v20, Lkotlin/reflect/KFunction;

    check-cast v35, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3d

    if-ne v1, v15, :cond_3e

    :cond_3d
    new-instance v1, Lje;

    const/16 v0, 0xc

    invoke-direct {v1, v8, v0}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3e
    move-object/from16 v42, v1

    check-cast v42, Lkotlin/jvm/functions/Function0;

    const/high16 v43, 0x70000000

    and-int v6, v12, v43

    const/high16 v1, 0x20000000

    if-ne v6, v1, :cond_3f

    move/from16 v0, v27

    :goto_2e
    const/4 v5, 0x4

    goto :goto_2f

    :cond_3f
    const/4 v0, 0x0

    goto :goto_2e

    :goto_2f
    if-eq v9, v5, :cond_40

    const/4 v1, 0x0

    goto :goto_30

    :cond_40
    move/from16 v1, v27

    :goto_30
    or-int/2addr v0, v1

    move/from16 v1, v38

    const/16 v2, 0x800

    if-ne v1, v2, :cond_41

    move/from16 v3, v27

    goto :goto_31

    :cond_41
    const/4 v3, 0x0

    :goto_31
    or-int/2addr v0, v3

    move/from16 v3, v39

    const/high16 v5, 0x20000

    if-ne v3, v5, :cond_42

    move/from16 v4, v27

    goto :goto_32

    :cond_42
    const/4 v4, 0x0

    :goto_32
    or-int/2addr v0, v4

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_44

    if-ne v4, v15, :cond_43

    goto :goto_33

    :cond_43
    move/from16 v38, v12

    move-object/from16 v39, v13

    move-object/from16 v40, v14

    move v12, v1

    move v14, v2

    move v13, v3

    goto :goto_34

    :cond_44
    :goto_33
    new-instance v0, Lr0;

    const/16 v5, 0xc

    move-object/from16 v4, p5

    move/from16 v38, v12

    move-object/from16 v39, v13

    move-object/from16 v40, v14

    move v12, v1

    move v14, v2

    move v13, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v1, p9

    invoke-direct/range {v0 .. v5}, Lr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_34
    move-object/from16 v44, v4

    check-cast v44, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_45

    if-ne v1, v15, :cond_46

    :cond_45
    new-instance v1, Lje;

    const/16 v0, 0xd

    invoke-direct {v1, v8, v0}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_46
    move-object/from16 v45, v1

    check-cast v45, Lkotlin/jvm/functions/Function0;

    check-cast v36, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x4

    if-eq v9, v0, :cond_47

    const/4 v0, 0x0

    goto :goto_35

    :cond_47
    move/from16 v0, v27

    :goto_35
    if-ne v12, v14, :cond_48

    move/from16 v1, v27

    goto :goto_36

    :cond_48
    const/4 v1, 0x0

    :goto_36
    or-int/2addr v0, v1

    const/high16 v5, 0x20000

    if-ne v13, v5, :cond_49

    move/from16 v1, v27

    goto :goto_37

    :cond_49
    const/4 v1, 0x0

    :goto_37
    or-int/2addr v0, v1

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_4b

    if-ne v1, v15, :cond_4a

    goto :goto_38

    :cond_4a
    move-object/from16 v4, v28

    goto :goto_39

    :cond_4b
    :goto_38
    new-instance v0, Lr0;

    const/16 v5, 0xd

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, v28

    invoke-direct/range {v0 .. v5}, Lr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_39
    move-object/from16 v28, v1

    check-cast v28, Lkotlin/jvm/functions/Function0;

    const/high16 v1, 0x20000000

    if-ne v6, v1, :cond_4c

    move/from16 v6, v27

    :goto_3a
    move-object/from16 v5, v30

    goto :goto_3b

    :cond_4c
    const/4 v6, 0x0

    goto :goto_3a

    :goto_3b
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v6

    const/4 v1, 0x4

    if-eq v9, v1, :cond_4d

    const/4 v6, 0x0

    goto :goto_3c

    :cond_4d
    move/from16 v6, v27

    :goto_3c
    or-int/2addr v0, v6

    if-ne v12, v14, :cond_4e

    move/from16 v6, v27

    goto :goto_3d

    :cond_4e
    const/4 v6, 0x0

    :goto_3d
    or-int/2addr v0, v6

    const/high16 v1, 0x20000

    if-ne v13, v1, :cond_4f

    move/from16 v6, v27

    goto :goto_3e

    :cond_4f
    const/4 v6, 0x0

    :goto_3e
    or-int/2addr v0, v6

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_51

    if-ne v1, v15, :cond_50

    goto :goto_3f

    :cond_50
    move-object v14, v4

    goto :goto_40

    :cond_51
    :goto_3f
    new-instance v0, Lyh;

    const/4 v6, 0x7

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v1, p9

    move-object v14, v4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v6}, Lyh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_40
    move-object/from16 v30, v1

    check-cast v30, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_52

    new-instance v0, Lu00;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v14}, Lu00;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_52
    move-object v14, v0

    check-cast v14, Lkotlin/jvm/functions/Function0;

    check-cast v41, Lkotlin/jvm/functions/Function1;

    check-cast v40, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-eq v9, v0, :cond_53

    const/4 v6, 0x0

    :goto_41
    const/16 v2, 0x800

    goto :goto_42

    :cond_53
    move/from16 v6, v27

    goto :goto_41

    :goto_42
    if-ne v12, v2, :cond_54

    move/from16 v0, v27

    goto :goto_43

    :cond_54
    const/4 v0, 0x0

    :goto_43
    or-int/2addr v0, v6

    const/high16 v5, 0x20000

    if-ne v13, v5, :cond_55

    move/from16 v6, v27

    goto :goto_44

    :cond_55
    const/4 v6, 0x0

    :goto_44
    or-int/2addr v0, v6

    const/16 v2, 0x20

    if-eq v11, v2, :cond_56

    const/4 v6, 0x0

    goto :goto_45

    :cond_56
    move/from16 v6, v27

    :goto_45
    or-int/2addr v0, v6

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_57

    if-ne v1, v15, :cond_58

    :cond_57
    new-instance v0, Lk3;

    const/16 v5, 0xd

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Lk3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_58
    move-object/from16 v46, v1

    check-cast v46, Lkotlin/jvm/functions/Function1;

    check-cast v16, Lkotlin/jvm/functions/Function0;

    check-cast v17, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x4

    if-eq v9, v0, :cond_59

    const/4 v6, 0x0

    :goto_46
    const/16 v2, 0x800

    goto :goto_47

    :cond_59
    move/from16 v6, v27

    goto :goto_46

    :goto_47
    if-ne v12, v2, :cond_5a

    move/from16 v0, v27

    goto :goto_48

    :cond_5a
    const/4 v0, 0x0

    :goto_48
    or-int/2addr v0, v6

    const/high16 v5, 0x20000

    if-ne v13, v5, :cond_5b

    move/from16 v6, v27

    goto :goto_49

    :cond_5b
    const/4 v6, 0x0

    :goto_49
    or-int/2addr v0, v6

    move-object/from16 v4, v29

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_5d

    if-ne v1, v15, :cond_5c

    goto :goto_4a

    :cond_5c
    move-object v7, v8

    move-object/from16 v8, p1

    goto :goto_4b

    :cond_5d
    :goto_4a
    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v5, v26

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/a;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_4b
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/16 v0, 0x20

    if-eq v11, v0, :cond_5e

    const/4 v0, 0x0

    goto :goto_4c

    :cond_5e
    move/from16 v0, v27

    :goto_4c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_5f

    if-ne v1, v15, :cond_60

    :cond_5f
    new-instance v1, Lup;

    const/4 v0, 0x3

    invoke-direct {v1, v8, v0}, Lup;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_60
    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x4

    if-eq v9, v0, :cond_61

    const/4 v0, 0x0

    :goto_4d
    const/16 v2, 0x800

    goto :goto_4e

    :cond_61
    move/from16 v0, v27

    goto :goto_4d

    :goto_4e
    if-ne v12, v2, :cond_62

    move/from16 v1, v27

    goto :goto_4f

    :cond_62
    const/4 v1, 0x0

    :goto_4f
    or-int/2addr v0, v1

    const/high16 v5, 0x20000

    if-ne v13, v5, :cond_63

    move/from16 v1, v27

    goto :goto_50

    :cond_63
    const/4 v1, 0x0

    :goto_50
    or-int/2addr v0, v1

    move/from16 v1, v37

    const/16 v2, 0x20

    if-ne v1, v2, :cond_64

    move/from16 v25, v27

    goto :goto_51

    :cond_64
    const/16 v25, 0x0

    :goto_51
    or-int v0, v0, v25

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_65

    if-ne v1, v15, :cond_66

    :cond_65
    new-instance v0, Lk3;

    const/16 v5, 0xc

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p11

    invoke-direct/range {v0 .. v5}, Lk3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_66
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_67

    if-ne v2, v15, :cond_68

    :cond_67
    new-instance v2, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$24$1;

    invoke-direct {v2, v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$24$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_68
    check-cast v2, Lkotlin/jvm/functions/Function2;

    check-cast v20, Lkotlin/jvm/functions/Function1;

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/high16 v0, 0xc00000

    or-int/2addr v0, v12

    shl-int/lit8 v3, v38, 0x3

    and-int v4, v3, v31

    or-int/2addr v0, v4

    const/high16 v4, 0x380000

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    shl-int/lit8 v3, v38, 0x6

    const/high16 v5, 0xe000000

    and-int/2addr v5, v3

    or-int/2addr v0, v5

    and-int v3, v3, v43

    or-int/2addr v0, v3

    shr-int/lit8 v3, v38, 0x6

    and-int/2addr v3, v4

    const/high16 v4, 0x6000000

    or-int/2addr v3, v4

    shl-int/lit8 v4, v23, 0x15

    const/high16 v5, 0x7fc00000    # Float.NaN

    and-int/2addr v4, v5

    move/from16 v5, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v27, p10

    move-object/from16 v29, p12

    move-object/from16 v24, v6

    move-object/from16 v25, v11

    move-object/from16 v18, v14

    move-object/from16 v22, v16

    move-object/from16 v23, v17

    move-object/from16 v31, v20

    move-object/from16 v7, v26

    move-object/from16 v15, v28

    move-object/from16 v17, v30

    move-object/from16 v14, v36

    move-object/from16 v20, v40

    move-object/from16 v11, v42

    move-object/from16 v12, v44

    move-object/from16 v13, v45

    move-object/from16 v21, v46

    move-object/from16 v6, p5

    move-object/from16 v16, p8

    move-object/from16 v28, p11

    move-object/from16 v26, v1

    move-object/from16 v30, v2

    move/from16 v36, v4

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v4, v34

    move/from16 v34, v0

    move-object/from16 v33, v10

    move-object/from16 v32, v19

    move-object/from16 v10, v35

    move-object/from16 v0, v39

    move-object/from16 v19, v41

    move/from16 v35, v3

    move-object/from16 v3, p3

    invoke-static/range {v0 .. v36}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleScreenKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    goto :goto_52

    :cond_69
    move-object/from16 v33, v10

    invoke-virtual/range {v33 .. v33}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_52
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_6a

    new-instance v0, Lkx;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lkx;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModel;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_6a
    return-void
.end method
