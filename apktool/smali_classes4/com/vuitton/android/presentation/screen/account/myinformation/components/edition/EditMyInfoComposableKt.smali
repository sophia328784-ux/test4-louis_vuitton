.class public abstract Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7941e379

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x4

    if-eqz v0, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p6, v0

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x100

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x4000

    goto :goto_4

    :cond_4
    const/16 v1, 0x2000

    :goto_4
    or-int v14, v0, v1

    and-int/lit16 v0, v14, 0x2493

    const/16 v1, 0x2492

    const/16 v16, 0x1

    if-eq v0, v1, :cond_5

    move/from16 v0, v16

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    and-int/lit8 v1, v14, 0x1

    invoke-virtual {v11, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v11}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->i:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/focus/FocusManager;

    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit16 v13, v14, 0x380

    if-ne v13, v3, :cond_6

    move/from16 v3, v16

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v3, v13

    and-int/lit8 v13, v14, 0xe

    if-eq v13, v12, :cond_7

    const/16 v17, 0x0

    goto :goto_7

    :cond_7
    move/from16 v17, v16

    :goto_7
    or-int v3, v3, v17

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v12, 0x0

    if-nez v3, :cond_8

    if-ne v15, v4, :cond_9

    :cond_8
    new-instance v15, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;

    invoke-direct {v15, v8, v2, v0, v12}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v6, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_a

    invoke-static {v11}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v3

    :cond_a
    move-object v15, v3

    check-cast v15, Landroidx/compose/material3/SnackbarHostState;

    const/4 v3, 0x4

    if-eq v13, v3, :cond_b

    const/4 v3, 0x0

    goto :goto_8

    :cond_b
    move/from16 v3, v16

    :goto_8
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    or-int v3, v3, v19

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v3, :cond_c

    if-ne v12, v4, :cond_d

    :cond_c
    new-instance v12, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$2$1;

    const/4 v3, 0x0

    invoke-direct {v12, v2, v15, v5, v3}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v6, v12}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v3, 0x4

    if-eq v13, v3, :cond_e

    const/4 v3, 0x0

    goto :goto_9

    :cond_e
    move/from16 v3, v16

    :goto_9
    and-int/lit16 v5, v14, 0x1c00

    const/16 v12, 0x800

    if-ne v5, v12, :cond_f

    move/from16 v5, v16

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    :goto_a
    or-int/2addr v3, v5

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_10

    if-ne v5, v4, :cond_11

    :cond_10
    new-instance v5, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$3$1;

    const/4 v3, 0x0

    invoke-direct {v5, v2, v9, v3}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v6, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->b:Z

    if-eqz v3, :cond_12

    const v1, -0x2566faab

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;

    new-instance v1, Lqd;

    const/16 v3, 0x9

    invoke-direct {v1, v3, v7, v9}, Lqd;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const v3, 0x41935169

    invoke-static {v3, v1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v3, 0x1b0

    invoke-static {v0, v1, v15, v11, v3}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoLoadingScreenKt;->a(Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_b
    move-object v1, v11

    goto/16 :goto_10

    :cond_12
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;->k:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;

    invoke-virtual {v3, v5}, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const v0, 0x3057afe7

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v0, Lqd;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v7, v9}, Lqd;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const v1, 0x4be6ce1e    # 3.0252092E7f

    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    const/4 v3, 0x4

    if-eq v13, v3, :cond_13

    const/16 v16, 0x0

    :cond_13
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v16, :cond_14

    if-ne v0, v4, :cond_15

    :cond_14
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$6$1;

    const-string v5, "loadMyInfoEditForm()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    const-string v4, "loadMyInfoEditForm"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v0, Lkotlin/reflect/KFunction;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/16 v1, 0x36

    invoke-static {v15, v12, v0, v11, v1}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoErrorScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v2, p0

    goto :goto_b

    :cond_16
    const/4 v12, 0x0

    const v2, 0x3057dd89

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;

    new-instance v2, Lu;

    const/16 v3, 0x1d

    invoke-direct {v2, v7, v9, v1, v3}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v1, -0x7eab2847

    invoke-static {v1, v2, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v18

    const/4 v3, 0x4

    if-eq v13, v3, :cond_17

    move v1, v12

    goto :goto_c

    :cond_17
    move/from16 v1, v16

    :goto_c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_18

    if-ne v2, v4, :cond_19

    :cond_18
    move-object v1, v0

    goto :goto_d

    :cond_19
    move-object v12, v0

    move-object v0, v2

    move-object v7, v4

    move-object/from16 v2, p0

    goto :goto_e

    :goto_d
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$8$1;

    const-string v5, "onFieldUpdated(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V"

    const/4 v6, 0x0

    move-object v2, v1

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    move-object/from16 v19, v4

    const-string v4, "onFieldUpdated"

    move-object v12, v2

    move-object/from16 v7, v19

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_e
    check-cast v0, Lkotlin/reflect/KFunction;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const v1, 0xe000

    and-int/2addr v1, v14

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_1a

    move/from16 v1, v16

    goto :goto_f

    :cond_1a
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    const/4 v3, 0x4

    if-eq v13, v3, :cond_1b

    const/16 v16, 0x0

    :cond_1b
    or-int v1, v1, v16

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_1c

    if-ne v3, v7, :cond_1d

    :cond_1c
    new-instance v3, Lpp;

    const/4 v1, 0x6

    invoke-direct {v3, v10, v2, v12, v1}, Lpp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->g:Z

    move-object/from16 v13, v18

    const/16 v18, 0x1b0

    move-object/from16 v12, v17

    move-object/from16 v17, v11

    move-object v11, v12

    move-object v14, v0

    move/from16 v16, v1

    move-object v12, v15

    const/4 v0, 0x0

    move-object v15, v3

    invoke-static/range {v11 .. v18}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoScreenKt;->b(Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :cond_1e
    move-object v1, v11

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_10
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_1f

    new-instance v0, Lw;

    const/16 v7, 0x10

    move/from16 v6, p6

    move-object v1, v2

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v7}, Lw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void
.end method

.method public static final b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v15, p3

    const v0, 0x6b2d2998

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v15

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {v11, v2, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "EditMyInfoTopBar"

    const-string v2, "editProfile_title_text"

    invoke-static {v1, v2}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    shl-int/lit8 v2, v0, 0x9

    and-int/lit16 v2, v2, 0x1c00

    shl-int/lit8 v0, v0, 0xf

    const/high16 v4, 0x380000

    and-int/2addr v0, v4

    or-int v12, v2, v0

    const/4 v13, 0x0

    const/16 v14, 0xfb6

    move-object v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v0 .. v14}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;III)V

    goto :goto_3

    :cond_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lqd;

    const/16 v2, 0xb

    invoke-direct {v1, v3, v6, v15, v2}, Lqd;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;II)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method
