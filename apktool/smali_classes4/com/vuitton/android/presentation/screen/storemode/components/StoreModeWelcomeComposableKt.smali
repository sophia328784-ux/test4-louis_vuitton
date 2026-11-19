.class public abstract Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u00a8\u0006\t\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0006\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0008\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;",
        "storeModeViewState",
        "",
        "isButtonClicked",
        "Landroidx/compose/ui/unit/Dp;",
        "buttonSizeAnimation",
        "shouldDisplayIcon",
        "isButtonLoading",
        "displayAnimationForExit",
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


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x43940000    # 296.0f

    sput v0, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt;->a:F

    return-void
.end method

.method public static final a(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x3b14909f

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x4

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p4, v0

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    move-object/from16 v10, p2

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int v11, v0, v1

    and-int/lit16 v0, v11, 0x93

    const/16 v1, 0x92

    const/4 v12, 0x0

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v12

    :goto_3
    and-int/lit8 v1, v11, 0x1

    invoke-virtual {v8, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v8}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v14

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v15, v11, 0xe

    if-eq v15, v9, :cond_4

    move v1, v12

    goto :goto_4

    :cond_4
    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_5

    if-ne v3, v4, :cond_6

    :cond_5
    new-instance v3, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt$StoreModeWelcomeComposable$1$1;

    const/4 v1, 0x0

    invoke-direct {v3, v2, v1}, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt$StoreModeWelcomeComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v0, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->c:Z

    if-nez v0, :cond_7

    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_8

    :cond_7
    move-object v1, v7

    move-object v5, v8

    goto/16 :goto_9

    :cond_8
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->i:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, -0x3e1b8002

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    if-eq v15, v9, :cond_9

    move v0, v12

    goto :goto_5

    :cond_9
    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_b

    if-ne v1, v4, :cond_a

    goto :goto_6

    :cond_a
    move-object v0, v1

    move-object v1, v2

    move-object v13, v4

    goto :goto_7

    :cond_b
    :goto_6
    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt$StoreModeWelcomeComposable$2$1;

    const-string v5, "retryFetchingStoreModeInfo()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    move-object/from16 v17, v4

    const-string v4, "retryFetchingStoreModeInfo"

    move-object/from16 v13, v17

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_7
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eq v15, v9, :cond_c

    move v2, v12

    goto :goto_8

    :cond_c
    const/4 v2, 0x1

    :goto_8
    or-int/2addr v0, v2

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_d

    if-ne v2, v13, :cond_e

    :cond_d
    new-instance v2, Lm11;

    invoke-direct {v2, v14, v1}, Lm11;-><init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;)V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function0;

    and-int/lit16 v6, v11, 0x3f0

    move-object v1, v7

    move-object v5, v8

    move-object v2, v10

    move-object/from16 v0, v16

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt;->b(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_f
    move-object v1, v7

    move-object v5, v8

    const v0, -0x3e1352c8

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v0, v11, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v1, v5, v0}, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeExpiredComposableKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :goto_9
    const v0, -0x3e1fce53

    const-string v2, "StoreModeWelcomeComposable"

    invoke-static {v5, v0, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/loading/LoadingMode;->DarkMode:Lcom/vuitton/android/presentation/loading/LoadingMode;

    shl-int/lit8 v3, v11, 0xc

    const/high16 v4, 0x70000

    and-int/2addr v3, v4

    or-int/lit16 v8, v3, 0x1b6

    const/16 v9, 0x18

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v7, v5

    const-wide/16 v4, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/loading/LvLoadingKt;->b(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/loading/LoadingMode;ZJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v5, v7

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_10
    move-object v5, v8

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_a
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_11

    new-instance v0, Lgi0;

    const/16 v2, 0x1d

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x1d2010c0

    move-object/from16 v2, p5

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x4

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p6, v0

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    move-object/from16 v14, p3

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x800

    goto :goto_3

    :cond_3
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v0, v2

    move-object/from16 v2, p4

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

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

    const/4 v7, 0x0

    if-eq v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    move v3, v7

    :goto_5
    and-int/lit8 v4, v0, 0x1

    invoke-virtual {v6, v4, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_16

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/content/Context;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->y:F

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v8, :cond_6

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v4, Landroidx/compose/runtime/MutableState;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_7

    move/from16 v17, v3

    goto :goto_6

    :cond_7
    sget v17, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt;->a:F

    :goto_6
    const/16 v5, 0x3e8

    const/4 v13, 0x0

    const/4 v12, 0x6

    invoke-static {v5, v7, v13, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v5

    move v12, v7

    const/16 v7, 0x1b0

    move-object/from16 v20, v8

    const/16 v8, 0x8

    move-object/from16 v21, v4

    const-string v4, "StoreMode button animation"

    move/from16 v22, v3

    move-object v3, v5

    const/4 v5, 0x0

    move/from16 v2, v17

    move-object/from16 v13, v20

    move-object/from16 v15, v21

    move/from16 v12, v22

    invoke-static/range {v2 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v4

    move-object v7, v6

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_8

    new-instance v2, Lp01;

    invoke-direct {v2, v15, v4, v9}, Lp01;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v8, v2

    check-cast v8, Landroidx/compose/runtime/State;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_9

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v9, v2

    check-cast v9, Landroidx/compose/runtime/MutableState;

    iget-boolean v2, v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->b:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_a

    if-ne v6, v13, :cond_b

    :cond_a
    new-instance v6, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt$StoreModeWelcomeScreen$1$1;

    const/4 v5, 0x0

    invoke-direct {v6, v1, v15, v9, v5}, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt$StoreModeWelcomeScreen$1$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, v6, v7}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_c

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/Dp;

    iget v3, v3, Landroidx/compose/ui/unit/Dp;->b:F

    new-instance v5, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v5, v3}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    and-int/lit16 v6, v0, 0x1c00

    move/from16 v21, v0

    const/16 v0, 0x800

    if-ne v6, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    or-int/2addr v0, v3

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_f

    if-ne v3, v13, :cond_e

    goto :goto_8

    :cond_e
    move-object v14, v5

    move v1, v12

    move/from16 v12, v21

    goto :goto_9

    :cond_f
    :goto_8
    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt$StoreModeWelcomeScreen$2$1;

    const/4 v6, 0x0

    move-object v3, v14

    move-object v14, v5

    move-object v5, v2

    move-object v2, v1

    move v1, v12

    move/from16 v12, v21

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt$StoreModeWelcomeScreen$2$1;-><init>(FLcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v2, v5

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_9
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v14, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v0, v12, 0x70

    const/16 v3, 0x20

    if-ne v0, v3, :cond_10

    const/4 v5, 0x1

    goto :goto_a

    :cond_10
    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_11

    if-ne v0, v13, :cond_12

    :cond_11
    new-instance v0, Lsq0;

    const/16 v3, 0x19

    invoke-direct {v0, v10, v3}, Lsq0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {v5, v0, v7, v5, v3}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit16 v6, v12, 0x380

    const/16 v12, 0x100

    if-ne v6, v12, :cond_13

    move v5, v3

    :cond_13
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v5, :cond_14

    if-ne v3, v13, :cond_15

    :cond_14
    new-instance v3, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt$StoreModeWelcomeScreen$4$1;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v11}, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt$StoreModeWelcomeScreen$4$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v0, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lkn0;

    const/16 v3, 0x1a

    invoke-direct {v0, v10, v3}, Lkn0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v3, -0x6f9c6f04

    invoke-static {v3, v0, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v18, Landroidx/compose/ui/graphics/Color;->h:J

    new-instance v0, Ls11;

    move-object/from16 v5, p4

    move-object v6, v4

    move-object v12, v7

    move-object v7, v9

    move-object v9, v15

    move-object/from16 v3, v16

    move v4, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v10}, Ls11;-><init>(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;FLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V

    const v1, -0x159809ef

    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v23

    const v25, 0x30180030

    const/16 v26, 0x1bd

    move-object v6, v12

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v24, v6

    invoke-static/range {v12 .. v26}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_b

    :cond_16
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_b
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_17

    new-instance v0, Lkj0;

    const/16 v7, 0x1a

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object v3, v11

    invoke-direct/range {v0 .. v7}, Lkj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method
