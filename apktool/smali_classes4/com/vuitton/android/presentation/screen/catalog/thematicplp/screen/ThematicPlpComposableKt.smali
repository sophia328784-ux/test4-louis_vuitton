.class public abstract Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u00a8\u0006\r\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0010\u0010\t\u001a\u0004\u0018\u00010\u00088\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u000b\u001a\u00020\n8\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u000c\u001a\u00020\n8\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;",
        "currentUpdatedProduct",
        "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;",
        "trackingWishlistClickType",
        "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;",
        "themeAnimationContext",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;",
        "afterAuthFeedback",
        "",
        "changeGridVocalizationEnabled",
        "changeThemeVocalizationEnabled",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v6, p5

    move/from16 v13, p11

    const-string v2, "ThematicPlpComposable"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x4fbff56b

    move-object/from16 v4, p10

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    or-int/lit8 v3, v13, 0x6

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_0

    :cond_1
    const/16 v4, 0x10

    :goto_0
    or-int/2addr v3, v4

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_1

    :cond_2
    const/16 v4, 0x80

    :goto_1
    or-int/2addr v3, v4

    and-int/lit16 v4, v13, 0xc00

    if-nez v4, :cond_4

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x800

    goto :goto_2

    :cond_3
    const/16 v4, 0x400

    :goto_2
    or-int/2addr v3, v4

    :cond_4
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x4000

    goto :goto_3

    :cond_5
    const/16 v4, 0x2000

    :goto_3
    or-int/2addr v3, v4

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/high16 v4, 0x20000

    goto :goto_4

    :cond_6
    const/high16 v4, 0x10000

    :goto_4
    or-int/2addr v3, v4

    move-object/from16 v9, p6

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/high16 v4, 0x100000

    goto :goto_5

    :cond_7
    const/high16 v4, 0x80000

    :goto_5
    or-int/2addr v3, v4

    move-object/from16 v4, p7

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/high16 v5, 0x800000

    goto :goto_6

    :cond_8
    const/high16 v5, 0x400000

    :goto_6
    or-int/2addr v3, v5

    move-object/from16 v5, p8

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/high16 v16, 0x4000000

    goto :goto_7

    :cond_9
    const/high16 v16, 0x2000000

    :goto_7
    or-int v3, v3, v16

    move-object/from16 v7, p9

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/high16 v17, 0x20000000

    goto :goto_8

    :cond_a
    const/high16 v17, 0x10000000

    :goto_8
    or-int v3, v3, v17

    const v17, 0x12492493

    and-int v8, v3, v17

    const v15, 0x12492492

    if-eq v8, v15, :cond_b

    const/4 v8, 0x1

    goto :goto_9

    :cond_b
    const/4 v8, 0x0

    :goto_9
    and-int/lit8 v15, v3, 0x1

    invoke-virtual {v14, v15, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_27

    new-instance v15, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v15, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v14}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v21

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;->B7()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v14}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;->a8()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v14}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v5, :cond_c

    invoke-static {v14}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v9

    :cond_c
    check-cast v9, Landroidx/compose/material3/SnackbarHostState;

    move-object/from16 v23, v0

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    move-object/from16 v24, v9

    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v13, v3, 0x70

    move-object/from16 v25, v0

    const/16 v0, 0x20

    if-eq v13, v0, :cond_d

    const/4 v0, 0x0

    goto :goto_a

    :cond_d
    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    or-int v0, v0, v26

    const/high16 v26, 0xe000000

    move/from16 v27, v0

    and-int v0, v3, v26

    const/high16 v1, 0x4000000

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_b

    :cond_e
    const/4 v0, 0x0

    :goto_b
    or-int v0, v27, v0

    const/high16 v1, 0x70000000

    and-int/2addr v1, v3

    move/from16 v18, v0

    const/high16 v0, 0x20000000

    if-ne v1, v0, :cond_f

    const/4 v0, 0x1

    goto :goto_c

    :cond_f
    const/4 v0, 0x0

    :goto_c
    or-int v0, v18, v0

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_11

    if-ne v1, v5, :cond_10

    goto :goto_d

    :cond_10
    move-object v0, v1

    move v6, v3

    move-object v11, v5

    move-object/from16 v18, v15

    move-object/from16 v7, v23

    move-object/from16 v12, v25

    move-object/from16 v1, p1

    move-object v15, v2

    goto :goto_e

    :cond_11
    :goto_d
    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$1$1;

    move-object v1, v5

    const/4 v5, 0x0

    move-object v11, v1

    move-object v4, v7

    move-object/from16 v18, v15

    move-object/from16 v7, v23

    move-object/from16 v12, v25

    move-object/from16 v1, p1

    move-object v15, v2

    move-object v2, v6

    move v6, v3

    move-object/from16 v3, p8

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_e
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v9, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit16 v0, v6, 0x380

    const/16 v2, 0x100

    if-ne v0, v2, :cond_12

    const/4 v0, 0x1

    goto :goto_f

    :cond_12
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_13

    if-ne v2, v11, :cond_14

    :cond_13
    new-instance v2, Lw11;

    const/4 v0, 0x2

    invoke-direct {v2, v10, v0}, Lw11;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v14, v0, v3}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_15

    sget-object v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$Stable;->a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$Stable;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v16, v0

    check-cast v16, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-ne v0, v11, :cond_16

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v0, Landroidx/compose/runtime/MutableState;

    new-instance v4, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v4}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    const/16 v5, 0x20

    if-eq v13, v5, :cond_17

    const/4 v5, 0x0

    goto :goto_10

    :cond_17
    move v5, v3

    :goto_10
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    or-int v5, v5, v19

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v5, :cond_18

    if-ne v2, v11, :cond_19

    :cond_18
    new-instance v2, Lcl0;

    const/16 v5, 0x15

    invoke-direct {v2, v0, v1, v7, v5}, Lcl0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    invoke-static {v4, v2, v14, v5}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v2

    const/16 v4, 0x20

    if-eq v13, v4, :cond_1a

    move v7, v5

    goto :goto_11

    :cond_1a
    move v7, v3

    :goto_11
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v7, v7, v17

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v7, v7, v17

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v7, v7, v17

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    or-int v7, v7, v17

    const/high16 v17, 0x1c00000

    and-int v3, v6, v17

    const/high16 v4, 0x800000

    if-ne v3, v4, :cond_1b

    const/4 v3, 0x1

    goto :goto_12

    :cond_1b
    move v3, v5

    :goto_12
    or-int/2addr v3, v7

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1c

    if-ne v4, v11, :cond_1d

    :cond_1c
    move-object v7, v0

    goto :goto_13

    :cond_1d
    move-object v0, v4

    move v15, v6

    move-object v12, v9

    move/from16 p10, v13

    move-object/from16 v4, v24

    const/16 v13, 0x800

    const/16 v17, 0x20

    const/16 v29, 0x1

    goto :goto_14

    :goto_13
    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;

    move-object v3, v9

    const/4 v9, 0x0

    move-object v5, v12

    move/from16 p10, v13

    move-object/from16 v4, v24

    const/16 v13, 0x800

    const/16 v17, 0x20

    const/16 v29, 0x1

    move-object v12, v3

    move-object v3, v15

    move v15, v6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_14
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v12, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {p1 .. p1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;->wb()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v14}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;->E8()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v14}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    and-int/lit16 v0, v15, 0x1c00

    if-ne v0, v13, :cond_1e

    move/from16 v9, v29

    goto :goto_15

    :cond_1e
    const/4 v9, 0x0

    :goto_15
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v9, :cond_20

    if-ne v0, v11, :cond_1f

    goto :goto_16

    :cond_1f
    move-object/from16 v7, p3

    goto :goto_17

    :cond_20
    :goto_16
    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$4$1;

    move-object/from16 v7, p3

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$4$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_17
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v12, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lqd;

    const/16 v1, 0x12

    move-object/from16 v12, p4

    invoke-direct {v0, v1, v12, v10}, Lqd;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const v1, -0x4a37f1a7

    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    new-instance v0, Lfs0;

    const/16 v1, 0x9

    invoke-direct {v0, v4, v1}, Lfs0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v1, 0x520719db

    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/a;

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, v16

    move-object/from16 v4, v21

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/a;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const v2, -0x5e2a5d9c

    invoke-static {v2, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v25

    const v27, 0x30000c36

    const/16 v28, 0x1f4

    const/16 v16, 0x0

    move-object/from16 v20, v14

    move-object/from16 v14, v18

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v26, v20

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    move/from16 v5, v17

    move-object/from16 v17, v8

    invoke-static/range {v14 .. v28}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v0, v14

    move-object/from16 v2, v26

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v6, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$OverlayOpen;

    if-eqz v6, :cond_26

    const v6, -0x5f949033

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;->e:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    if-nez v6, :cond_21

    const v3, 0x6d0289d4

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :cond_21
    const v8, 0x6d0289d5    # 2.52498E27f

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;->f:Ljava/util/List;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->a:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt;->c(Ljava/lang/String;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    move-result-object v14

    if-nez v14, :cond_22

    const v3, 0x99dd658

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :cond_22
    const v6, 0x99dd659

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;

    iget-object v15, v4, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;->f:Ljava/util/List;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->v:F

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    move/from16 v8, p10

    if-eq v8, v5, :cond_23

    const/4 v9, 0x0

    goto :goto_18

    :cond_23
    move/from16 v9, v29

    :goto_18
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v9, :cond_24

    if-ne v5, v11, :cond_25

    :cond_24
    new-instance v5, Lm21;

    const/16 v8, 0xd

    invoke-direct {v5, v1, v3, v8}, Lm21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    move-object/from16 v19, v5

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v20, v2

    move/from16 v17, v4

    move/from16 v16, v6

    invoke-static/range {v14 .. v21}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt;->b(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Ljava/util/List;FFLcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_19
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1a
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1b

    :cond_26
    const/4 v5, 0x0

    const v3, 0x6d0be58d

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1b

    :cond_27
    move-object v7, v11

    move-object v2, v14

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_28

    move-object v1, v0

    new-instance v0, Lmf;

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v11, p11

    move-object v4, v7

    move-object v3, v10

    move-object v5, v12

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lmf;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_28
    return-void
.end method
