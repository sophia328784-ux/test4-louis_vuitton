.class public abstract Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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
.method public static final a(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/material3/SnackbarHostState;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v1, p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x658dfa4

    move-object/from16 v2, p14

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p15, v0

    move-object/from16 v9, p1

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x10

    const/16 v6, 0x20

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    or-int/2addr v0, v4

    move/from16 v4, p3

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    const/16 v8, 0x400

    const/16 v10, 0x800

    if-eqz v7, :cond_2

    move v7, v10

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    or-int/2addr v0, v7

    move-object/from16 v7, p4

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x4000

    goto :goto_3

    :cond_3
    const/16 v11, 0x2000

    :goto_3
    or-int/2addr v0, v11

    move-object/from16 v11, p5

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/high16 v12, 0x20000

    goto :goto_4

    :cond_4
    const/high16 v12, 0x10000

    :goto_4
    or-int/2addr v0, v12

    move-object/from16 v12, p6

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/high16 v13, 0x100000

    goto :goto_5

    :cond_5
    const/high16 v13, 0x80000

    :goto_5
    or-int/2addr v0, v13

    move-object/from16 v13, p7

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/high16 v15, 0x800000

    goto :goto_6

    :cond_6
    const/high16 v15, 0x400000

    :goto_6
    or-int/2addr v0, v15

    move-object/from16 v15, p8

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/high16 v16, 0x4000000

    goto :goto_7

    :cond_7
    const/high16 v16, 0x2000000

    :goto_7
    or-int v0, v0, v16

    move/from16 v2, p9

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_8

    const/high16 v16, 0x20000000

    goto :goto_8

    :cond_8
    const/high16 v16, 0x10000000

    :goto_8
    or-int v16, v0, v16

    move-object/from16 v0, p10

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    :goto_9
    move-object/from16 v15, p11

    goto :goto_a

    :cond_9
    const/4 v3, 0x2

    goto :goto_9

    :goto_a
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    move v5, v6

    :cond_a
    or-int/2addr v3, v5

    move-object/from16 v5, p12

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v6, 0x100

    goto :goto_b

    :cond_b
    const/16 v6, 0x80

    :goto_b
    or-int/2addr v3, v6

    move-object/from16 v6, p13

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    move v8, v10

    :cond_c
    or-int/2addr v3, v8

    const v8, 0x12492493

    and-int v8, v16, v8

    const v10, 0x12492492

    if-ne v8, v10, :cond_e

    and-int/lit16 v8, v3, 0x493

    const/16 v10, 0x492

    if-eq v8, v10, :cond_d

    goto :goto_c

    :cond_d
    const/4 v8, 0x0

    goto :goto_d

    :cond_e
    :goto_c
    const/4 v8, 0x1

    :goto_d
    and-int/lit8 v10, v16, 0x1

    invoke-virtual {v14, v10, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_10

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->i:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Landroidx/compose/ui/focus/FocusManager;

    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->r:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v10, v0, :cond_f

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v14}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v10

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    sget-object v18, Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutContext;->FORGET_PASSWORD:Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutContext;

    iget-boolean v0, v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;->c:Z

    move/from16 v19, v0

    new-instance v0, Ltz;

    move-object v5, v11

    move v11, v2

    move v2, v4

    move-object v4, v6

    move-object v6, v5

    move-object v5, v8

    move-object v8, v13

    move/from16 v20, v19

    move-object/from16 v13, p10

    move/from16 v19, v3

    move-object v3, v7

    move-object v7, v12

    move-object/from16 v12, p8

    invoke-direct/range {v0 .. v13}, Ltz;-><init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/platform/SoftwareKeyboardController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    const v1, 0x2fea16d1

    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    shl-int/lit8 v1, v16, 0x3

    and-int/lit16 v1, v1, 0x380

    const v2, 0x6000030

    or-int/2addr v1, v2

    shl-int/lit8 v2, v19, 0x3

    and-int/lit16 v3, v2, 0x380

    const/high16 v4, 0x30000

    or-int/2addr v3, v4

    and-int/lit16 v2, v2, 0x1c00

    or-int v19, v3, v2

    move/from16 v7, v20

    const/16 v20, 0x4eb1

    move-object/from16 v2, v18

    move/from16 v18, v1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    move-object/from16 v13, p11

    move-object/from16 v16, v0

    move-object/from16 v4, v17

    move-object/from16 v17, v14

    move-object/from16 v14, p12

    invoke-static/range {v1 .. v20}, Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutContext;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/focus/FocusManager;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;ZLjava/lang/String;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    goto :goto_e

    :cond_10
    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_e
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_11

    move-object v1, v0

    new-instance v0, Luz;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p15

    move-object/from16 v21, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v15}, Luz;-><init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/material3/SnackbarHostState;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    move-object/from16 v1, v21

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method
