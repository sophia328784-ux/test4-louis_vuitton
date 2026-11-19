.class public abstract Lcom/vuitton/android/presentation/screen/options/settings/components/EditSettingsComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x52df2345

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x4

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p4, v0

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x20

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    const/16 v11, 0x100

    if-eqz v1, :cond_2

    move v1, v11

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int v12, v0, v1

    and-int/lit16 v0, v12, 0x93

    const/16 v1, 0x92

    const/4 v13, 0x0

    const/4 v15, 0x1

    if-eq v0, v1, :cond_3

    move v0, v15

    goto :goto_3

    :cond_3
    move v0, v13

    :goto_3
    and-int/lit8 v1, v12, 0x1

    invoke-virtual {v14, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v14}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    and-int/lit8 v1, v12, 0xe

    if-eq v1, v10, :cond_4

    move v4, v13

    goto :goto_4

    :cond_4
    move v4, v15

    :goto_4
    and-int/lit8 v5, v12, 0x70

    if-ne v5, v3, :cond_5

    move v3, v15

    goto :goto_5

    :cond_5
    move v3, v13

    :goto_5
    or-int/2addr v3, v4

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_6

    if-ne v4, v5, :cond_7

    :cond_6
    new-instance v4, Law;

    invoke-direct {v4, v2, v7, v13}, Law;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v13, v4, v14, v13, v15}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_8

    invoke-static {v14}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v4

    :cond_8
    check-cast v4, Landroidx/compose/material3/SnackbarHostState;

    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    if-eq v1, v10, :cond_9

    move/from16 v16, v13

    goto :goto_6

    :cond_9
    move/from16 v16, v15

    :goto_6
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    const/4 v13, 0x0

    if-nez v16, :cond_a

    if-ne v15, v5, :cond_b

    :cond_a
    new-instance v15, Lcom/vuitton/android/presentation/screen/options/settings/components/EditSettingsComposableKt$EditSettingsComposable$2$1;

    invoke-direct {v15, v2, v4, v3, v13}, Lcom/vuitton/android/presentation/screen/options/settings/components/EditSettingsComposableKt$EditSettingsComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v6, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eq v1, v10, :cond_c

    const/4 v3, 0x0

    goto :goto_7

    :cond_c
    const/4 v3, 0x1

    :goto_7
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v3, :cond_d

    if-ne v15, v5, :cond_e

    :cond_d
    new-instance v15, Lcom/vuitton/android/presentation/screen/options/settings/components/EditSettingsComposableKt$EditSettingsComposable$3$1;

    invoke-direct {v15, v2, v13}, Lcom/vuitton/android/presentation/screen/options/settings/components/EditSettingsComposableKt$EditSettingsComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v6, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;

    if-eq v1, v10, :cond_f

    const/4 v0, 0x0

    goto :goto_8

    :cond_f
    const/4 v0, 0x1

    :goto_8
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_11

    if-ne v3, v5, :cond_10

    goto :goto_9

    :cond_10
    move v15, v1

    move-object/from16 v18, v4

    move-object v9, v5

    goto :goto_a

    :cond_11
    :goto_9
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/settings/components/EditSettingsComposableKt$EditSettingsComposable$4$1;

    move-object v3, v5

    const-string v5, "saveSettingsClicked()V"

    const/4 v6, 0x0

    move v15, v1

    const/4 v1, 0x0

    move-object/from16 v16, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;

    move-object/from16 v18, v4

    const-string v4, "saveSettingsClicked"

    move-object/from16 v9, v16

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_a
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object/from16 v19, v3

    check-cast v19, Lkotlin/jvm/functions/Function0;

    if-eq v15, v10, :cond_12

    const/4 v0, 0x0

    goto :goto_b

    :cond_12
    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_14

    if-ne v1, v9, :cond_13

    goto :goto_c

    :cond_13
    move-object v0, v1

    move-object/from16 v1, p0

    goto :goto_d

    :cond_14
    :goto_c
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/settings/components/EditSettingsComposableKt$EditSettingsComposable$5$1;

    const-string v5, "isSaveButtonEnabled()Z"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;

    const-string v4, "isSaveButtonEnabled"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_d
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    and-int/lit16 v0, v12, 0x380

    if-ne v0, v11, :cond_15

    const/4 v0, 0x1

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    :goto_e
    if-eq v15, v10, :cond_16

    const/4 v2, 0x0

    goto :goto_f

    :cond_16
    const/4 v2, 0x1

    :goto_f
    or-int/2addr v0, v2

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_17

    if-ne v2, v9, :cond_18

    :cond_17
    new-instance v2, Law;

    invoke-direct {v2, v8, v1}, Law;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    if-eq v15, v10, :cond_19

    const/4 v0, 0x0

    goto :goto_10

    :cond_19
    const/4 v0, 0x1

    :goto_10
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_1a

    if-ne v2, v9, :cond_1b

    :cond_1a
    new-instance v2, Lvv;

    const/4 v0, 0x2

    invoke-direct {v2, v1, v0}, Lvv;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;I)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function1;

    if-eq v15, v10, :cond_1c

    const/4 v0, 0x0

    goto :goto_11

    :cond_1c
    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    if-nez v0, :cond_1d

    if-ne v2, v9, :cond_1e

    :cond_1d
    new-instance v2, Lvv;

    invoke-direct {v2, v1, v3}, Lvv;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;I)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eq v15, v10, :cond_1f

    const/4 v0, 0x0

    goto :goto_12

    :cond_1f
    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v0, :cond_20

    if-ne v11, v9, :cond_21

    :cond_20
    new-instance v11, Lvv;

    invoke-direct {v11, v1, v10}, Lvv;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;I)V

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v11, Lkotlin/jvm/functions/Function1;

    if-eq v15, v10, :cond_22

    const/4 v0, 0x0

    :goto_13
    move/from16 v16, v3

    goto :goto_14

    :cond_22
    const/4 v0, 0x1

    goto :goto_13

    :goto_14
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_23

    if-ne v3, v9, :cond_24

    :cond_23
    new-instance v3, Lvv;

    const/4 v0, 0x5

    invoke-direct {v3, v1, v0}, Lvv;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;I)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    check-cast v3, Lkotlin/jvm/functions/Function1;

    if-eq v15, v10, :cond_25

    const/4 v0, 0x0

    goto :goto_15

    :cond_25
    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v0, :cond_26

    if-ne v10, v9, :cond_27

    :cond_26
    new-instance v10, Lvv;

    const/4 v0, 0x0

    invoke-direct {v10, v1, v0}, Lvv;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;I)V

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-eq v15, v0, :cond_28

    const/16 v20, 0x0

    goto :goto_16

    :cond_28
    const/16 v20, 0x1

    :goto_16
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v20, :cond_2a

    if-ne v0, v9, :cond_29

    goto :goto_17

    :cond_29
    move-object/from16 v20, v2

    goto :goto_18

    :cond_2a
    :goto_17
    new-instance v0, Lvv;

    move-object/from16 v20, v2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lvv;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_18
    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x4

    if-eq v15, v2, :cond_2b

    const/4 v2, 0x0

    :goto_19
    move-object/from16 v21, v0

    goto :goto_1a

    :cond_2b
    const/4 v2, 0x1

    goto :goto_19

    :goto_1a
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v2, :cond_2d

    if-ne v0, v9, :cond_2c

    goto :goto_1b

    :cond_2c
    const/4 v2, 0x0

    goto :goto_1c

    :cond_2d
    :goto_1b
    new-instance v0, Lwv;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lwv;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1c
    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x4

    if-eq v15, v2, :cond_2e

    const/16 v17, 0x0

    goto :goto_1d

    :cond_2e
    const/16 v17, 0x1

    :goto_1d
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v17, :cond_2f

    if-ne v2, v9, :cond_30

    :cond_2f
    new-instance v2, Lwv;

    const/4 v9, 0x1

    invoke-direct {v2, v1, v9}, Lwv;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;I)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_30
    check-cast v2, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v9, v12, 0x3

    and-int/lit16 v9, v9, 0x380

    or-int/lit8 v15, v9, 0x30

    move-object v12, v0

    move-object v9, v3

    move-object v8, v11

    move-object v0, v13

    move-object/from16 v1, v18

    move-object/from16 v3, v19

    move-object/from16 v11, v21

    move-object v13, v2

    move-object v2, v7

    move-object/from16 v7, v20

    invoke-static/range {v0 .. v15}, Lcom/vuitton/android/presentation/screen/options/settings/components/EditSettingsComposableKt;->b(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1e

    :cond_31
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_32

    new-instance v0, Lrv;

    const/4 v2, 0x2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Lrv;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_32
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 32

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v15, p15

    const v0, -0x1004c4fe

    move-object/from16 v1, p14

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v15, 0x6

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v15

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    move v6, v15

    :goto_1
    and-int/lit8 v7, v15, 0x30

    if-nez v7, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v6, v7

    :cond_3
    and-int/lit16 v7, v15, 0x180

    if-nez v7, :cond_5

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v6, v7

    :cond_5
    and-int/lit16 v7, v15, 0xc00

    if-nez v7, :cond_7

    move-object/from16 v7, p3

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/16 v14, 0x800

    goto :goto_4

    :cond_6
    const/16 v14, 0x400

    :goto_4
    or-int/2addr v6, v14

    goto :goto_5

    :cond_7
    move-object/from16 v7, p3

    :goto_5
    and-int/lit16 v14, v15, 0x6000

    if-nez v14, :cond_9

    move-object/from16 v14, p4

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x4000

    goto :goto_6

    :cond_8
    const/16 v16, 0x2000

    :goto_6
    or-int v6, v6, v16

    goto :goto_7

    :cond_9
    move-object/from16 v14, p4

    :goto_7
    const/high16 v16, 0x30000

    and-int v16, v15, v16

    move-object/from16 v4, p5

    if-nez v16, :cond_b

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/high16 v16, 0x20000

    goto :goto_8

    :cond_a
    const/high16 v16, 0x10000

    :goto_8
    or-int v6, v6, v16

    :cond_b
    const/high16 v16, 0x180000

    and-int v16, v15, v16

    move-object/from16 v5, p6

    if-nez v16, :cond_d

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/high16 v17, 0x100000

    goto :goto_9

    :cond_c
    const/high16 v17, 0x80000

    :goto_9
    or-int v6, v6, v17

    :cond_d
    const/high16 v17, 0xc00000

    and-int v17, v15, v17

    move-object/from16 v8, p7

    if-nez v17, :cond_f

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/high16 v18, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v18, 0x400000

    :goto_a
    or-int v6, v6, v18

    :cond_f
    const/high16 v18, 0x6000000

    and-int v18, v15, v18

    move-object/from16 v9, p8

    if-nez v18, :cond_11

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    const/high16 v19, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v19, 0x2000000

    :goto_b
    or-int v6, v6, v19

    :cond_11
    const/high16 v19, 0x30000000

    and-int v19, v15, v19

    move-object/from16 v10, p9

    if-nez v19, :cond_13

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    const/high16 v20, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v20, 0x10000000

    :goto_c
    or-int v6, v6, v20

    :cond_13
    move-object/from16 v11, p10

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    const/16 v16, 0x4

    :goto_d
    move-object/from16 v12, p11

    goto :goto_e

    :cond_14
    const/16 v16, 0x2

    goto :goto_d

    :goto_e
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    const/16 v17, 0x20

    goto :goto_f

    :cond_15
    const/16 v17, 0x10

    :goto_f
    or-int v16, v16, v17

    move-object/from16 v13, p12

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    const/16 v19, 0x100

    goto :goto_10

    :cond_16
    const/16 v19, 0x80

    :goto_10
    or-int v16, v16, v19

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    const/16 v17, 0x800

    goto :goto_11

    :cond_17
    const/16 v17, 0x400

    :goto_11
    or-int v1, v16, v17

    const v16, 0x12492493

    and-int v4, v6, v16

    const v5, 0x12492492

    move/from16 p14, v6

    const/4 v6, 0x0

    const/16 v16, 0x1

    if-ne v4, v5, :cond_19

    and-int/lit16 v1, v1, 0x493

    const/16 v4, 0x492

    if-eq v1, v4, :cond_18

    goto :goto_12

    :cond_18
    move v1, v6

    goto :goto_13

    :cond_19
    :goto_12
    move/from16 v1, v16

    :goto_13
    and-int/lit8 v4, p14, 0x1

    invoke-virtual {v0, v4, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v1, 0x0

    const/4 v4, 0x7

    invoke-static {v6, v4, v0, v1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v18

    new-instance v1, Lo0;

    const/16 v4, 0x1d

    invoke-direct {v1, v3, v4}, Lo0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v4, 0x7bbd0cbe

    invoke-static {v4, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    new-instance v4, Lg0;

    const/16 v5, 0x19

    invoke-direct {v4, v2, v5}, Lg0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v5, -0x5c379804

    invoke-static {v5, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    new-instance v16, Lh0;

    move-object/from16 v17, p0

    move-object/from16 v29, p5

    move-object/from16 v22, p6

    move-object/from16 v19, p13

    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move-object/from16 v26, v12

    move-object/from16 v28, v13

    move-object/from16 v20, v14

    invoke-direct/range {v16 .. v29}, Lh0;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v5, v16

    const v6, -0x28b34a2d

    invoke-static {v6, v5, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v27

    const v29, 0x30000c30

    const/16 v30, 0x1f5

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v28, v0

    move-object/from16 v17, v1

    move-object/from16 v19, v4

    invoke-static/range {v16 .. v30}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_14

    :cond_1a
    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_14
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_1b

    move-object v1, v0

    new-instance v0, Lxv;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v31, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v15}, Lxv;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    move-object/from16 v1, v31

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 35

    move-object/from16 v0, p0

    move/from16 v3, p2

    move-object/from16 v7, p6

    const-string v1, "SettingSwitchBlock"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x42add1a

    move-object/from16 v4, p7

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    or-int/lit8 v2, p8, 0x6

    move-object/from16 v8, p1

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_0

    :cond_1
    const/16 v4, 0x10

    :goto_0
    or-int/2addr v2, v4

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_1

    :cond_2
    const/16 v4, 0x80

    :goto_1
    or-int/2addr v2, v4

    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_3

    or-int/lit16 v2, v2, 0xc00

    move/from16 v5, p3

    goto :goto_3

    :cond_3
    move/from16 v5, p3

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x800

    goto :goto_2

    :cond_4
    const/16 v6, 0x400

    :goto_2
    or-int/2addr v2, v6

    :goto_3
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    const/high16 v9, 0x100000

    if-eqz v6, :cond_5

    move v6, v9

    goto :goto_4

    :cond_5
    const/high16 v6, 0x80000

    :goto_4
    or-int/2addr v2, v6

    const v6, 0x92493

    and-int/2addr v6, v2

    const v10, 0x92492

    const/4 v11, 0x1

    const/16 v31, 0x0

    if-eq v6, v10, :cond_6

    move v6, v11

    goto :goto_5

    :cond_6
    move/from16 v6, v31

    :goto_5
    and-int/lit8 v10, v2, 0x1

    invoke-virtual {v12, v10, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_7

    move v5, v11

    :cond_7
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    const/16 v10, 0x36

    invoke-static {v6, v4, v12, v10}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v4

    iget-wide v13, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v12, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v15, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v15, :cond_d

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_8

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_6
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v4, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v10, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v4, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v13, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v4, v6, v11}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v17, 0x0

    const/16 v18, 0xb

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v4

    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, p4

    invoke-static {v6, v10}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-interface {v4, v6}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v13, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->i:Landroidx/compose/ui/text/TextStyle;

    shr-int/lit8 v15, v2, 0x3

    and-int/lit8 v28, v15, 0xe

    const/16 v29, 0x0

    const v30, 0x1fff8

    move-wide/from16 v33, v13

    move v14, v11

    move-wide/from16 v10, v33

    move-object/from16 v27, v12

    const-wide/16 v12, 0x0

    move/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    move/from16 v18, v16

    const-wide/16 v15, 0x0

    move/from16 v19, v17

    const/16 v17, 0x0

    move/from16 v20, v18

    const/16 v18, 0x0

    move/from16 v21, v19

    move/from16 v22, v20

    const-wide/16 v19, 0x0

    move/from16 v23, v21

    const/16 v21, 0x0

    move/from16 v24, v22

    const/16 v22, 0x0

    move/from16 v25, v23

    const/16 v23, 0x0

    move/from16 v26, v24

    const/16 v24, 0x0

    move/from16 v32, v25

    const/16 v25, 0x0

    move/from16 v26, v9

    move-object v9, v4

    move/from16 v4, v26

    move-object/from16 v26, v6

    move/from16 v6, v32

    invoke-static/range {v8 .. v30}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, p5

    move-object/from16 v12, v27

    invoke-static {v1, v15}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    if-eqz v3, :cond_9

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;->ACCEPTED:Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;

    :goto_7
    move-object v9, v1

    goto :goto_8

    :cond_9
    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;->DENIED:Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;

    goto :goto_7

    :goto_8
    const/high16 v1, 0x380000

    and-int/2addr v1, v2

    if-ne v1, v4, :cond_a

    const/4 v11, 0x1

    goto :goto_9

    :cond_a
    move/from16 v11, v31

    :goto_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v11, :cond_b

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_c

    :cond_b
    new-instance v1, Lk0;

    const/16 v2, 0x9

    invoke-direct {v1, v7, v2}, Lk0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v13, v6, 0x380

    const/4 v14, 0x0

    move v10, v5

    invoke-static/range {v8 .. v14}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v4, v10

    :goto_a
    move-object v1, v0

    goto :goto_b

    :cond_d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_e
    move-object/from16 v15, p5

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    move v4, v5

    goto :goto_a

    :goto_b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_f

    new-instance v0, Lzv;

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v6, v15

    invoke-direct/range {v0 .. v9}, Lzv;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method
