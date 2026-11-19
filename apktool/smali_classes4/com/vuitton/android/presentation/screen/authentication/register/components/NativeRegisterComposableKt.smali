.class public abstract Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v4, p5

    move-object/from16 v12, p6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x75325e47

    move-object/from16 v2, p7

    invoke-static {v4, v12, v2, v0}, La;->c(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p8, v0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    move-object/from16 v10, p2

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v0, v3

    move-object/from16 v13, p3

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    goto :goto_3

    :cond_3
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v0, v3

    move-object/from16 v3, p4

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x4000

    goto :goto_4

    :cond_4
    const/16 v6, 0x2000

    :goto_4
    or-int/2addr v0, v6

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/high16 v6, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v6, 0x10000

    :goto_5
    or-int/2addr v0, v6

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/high16 v6, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v6, 0x80000

    :goto_6
    or-int/2addr v0, v6

    const v6, 0x92493

    and-int/2addr v6, v0

    const v7, 0x92492

    const/16 v17, 0x1

    const/4 v9, 0x0

    if-eq v6, v7, :cond_7

    move/from16 v6, v17

    goto :goto_7

    :cond_7
    move v6, v9

    :goto_7
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v15, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_2f

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v6

    invoke-static {v6, v15}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v5, :cond_8

    sget-object v11, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v11, v15}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    new-array v8, v9, [Landroidx/navigation/Navigator;

    invoke-static {v8, v15}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v8

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    invoke-virtual/range {v18 .. v18}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->a()Z

    move-result v18

    if-eqz v18, :cond_9

    const/4 v9, 0x5

    goto :goto_8

    :cond_9
    const/4 v9, 0x4

    :goto_8
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v19

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v19, :cond_b

    if-ne v2, v5, :cond_a

    goto :goto_9

    :cond_a
    move/from16 v19, v0

    goto :goto_a

    :cond_b
    :goto_9
    new-instance v2, Le90;

    move/from16 v19, v0

    const/4 v0, 0x2

    invoke-direct {v2, v9, v0}, Le90;-><init>(II)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_a
    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x3

    const/4 v9, 0x0

    invoke-static {v9, v2, v15, v9, v0}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v0

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_c

    invoke-static {v15}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v2

    :cond_c
    check-cast v2, Landroidx/compose/material3/SnackbarHostState;

    const/4 v3, 0x7

    const/4 v10, 0x0

    invoke-static {v9, v3, v15, v10}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v3

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_d

    invoke-static {v10}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v9, Landroidx/compose/runtime/MutableState;

    invoke-static {v6, v15}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManagerKt;->a(Landroid/content/Context;Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;

    move-result-object v10

    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v13, v19, 0xe

    const/4 v4, 0x4

    if-eq v13, v4, :cond_e

    const/4 v4, 0x0

    goto :goto_b

    :cond_e
    move/from16 v4, v17

    :goto_b
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    or-int v4, v4, v20

    move/from16 v20, v4

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v20, :cond_f

    if-ne v4, v5, :cond_10

    :cond_f
    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$1$1;

    const/4 v14, 0x0

    invoke-direct {v4, v1, v2, v6, v14}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v4, 0x4

    if-eq v13, v4, :cond_11

    const/4 v4, 0x0

    goto :goto_c

    :cond_11
    move/from16 v4, v17

    :goto_c
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v4, v14

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v4, v14

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v4, :cond_12

    if-ne v14, v5, :cond_13

    :cond_12
    new-instance v14, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$2$1;

    const/4 v4, 0x0

    invoke-direct {v14, v1, v7, v0, v4}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v4, 0x4

    if-eq v13, v4, :cond_14

    const/4 v4, 0x0

    goto :goto_d

    :cond_14
    move/from16 v4, v17

    :goto_d
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v4, v14

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v4, :cond_15

    if-ne v14, v5, :cond_16

    :cond_15
    new-instance v14, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$3$1;

    const/4 v4, 0x0

    invoke-direct {v14, v1, v3, v9, v4}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v4, 0x4

    if-eq v13, v4, :cond_17

    const/4 v4, 0x0

    goto :goto_e

    :cond_17
    move/from16 v4, v17

    :goto_e
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v4, v14

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v4, v14

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v4, v14

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v4, v14

    const/high16 v14, 0x70000

    and-int v14, v19, v14

    move-object/from16 v20, v0

    const/high16 v0, 0x20000

    if-ne v14, v0, :cond_18

    move/from16 v0, v17

    goto :goto_f

    :cond_18
    const/4 v0, 0x0

    :goto_f
    or-int/2addr v0, v4

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_1a

    if-ne v4, v5, :cond_19

    goto :goto_10

    :cond_19
    move-object/from16 p7, v2

    move-object v14, v3

    move-object v10, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v11, v20

    goto :goto_11

    :cond_1a
    :goto_10
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1;

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    const/4 v7, 0x0

    move-object/from16 p7, v2

    move-object v14, v3

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v11, v20

    move-object v10, v4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_11
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v4, 0x4

    if-eq v13, v4, :cond_1b

    const/4 v0, 0x0

    goto :goto_12

    :cond_1b
    move/from16 v0, v17

    :goto_12
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    const/high16 v1, 0x380000

    and-int v7, v19, v1

    const/high16 v1, 0x100000

    if-ne v7, v1, :cond_1c

    move/from16 v1, v17

    goto :goto_13

    :cond_1c
    const/4 v1, 0x0

    :goto_13
    or-int/2addr v0, v1

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1e

    if-ne v1, v10, :cond_1d

    goto :goto_14

    :cond_1d
    move-object/from16 v2, p7

    move-object v0, v1

    move-object/from16 v1, p0

    goto :goto_15

    :cond_1e
    :goto_14
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$5$1;

    move-object v3, v5

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p6

    move-object/from16 v2, p7

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$5$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_15
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v0, v19, 0x70

    const/16 v3, 0x20

    if-eq v0, v3, :cond_1f

    const/4 v3, 0x0

    :goto_16
    const/4 v4, 0x4

    goto :goto_17

    :cond_1f
    move/from16 v3, v17

    goto :goto_16

    :goto_17
    if-eq v13, v4, :cond_20

    const/4 v4, 0x0

    goto :goto_18

    :cond_20
    move/from16 v4, v17

    :goto_18
    or-int/2addr v3, v4

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_22

    if-ne v4, v10, :cond_21

    goto :goto_19

    :cond_21
    move-object/from16 v3, p1

    goto :goto_1a

    :cond_22
    :goto_19
    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1;

    move-object/from16 v3, p1

    const/4 v5, 0x0

    invoke-direct {v4, v8, v3, v1, v5}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1a
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_23

    if-ne v5, v10, :cond_24

    :cond_23
    new-instance v5, Ln8;

    const/4 v4, 0x4

    invoke-direct {v5, v14, v9, v4}, Ln8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v4, :cond_25

    if-ne v12, v10, :cond_26

    :cond_25
    new-instance v12, Lm8;

    const/4 v4, 0x5

    invoke-direct {v12, v14, v9, v4}, Lm8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_26
    move-object v4, v12

    check-cast v4, Lkotlin/jvm/functions/Function0;

    sget-object v16, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$Register;->INSTANCE:Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$Register;

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    const/4 v1, 0x4

    if-eq v13, v1, :cond_27

    const/4 v1, 0x0

    goto :goto_1b

    :cond_27
    move/from16 v1, v17

    :goto_1b
    or-int/2addr v1, v12

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v1, v12

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v1, v12

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v1, v12

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v1, v12

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v1, v12

    move/from16 v12, v19

    and-int/lit16 v13, v12, 0x380

    move/from16 p7, v1

    const/16 v1, 0x100

    if-ne v13, v1, :cond_28

    move/from16 v1, v17

    goto :goto_1c

    :cond_28
    const/4 v1, 0x0

    :goto_1c
    or-int v1, p7, v1

    and-int/lit16 v13, v12, 0x1c00

    move/from16 p7, v1

    const/16 v1, 0x800

    if-ne v13, v1, :cond_29

    move/from16 v1, v17

    goto :goto_1d

    :cond_29
    const/4 v1, 0x0

    :goto_1d
    or-int v1, p7, v1

    const v13, 0xe000

    and-int/2addr v12, v13

    const/16 v13, 0x4000

    if-ne v12, v13, :cond_2a

    move/from16 v12, v17

    goto :goto_1e

    :cond_2a
    const/4 v12, 0x0

    :goto_1e
    or-int/2addr v1, v12

    const/high16 v12, 0x100000

    if-ne v7, v12, :cond_2b

    move/from16 v7, v17

    goto :goto_1f

    :cond_2b
    const/4 v7, 0x0

    :goto_1f
    or-int/2addr v1, v7

    const/16 v7, 0x20

    if-eq v0, v7, :cond_2c

    const/16 v17, 0x0

    :cond_2c
    or-int v0, v1, v17

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2d

    if-ne v1, v10, :cond_2e

    :cond_2d
    new-instance v0, Ls9;

    move-object/from16 v1, p0

    move-object/from16 v10, p3

    move-object/from16 v12, p6

    move-object v7, v6

    move-object v13, v9

    move-object v6, v14

    move-object/from16 v9, p2

    move-object v14, v3

    move-object v3, v5

    move-object v5, v11

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v14}, Ls9;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_2e
    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/16 v12, 0x30

    const/16 v13, 0x7fc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v11, v15

    move-object/from16 v2, v16

    invoke-static/range {v1 .. v13}, Landroidx/navigation/compose/NavHostKt;->b(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_20

    :cond_2f
    move-object v11, v15

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_20
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_30

    new-instance v0, Lo;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lo;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_30
    return-void
.end method
