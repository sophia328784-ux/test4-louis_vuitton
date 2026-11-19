.class public abstract Lcom/vuitton/android/presentation/screen/mylv/components/MyLvComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/mylv/components/MyLvComposableKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;",
        "viewState",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move-object/from16 v1, p0

    move/from16 v7, p4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x2564d4db

    move-object/from16 v2, p3

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v7

    and-int/lit16 v3, v7, 0x180

    if-nez v3, :cond_2

    move-object/from16 v3, p2

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x100

    goto :goto_1

    :cond_1
    const/16 v4, 0x80

    :goto_1
    or-int/2addr v0, v4

    goto :goto_2

    :cond_2
    move-object/from16 v3, p2

    :goto_2
    and-int/lit16 v4, v0, 0x93

    const/16 v5, 0x92

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v4, v5, :cond_3

    move v4, v10

    goto :goto_3

    :cond_3
    move v4, v9

    :goto_3
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {v8, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_16

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static {v4, v6, v8, v9, v5}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v12, :cond_4

    invoke-static {v8}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v11

    :cond_4
    check-cast v11, Landroidx/compose/material3/SnackbarHostState;

    sget-object v13, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v0, v0, 0xe

    if-eq v0, v2, :cond_5

    move v14, v9

    goto :goto_4

    :cond_5
    move v14, v10

    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_6

    if-ne v15, v12, :cond_7

    :cond_6
    new-instance v15, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvComposableKt$MyLvComposable$1$1;

    invoke-direct {v15, v1, v6}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvComposableKt$MyLvComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v13, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eq v0, v2, :cond_8

    move v14, v9

    goto :goto_5

    :cond_8
    move v14, v10

    :goto_5
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_9

    if-ne v15, v12, :cond_a

    :cond_9
    new-instance v15, Lyd0;

    invoke-direct {v15, v1, v9}, Lyd0;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;I)V

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x6

    invoke-static {v13, v6, v15, v8, v14}, Landroidx/lifecycle/compose/LifecycleEffectKt;->b(Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    if-eq v0, v2, :cond_b

    move v15, v9

    goto :goto_6

    :cond_b
    move v15, v10

    :goto_6
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v15, v15, v16

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v15, :cond_c

    if-ne v14, v12, :cond_d

    :cond_c
    new-instance v14, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvComposableKt$MyLvComposable$3$1;

    invoke-direct {v14, v1, v11, v5, v6}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvComposableKt$MyLvComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v13, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v12, :cond_e

    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v6, v8}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    new-instance v13, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v13}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    if-eq v0, v2, :cond_f

    move v0, v9

    goto :goto_7

    :cond_f
    move v0, v10

    :goto_7
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_10

    if-ne v2, v12, :cond_11

    :cond_10
    new-instance v2, Lyd0;

    invoke-direct {v2, v1, v10}, Lyd0;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;I)V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v2, v8, v9}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v13

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v2, :cond_12

    if-ne v14, v12, :cond_13

    :cond_12
    new-instance v14, Lcom/vuitton/android/presentation/screen/mylv/components/a;

    invoke-direct {v14, v6, v11}, Lcom/vuitton/android/presentation/screen/mylv/components/a;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SnackbarHostState;)V

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v14, v8, v9}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v6

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_14

    new-instance v0, Ldd0;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, Ldd0;-><init>(I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x6

    invoke-static {v0, v8, v2}, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotListenerKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    new-instance v0, Lod;

    move-object v2, v4

    move-object v4, v5

    move-object v5, v3

    move-object v3, v1

    move/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lod;-><init>(ZLandroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    const v1, 0x6c09f2e1

    invoke-static {v1, v0, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    new-instance v0, Lae0;

    invoke-direct {v0, v11, v9}, Lae0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v1, 0x479ab91f

    invoke-static {v1, v0, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v18

    new-instance v0, Ln4;

    move-object v5, v6

    const/16 v6, 0xd

    move-object/from16 v1, p0

    move-object v3, v2

    move-object v2, v4

    move-object v4, v13

    invoke-direct/range {v0 .. v6}, Ln4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v2, v3

    const v1, 0x49158876    # 612487.4f

    invoke-static {v1, v0, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v19

    const v21, 0x30000c30

    const/16 v22, 0xf5

    move-object/from16 v20, v8

    const/4 v8, 0x0

    move v0, v10

    const/4 v10, 0x0

    move v1, v9

    move-object v9, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-static/range {v8 .. v22}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v3, v20

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->b:Z

    if-eqz v2, :cond_15

    const v2, 0x6fcbe9fb

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v1, v3, v1, v0}, Lcom/vuitton/android/designkit/components/components/LVLoadingOverlayKt;->a(ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_15
    const v0, 0x6fcc699d

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_16
    move-object v3, v8

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_17

    new-instance v0, Lvd;

    const/4 v5, 0x2

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lvd;-><init>(Ljava/lang/Object;ZLkotlin/Function;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method
