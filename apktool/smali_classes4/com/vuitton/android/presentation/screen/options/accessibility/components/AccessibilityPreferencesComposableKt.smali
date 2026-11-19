.class public abstract Lcom/vuitton/android/presentation/screen/options/accessibility/components/AccessibilityPreferencesComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesViewState;",
        "viewState",
        "Landroidx/lifecycle/Lifecycle$State;",
        "lifecycleState",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v2, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x6b3660a7

    move-object/from16 v3, p3

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p4, v0

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    and-int/lit16 v4, v0, 0x93

    const/16 v6, 0x92

    if-eq v4, v6, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    and-int/lit8 v6, v0, 0x1

    invoke-virtual {v8, v6, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v6

    invoke-static {v6, v8}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v12, :cond_4

    invoke-static {v8}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v6

    :cond_4
    check-cast v6, Landroidx/compose/material3/SnackbarHostState;

    invoke-static {v8}, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v13

    sget-object v14, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v14}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/lifecycle/Lifecycle;->c()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v14

    invoke-static {v14, v8}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v14

    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    and-int/lit8 v9, v0, 0xe

    if-eq v9, v3, :cond_5

    const/16 v17, 0x0

    goto :goto_4

    :cond_5
    const/16 v17, 0x1

    :goto_4
    or-int v16, v16, v17

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    const/4 v5, 0x0

    if-nez v16, :cond_6

    if-ne v10, v12, :cond_7

    :cond_6
    new-instance v10, Lcom/vuitton/android/presentation/screen/options/accessibility/components/AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$1$1;

    invoke-direct {v10, v1, v14, v5}, Lcom/vuitton/android/presentation/screen/options/accessibility/components/AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v15, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    if-eq v9, v3, :cond_8

    const/4 v14, 0x0

    goto :goto_5

    :cond_8
    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_9

    if-ne v15, v12, :cond_a

    :cond_9
    new-instance v15, Lcom/vuitton/android/presentation/screen/options/accessibility/components/AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$2$1;

    invoke-direct {v15, v1, v5}, Lcom/vuitton/android/presentation/screen/options/accessibility/components/AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v10, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eq v9, v3, :cond_b

    const/4 v3, 0x0

    goto :goto_6

    :cond_b
    const/4 v3, 0x1

    :goto_6
    and-int/lit16 v0, v0, 0x380

    const/16 v5, 0x100

    if-ne v0, v5, :cond_c

    const/4 v9, 0x1

    goto :goto_7

    :cond_c
    const/4 v9, 0x0

    :goto_7
    or-int v0, v3, v9

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_e

    if-ne v3, v12, :cond_d

    goto :goto_8

    :cond_d
    move-object v0, v3

    move-object v3, v6

    goto :goto_9

    :cond_e
    :goto_8
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/accessibility/components/AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$3$1;

    move-object v3, v6

    const/4 v6, 0x0

    move-object v5, v4

    move-object v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/options/accessibility/components/AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_9
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v10, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v4, "AccessibilityPreferencesComposable"

    invoke-direct {v0, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v4, Lf0;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v2, v5}, Lf0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v6, -0x4d087695

    invoke-static {v6, v4, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    new-instance v4, Lcom/vuitton/android/presentation/screen/options/accessibility/components/a;

    invoke-direct {v4, v1, v7, v11}, Lcom/vuitton/android/presentation/screen/options/accessibility/components/a;-><init>(Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    const v6, -0x42f1e394

    invoke-static {v6, v4, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    new-instance v4, Lg0;

    invoke-direct {v4, v3, v5}, Lg0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v3, -0x38db5093

    invoke-static {v3, v4, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/options/accessibility/components/b;

    invoke-direct {v4, v1, v11}, Lcom/vuitton/android/presentation/screen/options/accessibility/components/b;-><init>(Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;Landroidx/compose/runtime/MutableState;)V

    const v5, 0x6f819f36

    invoke-static {v5, v4, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v19

    const v21, 0x30000db6

    const/16 v22, 0x1f0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-object v11, v3

    move-object/from16 v20, v8

    move-object v8, v0

    invoke-static/range {v8 .. v22}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_a

    :cond_f
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_a
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_10

    new-instance v0, Lu;

    const/4 v2, 0x1

    move-object/from16 v5, p2

    move-object v3, v1

    move-object v4, v7

    move/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Lu;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method
