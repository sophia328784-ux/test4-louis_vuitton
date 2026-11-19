.class public abstract Lcom/vuitton/android/presentation/screen/account/myinformation/components/SeeMyInfoComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00028\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/account/myinformation/components/MyInformationBottomSheetScreen;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v3, p5

    move-object/from16 v7, p6

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x1d435152

    move-object/from16 v1, p7

    invoke-static {v3, v7, v1, v0}, La;->c(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p8, v0

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    move-object/from16 v4, p3

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x800

    goto :goto_3

    :cond_3
    const/16 v6, 0x400

    :goto_3
    or-int/2addr v0, v6

    move-object/from16 v6, p4

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x4000

    goto :goto_4

    :cond_4
    const/16 v8, 0x2000

    :goto_4
    or-int/2addr v0, v8

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/high16 v8, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v8, 0x10000

    :goto_5
    or-int/2addr v0, v8

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/high16 v8, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v8, 0x80000

    :goto_6
    or-int/2addr v0, v8

    const v8, 0x92493

    and-int/2addr v8, v0

    const v9, 0x92492

    if-eq v8, v9, :cond_7

    const/4 v8, 0x1

    goto :goto_7

    :cond_7
    const/4 v8, 0x0

    :goto_7
    and-int/lit8 v9, v0, 0x1

    invoke-virtual {v13, v9, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_18

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v10}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v8

    invoke-static {v8, v13}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    sget-object v15, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v1, v0, 0xe

    if-eq v1, v2, :cond_8

    const/16 v17, 0x0

    goto :goto_8

    :cond_8
    const/16 v17, 0x1

    :goto_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v2, 0x0

    if-nez v17, :cond_9

    if-ne v5, v14, :cond_a

    :cond_9
    new-instance v5, Lcom/vuitton/android/presentation/screen/account/myinformation/components/SeeMyInfoComposableKt$SeeMyInfoComposable$1$1;

    invoke-direct {v5, v10, v2}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/SeeMyInfoComposableKt$SeeMyInfoComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v15, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v14, :cond_b

    invoke-static {v13}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v5

    :cond_b
    check-cast v5, Landroidx/compose/material3/SnackbarHostState;

    const/4 v2, 0x4

    if-eq v1, v2, :cond_c

    const/4 v2, 0x0

    goto :goto_9

    :cond_c
    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    or-int v2, v2, v21

    move/from16 v21, v2

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v21, :cond_e

    if-ne v2, v14, :cond_d

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    goto :goto_b

    :cond_e
    :goto_a
    new-instance v2, Lcom/vuitton/android/presentation/screen/account/myinformation/components/SeeMyInfoComposableKt$SeeMyInfoComposable$2$1;

    const/4 v3, 0x0

    invoke-direct {v2, v10, v5, v9, v3}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/SeeMyInfoComposableKt$SeeMyInfoComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_b
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v15, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v2, 0x7

    const/4 v9, 0x0

    invoke-static {v9, v2, v13, v3}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v2

    move-object/from16 v17, v3

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_f

    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v19, :cond_10

    if-ne v9, v14, :cond_11

    :cond_10
    new-instance v9, Ln8;

    const/16 v4, 0x8

    invoke-direct {v9, v2, v3, v4}, Ln8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    and-int/lit16 v0, v0, 0x380

    move/from16 v19, v4

    const/16 v4, 0x100

    if-ne v0, v4, :cond_12

    const/4 v0, 0x1

    goto :goto_c

    :cond_12
    const/4 v0, 0x0

    :goto_c
    or-int v0, v19, v0

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_13

    if-ne v4, v14, :cond_14

    :cond_13
    new-instance v4, Lju;

    const/4 v0, 0x2

    invoke-direct {v4, v2, v12, v3, v0}, Lju;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x4

    if-eq v1, v0, :cond_15

    const/16 v21, 0x0

    goto :goto_d

    :cond_15
    const/16 v21, 0x1

    :goto_d
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int v0, v21, v0

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_16

    if-ne v1, v14, :cond_17

    :cond_16
    new-instance v1, Lcom/vuitton/android/presentation/screen/account/myinformation/components/SeeMyInfoComposableKt$SeeMyInfoComposable$3$1;

    const/4 v0, 0x0

    invoke-direct {v1, v10, v9, v0}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/SeeMyInfoComposableKt$SeeMyInfoComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v15, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lkn0;

    const/16 v1, 0x12

    invoke-direct {v0, v11, v1}, Lkn0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v1, -0xa6ea296

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v14

    new-instance v0, Lfs0;

    const/4 v1, 0x3

    invoke-direct {v0, v5, v1}, Lfs0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v1, 0x30066f28

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v16

    new-instance v0, Lf9;

    move-object v1, v6

    move-object v6, v2

    move-object v2, v1

    move-object v1, v7

    move-object v7, v4

    move-object v4, v1

    move-object/from16 v1, p3

    move-object v5, v9

    move-object v9, v3

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v10}, Lf9;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;)V

    const v1, -0x3e281dc1

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v24

    const v26, 0x30000c30

    const/16 v27, 0x1f5

    move-object/from16 v25, v13

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    invoke-static/range {v13 .. v27}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_e

    :cond_18
    move-object/from16 v25, v13

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_e
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_19

    new-instance v0, Lo;

    const/16 v9, 0x12

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object v2, v11

    move-object v3, v12

    invoke-direct/range {v0 .. v9}, Lo;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void
.end method
