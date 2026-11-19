.class public abstract Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorNavHostKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0008\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState;",
        "curationAdvisorViewState",
        "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState;",
        "productsState",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
        "contactUsUiModel",
        "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState;",
        "lookViewState",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 43

    move-object/from16 v5, p0

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x67f57fdc

    move-object/from16 v3, p12

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p13, v2

    move-object/from16 v14, p1

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x10

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    or-int/2addr v2, v6

    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v2, v6

    move-object/from16 v6, p3

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x800

    goto :goto_3

    :cond_3
    const/16 v8, 0x400

    :goto_3
    or-int/2addr v2, v8

    move-object/from16 v8, p4

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x4000

    goto :goto_4

    :cond_4
    const/16 v10, 0x2000

    :goto_4
    or-int/2addr v2, v10

    move-object/from16 v10, p5

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const/high16 v16, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v16, 0x10000

    :goto_5
    or-int v2, v2, v16

    move-object/from16 v15, p6

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/high16 v18, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v18, 0x80000

    :goto_6
    or-int v2, v2, v18

    move-object/from16 v3, p7

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    const/high16 v19, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v19, 0x400000

    :goto_7
    or-int v2, v2, v19

    move-object/from16 v12, p8

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    const/high16 v20, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v20, 0x2000000

    :goto_8
    or-int v2, v2, v20

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    const/high16 v20, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v20, 0x10000000

    :goto_9
    or-int v2, v2, v20

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/16 v20, 0x4

    :goto_a
    move-object/from16 v13, p11

    goto :goto_b

    :cond_a
    const/16 v20, 0x2

    goto :goto_a

    :goto_b
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const/16 v7, 0x20

    :cond_b
    or-int v20, v20, v7

    const v7, 0x12492493

    and-int/2addr v7, v2

    const v9, 0x12492492

    const/4 v13, 0x0

    if-ne v7, v9, :cond_d

    and-int/lit8 v7, v20, 0x13

    const/16 v9, 0x12

    if-eq v7, v9, :cond_c

    goto :goto_c

    :cond_c
    move v7, v13

    goto :goto_d

    :cond_d
    :goto_c
    const/4 v7, 0x1

    :goto_d
    and-int/lit8 v9, v2, 0x1

    invoke-virtual {v11, v9, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_2c

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-array v7, v13, [Landroidx/navigation/Navigator;

    invoke-static {v7, v11}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v9

    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v12

    invoke-static {v12, v11}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;->i1()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v13

    invoke-static {v13, v11}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-interface {v5}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

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

    const/4 v10, 0x0

    move-object/from16 v25, v9

    move-object v9, v11

    const/4 v11, 0x2

    const/4 v8, 0x0

    move-object/from16 v40, v7

    move-object/from16 v7, v24

    move-object/from16 v39, v25

    invoke-static/range {v6 .. v11}, Landroidx/compose/runtime/SnapshotStateKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v8, :cond_e

    invoke-static {v9}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v7

    :cond_e
    check-cast v7, Landroidx/compose/material3/SnackbarHostState;

    sget-object v10, Lcom/vuitton/android/presentation/tracking/AppsFlyerTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    move-object v11, v7

    invoke-static {v9}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v7

    if-eqz v7, :cond_2b

    move-object/from16 v21, v11

    move-object v11, v9

    invoke-static {v7, v11}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v9

    instance-of v4, v7, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v4, :cond_f

    move-object v4, v7

    check-cast v4, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v4}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v4

    goto :goto_e

    :cond_f
    sget-object v4, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_e
    const-class v3, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    move-object/from16 v25, v4

    sget-object v4, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v4, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object v4, v8

    const/4 v8, 0x0

    move-object v14, v6

    move-object v6, v3

    move-object v3, v14

    move-object v14, v12

    move-object v12, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v14

    move-object v14, v10

    move-object/from16 v10, v25

    invoke-static/range {v6 .. v11}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v6

    move-object v9, v11

    move-object v10, v6

    check-cast v10, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v7, v2, 0xe

    const/4 v8, 0x4

    if-eq v7, v8, :cond_10

    const/4 v8, 0x0

    :goto_f
    move-object/from16 v11, v40

    goto :goto_10

    :cond_10
    const/4 v8, 0x1

    goto :goto_f

    :goto_10
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    or-int v8, v8, v25

    move/from16 v25, v8

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v25, :cond_12

    if-ne v8, v12, :cond_11

    goto :goto_11

    :cond_11
    move-object/from16 v25, v10

    goto :goto_12

    :cond_12
    :goto_11
    new-instance v8, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$1$1;

    move-object/from16 v25, v10

    const/4 v10, 0x0

    invoke-direct {v8, v5, v4, v11, v10}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$1$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_12
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v6, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v6, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v6}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    const/4 v8, 0x4

    if-eq v7, v8, :cond_13

    const/4 v8, 0x0

    goto :goto_13

    :cond_13
    const/4 v8, 0x1

    :goto_13
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_14

    if-ne v10, v12, :cond_15

    :cond_14
    new-instance v10, Ltb0;

    const/16 v8, 0x1a

    invoke-direct {v10, v5, v8}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x0

    invoke-static {v6, v10, v9, v8}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v6

    sget-object v8, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->PERSONAL_SELECTIONS:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    const/high16 v10, 0x70000000

    and-int/2addr v10, v2

    const/high16 v11, 0x20000000

    if-ne v10, v11, :cond_16

    const/4 v10, 0x1

    goto :goto_14

    :cond_16
    const/4 v10, 0x0

    :goto_14
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_18

    if-ne v11, v12, :cond_17

    goto :goto_15

    :cond_17
    const/4 v10, 0x0

    goto :goto_16

    :cond_18
    :goto_15
    new-instance v11, Lqn0;

    const/4 v10, 0x0

    invoke-direct {v11, v0, v6, v10}, Lqn0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/activity/compose/ManagedActivityResultLauncher;I)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_16
    check-cast v11, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v10, v20, 0xe

    const/4 v0, 0x4

    if-ne v10, v0, :cond_19

    const/4 v0, 0x1

    goto :goto_17

    :cond_19
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v0, v10

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v0, :cond_1b

    if-ne v10, v12, :cond_1a

    goto :goto_18

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19

    :cond_1b
    :goto_18
    new-instance v10, Lqn0;

    const/4 v0, 0x1

    invoke-direct {v10, v1, v6, v0}, Lqn0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/activity/compose/ManagedActivityResultLauncher;I)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_19
    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x4

    if-eq v7, v6, :cond_1c

    const/4 v6, 0x0

    goto :goto_1a

    :cond_1c
    move v6, v0

    :goto_1a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_1d

    if-ne v0, v12, :cond_1e

    :cond_1d
    new-instance v0, Lx60;

    const/16 v6, 0x1d

    invoke-direct {v0, v5, v6}, Lx60;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v0, Lkotlin/jvm/functions/Function0;

    move-object v6, v12

    const/4 v12, 0x6

    move-object/from16 v23, v13

    const/4 v13, 0x0

    move-object v1, v9

    move-object v9, v0

    move-object/from16 v0, v21

    move-object/from16 v21, v4

    move v4, v7

    move-object v7, v11

    move-object v11, v1

    move-object/from16 v41, v6

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v1, v23

    move-object/from16 v10, v25

    const/16 v5, 0x100

    const/16 v22, 0x1

    invoke-static/range {v6 .. v13}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt;->b(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/compose/runtime/Composer;II)Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    move-result-object v7

    move-object v6, v11

    sget-object v23, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Detail;->INSTANCE:Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Detail;

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    const v9, 0xe000

    and-int/2addr v9, v2

    const/16 v10, 0x4000

    if-ne v9, v10, :cond_1f

    move/from16 v13, v22

    goto :goto_1b

    :cond_1f
    const/4 v13, 0x0

    :goto_1b
    or-int/2addr v8, v13

    const/high16 v9, 0x70000

    and-int/2addr v9, v2

    const/high16 v10, 0x20000

    if-ne v9, v10, :cond_20

    move/from16 v13, v22

    goto :goto_1c

    :cond_20
    const/4 v13, 0x0

    :goto_1c
    or-int/2addr v8, v13

    const/high16 v9, 0x380000

    and-int/2addr v9, v2

    const/high16 v10, 0x100000

    if-ne v9, v10, :cond_21

    move/from16 v13, v22

    goto :goto_1d

    :cond_21
    const/4 v13, 0x0

    :goto_1d
    or-int/2addr v8, v13

    and-int/lit8 v9, v2, 0x70

    const/16 v10, 0x20

    if-ne v9, v10, :cond_22

    move/from16 v13, v22

    goto :goto_1e

    :cond_22
    const/4 v13, 0x0

    :goto_1e
    or-int/2addr v8, v13

    const/4 v9, 0x4

    if-eq v4, v9, :cond_23

    const/4 v13, 0x0

    goto :goto_1f

    :cond_23
    move/from16 v13, v22

    :goto_1f
    or-int v4, v8, v13

    and-int/lit16 v8, v2, 0x1c00

    const/16 v9, 0x800

    if-ne v8, v9, :cond_24

    move/from16 v13, v22

    goto :goto_20

    :cond_24
    const/4 v13, 0x0

    :goto_20
    or-int/2addr v4, v13

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v4, v8

    and-int/lit16 v8, v2, 0x380

    if-ne v8, v5, :cond_25

    move/from16 v13, v22

    goto :goto_21

    :cond_25
    const/4 v13, 0x0

    :goto_21
    or-int/2addr v4, v13

    move-object/from16 v9, v39

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    const/high16 v5, 0x1c00000

    and-int/2addr v5, v2

    const/high16 v8, 0x800000

    if-ne v5, v8, :cond_26

    move/from16 v13, v22

    goto :goto_22

    :cond_26
    const/4 v13, 0x0

    :goto_22
    or-int/2addr v4, v13

    const/high16 v5, 0xe000000

    and-int/2addr v2, v5

    const/high16 v5, 0x4000000

    if-ne v2, v5, :cond_27

    move/from16 v13, v22

    goto :goto_23

    :cond_27
    const/4 v13, 0x0

    :goto_23
    or-int v2, v4, v13

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    and-int/lit8 v4, v20, 0x70

    const/16 v10, 0x20

    if-ne v4, v10, :cond_28

    move/from16 v13, v22

    goto :goto_24

    :cond_28
    const/4 v13, 0x0

    :goto_24
    or-int/2addr v2, v13

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_29

    move-object/from16 v12, v41

    if-ne v4, v12, :cond_2a

    :cond_29
    move-object v12, v0

    goto :goto_25

    :cond_2a
    move-object v1, v7

    move-object v3, v9

    move-object v9, v6

    goto :goto_26

    :goto_25
    new-instance v0, Lrn0;

    move-object v2, v15

    move-object v15, v3

    move-object v3, v2

    move-object/from16 v5, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    move-object/from16 v2, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v17, p11

    move-object v13, v1

    move-object/from16 v42, v6

    move-object/from16 v16, v21

    move-object/from16 v6, p3

    move-object/from16 v1, p4

    invoke-direct/range {v0 .. v17}, Lrn0;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Lkotlin/jvm/functions/Function1;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;)V

    move-object v1, v7

    move-object v3, v9

    move-object/from16 v9, v42

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_26
    move-object v12, v4

    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/16 v14, 0x30

    const/16 v15, 0x7fc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v11, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v13, v11

    const/4 v11, 0x0

    move-object/from16 v4, v23

    invoke-static/range {v3 .. v15}, Landroidx/navigation/compose/NavHostKt;->b(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object v9, v13

    const/4 v8, 0x0

    invoke-static {v1, v9, v8}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt;->a(Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Landroidx/compose/runtime/Composer;I)V

    goto :goto_27

    :cond_2b
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_2c
    move-object v9, v11

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_27
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_2d

    new-instance v0, Lle;

    move-object/from16 v1, p0

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

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lle;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2d
    return-void
.end method
