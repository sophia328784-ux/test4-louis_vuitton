.class public abstract Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7dfe92fb

    move-object/from16 v2, p4

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x4

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p5, v0

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    move-object/from16 v14, p2

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    move-object/from16 v3, p3

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x800

    goto :goto_3

    :cond_3
    const/16 v2, 0x400

    :goto_3
    or-int v11, v0, v2

    and-int/lit16 v0, v11, 0x493

    const/16 v2, 0x492

    if-eq v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    and-int/lit8 v2, v11, 0x1

    invoke-virtual {v15, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v15}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->r:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v7, :cond_5

    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v2, v15}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v7, :cond_6

    invoke-static {v15}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v13

    :cond_6
    check-cast v13, Landroidx/compose/material3/SnackbarHostState;

    invoke-static {v6, v15}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManagerKt;->a(Landroid/content/Context;Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;

    move-result-object v10

    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v4, v11, 0xe

    if-eq v4, v9, :cond_7

    const/16 v18, 0x0

    goto :goto_5

    :cond_7
    const/16 v18, 0x1

    :goto_5
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    const/4 v14, 0x0

    if-nez v18, :cond_8

    if-ne v9, v7, :cond_9

    :cond_8
    new-instance v9, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$2$1;

    invoke-direct {v9, v1, v14}, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v9, 0x4

    if-eq v4, v9, :cond_a

    const/4 v9, 0x0

    goto :goto_6

    :cond_a
    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v9, v9, v18

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v9, :cond_b

    if-ne v14, v7, :cond_c

    :cond_b
    new-instance v14, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$3$1;

    const/4 v9, 0x0

    invoke-direct {v14, v1, v13, v6, v9}, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v9, 0x4

    if-eq v4, v9, :cond_d

    const/4 v9, 0x0

    goto :goto_7

    :cond_d
    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v9, v14

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v9, v14

    and-int/lit16 v14, v11, 0x1c00

    move-object/from16 v19, v0

    const/16 v0, 0x800

    if-ne v14, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    :goto_8
    or-int/2addr v0, v9

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v0, v9

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v0, v9

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v0, :cond_10

    if-ne v9, v7, :cond_f

    goto :goto_9

    :cond_f
    move-object v14, v7

    move-object v0, v9

    move-object v2, v10

    move-object/from16 v9, v19

    move v10, v4

    move-object v7, v5

    goto :goto_a

    :cond_10
    :goto_9
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$4$1;

    move-object v9, v7

    const/4 v7, 0x0

    move v14, v4

    move-object v4, v2

    move-object v2, v10

    move v10, v14

    move-object v14, v9

    move-object/from16 v9, v19

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$4$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/State;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    move-object v7, v5

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_a
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v2, :cond_14

    const v0, 0x1c29c8e8

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    const/4 v3, 0x4

    if-eq v10, v3, :cond_11

    const/4 v3, 0x0

    goto :goto_b

    :cond_11
    const/4 v3, 0x1

    :goto_b
    or-int/2addr v0, v3

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_12

    if-ne v3, v14, :cond_13

    :cond_12
    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;

    const/4 v0, 0x0

    invoke-direct {v3, v2, v6, v1, v0}, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v12, 0x0

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :cond_14
    const/4 v12, 0x0

    const v0, 0x1c2dfe47

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_c
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;

    const/4 v3, 0x4

    if-eq v10, v3, :cond_15

    move v0, v12

    goto :goto_d

    :cond_15
    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_16

    if-ne v2, v14, :cond_17

    :cond_16
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$6$1;

    const-string v5, "onFieldUpdated(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;

    const-string v4, "onFieldUpdated"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :cond_17
    check-cast v2, Lkotlin/reflect/KFunction;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    const/4 v3, 0x4

    if-eq v10, v3, :cond_18

    move v3, v12

    goto :goto_e

    :cond_18
    const/4 v3, 0x1

    :goto_e
    or-int/2addr v0, v3

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_19

    if-ne v3, v14, :cond_1a

    :cond_19
    new-instance v3, Lpp;

    const/16 v0, 0x1c

    invoke-direct {v3, v9, v1, v7, v0}, Lpp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x4

    if-eq v10, v9, :cond_1b

    move v0, v12

    goto :goto_f

    :cond_1b
    const/4 v0, 0x1

    :goto_f
    and-int/lit8 v4, v11, 0x70

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1c

    const/4 v12, 0x1

    :cond_1c
    or-int/2addr v0, v12

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_1d

    if-ne v4, v14, :cond_1e

    :cond_1d
    new-instance v4, Lk60;

    const/16 v0, 0x16

    invoke-direct {v4, v1, v8, v0}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v4, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v0, v11, 0x9

    const/high16 v5, 0x70000

    and-int/2addr v0, v5

    or-int/lit8 v16, v0, 0x30

    move-object/from16 v14, p2

    move-object v11, v2

    move-object v12, v3

    move-object v10, v13

    move-object/from16 v9, v17

    move-object v13, v4

    invoke-static/range {v9 .. v16}, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginScreenKt;->a(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_10

    :cond_1f
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_10
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_20

    new-instance v0, Luv;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    move-object v2, v8

    invoke-direct/range {v0 .. v5}, Luv;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method
