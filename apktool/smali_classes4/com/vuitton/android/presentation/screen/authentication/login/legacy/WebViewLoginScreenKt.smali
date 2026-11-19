.class public abstract Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;Lcom/vuitton/android/presentation/link/LinkHandler;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v3, p7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x71275552

    move-object/from16 v2, p8

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x4

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p9, v0

    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    move-object/from16 v12, p2

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x800

    goto :goto_3

    :cond_3
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v0, v2

    move-object/from16 v13, p4

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x4000

    goto :goto_4

    :cond_4
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v0, v2

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v2, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v2, 0x10000

    :goto_5
    or-int/2addr v0, v2

    move-object/from16 v15, p6

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v2, 0x80000

    :goto_6
    or-int/2addr v0, v2

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/high16 v2, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v2, 0x400000

    :goto_7
    or-int v16, v0, v2

    const v0, 0x492493

    and-int v0, v16, v0

    const v2, 0x492492

    const/16 v17, 0x1

    if-eq v0, v2, :cond_8

    move/from16 v0, v17

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    and-int/lit8 v2, v16, 0x1

    invoke-virtual {v10, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v14, :cond_9

    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v6, v10}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v14, :cond_a

    invoke-static {v10}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v5

    :cond_a
    check-cast v5, Landroidx/compose/material3/SnackbarHostState;

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v11, v16, 0xe

    if-eq v11, v7, :cond_b

    const/16 v20, 0x0

    goto :goto_9

    :cond_b
    move/from16 v20, v17

    :goto_9
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    const/4 v12, 0x0

    if-nez v20, :cond_c

    if-ne v7, v14, :cond_d

    :cond_c
    new-instance v7, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$1$1;

    invoke-direct {v7, v1, v12}, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$1$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v4, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v7, 0x4

    if-eq v11, v7, :cond_e

    const/4 v7, 0x0

    goto :goto_a

    :cond_e
    move/from16 v7, v17

    :goto_a
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    or-int v7, v7, v20

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    or-int v7, v7, v20

    const/high16 v20, 0x1c00000

    and-int v12, v16, v20

    move-object/from16 v20, v0

    const/high16 v0, 0x800000

    if-ne v12, v0, :cond_f

    move/from16 v0, v17

    goto :goto_b

    :cond_f
    const/4 v0, 0x0

    :goto_b
    or-int/2addr v0, v7

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v0, :cond_11

    if-ne v7, v14, :cond_10

    goto :goto_c

    :cond_10
    move-object v12, v2

    move-object v2, v3

    move-object v0, v7

    move-object v7, v4

    move-object v4, v5

    move-object/from16 v5, v20

    goto :goto_d

    :cond_11
    :goto_c
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1;

    move-object v7, v2

    move-object v2, v6

    const/4 v6, 0x0

    move-object v12, v7

    move-object v7, v4

    move-object v4, v5

    move-object/from16 v5, v20

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    move-object v2, v3

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_d
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v7, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x4

    if-eq v11, v0, :cond_12

    const/4 v0, 0x0

    goto :goto_e

    :cond_12
    move/from16 v0, v17

    :goto_e
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_13

    if-ne v3, v14, :cond_14

    :cond_13
    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$3$1;

    const/4 v0, 0x0

    invoke-direct {v3, v1, v4, v5, v0}, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$3$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v7, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v7, 0x4

    if-eq v11, v7, :cond_15

    const/4 v5, 0x0

    goto :goto_f

    :cond_15
    move/from16 v5, v17

    :goto_f
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v5

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int v3, v16, v3

    const/high16 v5, 0x20000

    if-ne v3, v5, :cond_16

    move/from16 v5, v17

    goto :goto_10

    :cond_16
    const/4 v5, 0x0

    :goto_10
    or-int/2addr v0, v5

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_17

    if-ne v3, v14, :cond_18

    :cond_17
    new-instance v3, Liq0;

    invoke-direct {v3, v1, v8, v12, v9}, Liq0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lcom/vuitton/android/presentation/link/LinkHandler;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object v5, v3

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v0, Lp61;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lp61;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v3, 0x92d4e0e

    invoke-static {v3, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    new-instance v0, Lfs0;

    const/16 v3, 0xa

    invoke-direct {v0, v4, v3}, Lfs0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v3, -0x709eb34

    invoke-static {v3, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    new-instance v0, Lp0;

    const/16 v7, 0x18

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v13

    move-object v6, v15

    invoke-direct/range {v0 .. v7}, Lp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;I)V

    const v1, 0x504e1663

    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v21

    const v23, 0x30000c30

    const/16 v24, 0x1f5

    move-object/from16 v22, v10

    const/4 v10, 0x0

    move-object v13, v12

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-static/range {v10 .. v24}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_11

    :cond_19
    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_11
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_1a

    new-instance v0, Lq8;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object v4, v8

    move-object v6, v9

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lq8;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;Lcom/vuitton/android/presentation/link/LinkHandler;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1a
    return-void
.end method
