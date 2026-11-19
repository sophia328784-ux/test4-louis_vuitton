.class public abstract Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationViewState;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x3eda6de2

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

    move-object/from16 v10, p1

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int v12, v0, v1

    and-int/lit16 v0, v12, 0x93

    const/16 v1, 0x92

    const/4 v14, 0x0

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v14

    :goto_3
    and-int/lit8 v1, v12, 0x1

    invoke-virtual {v8, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v15, :cond_4

    new-instance v0, Lv;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lv;-><init>(I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/16 v1, 0x180

    const/4 v3, 0x3

    invoke-static {v14, v0, v8, v1, v3}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v0

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v1, v4, v8, v14, v3}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v16

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_5

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v1, v8}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v15, :cond_6

    invoke-static {v8}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v5

    :cond_6
    check-cast v5, Landroidx/compose/material3/SnackbarHostState;

    invoke-static {v8}, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v6

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    and-int/lit8 v13, v12, 0xe

    if-eq v13, v9, :cond_7

    move/from16 v18, v14

    goto :goto_4

    :cond_7
    const/16 v18, 0x1

    :goto_4
    or-int v17, v17, v18

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v17, :cond_8

    if-ne v14, v15, :cond_9

    :cond_8
    new-instance v14, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$1$1;

    invoke-direct {v14, v0, v2, v4}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v0, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v14, Lkotlin/Unit;->a:Lkotlin/Unit;

    if-eq v13, v9, :cond_a

    const/16 v17, 0x0

    goto :goto_5

    :cond_a
    const/16 v17, 0x1

    :goto_5
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    or-int v17, v17, v19

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v17, :cond_b

    if-ne v11, v15, :cond_c

    :cond_b
    new-instance v11, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$2$1;

    invoke-direct {v11, v2, v5, v3, v4}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v14, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eq v13, v9, :cond_d

    const/4 v4, 0x0

    goto :goto_6

    :cond_d
    const/4 v4, 0x1

    :goto_6
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v4, v11

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v4, v11

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v4, v11

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v4, :cond_e

    if-ne v11, v15, :cond_f

    :cond_e
    move-object v2, v0

    goto :goto_7

    :cond_f
    move-object v10, v1

    move-object v1, v0

    move-object v0, v11

    move-object v11, v10

    move-object v10, v5

    goto :goto_8

    :goto_7
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1;

    move-object v4, v5

    move-object v5, v6

    const/4 v6, 0x0

    move-object v11, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;Landroidx/compose/foundation/pager/PagerState;Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lkotlin/coroutines/Continuation;)V

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    move-object v10, v4

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_8
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v14, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    and-int/lit16 v14, v12, 0x380

    const/16 v3, 0x100

    if-ne v14, v3, :cond_10

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    or-int/2addr v0, v3

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_11

    if-ne v3, v15, :cond_12

    :cond_11
    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/a;

    invoke-direct {v3, v11, v1, v7}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/a;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-static {v4, v3, v8, v4, v0}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationViewState;

    if-eq v13, v9, :cond_13

    const/4 v0, 0x0

    goto :goto_a

    :cond_13
    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_15

    if-ne v3, v15, :cond_14

    goto :goto_b

    :cond_14
    const/4 v0, 0x1

    goto :goto_c

    :cond_15
    :goto_b
    new-instance v3, Lc;

    const/4 v0, 0x1

    invoke-direct {v3, v2, v0}, Lc;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_c
    move-object/from16 v16, v3

    check-cast v16, Lkotlin/jvm/functions/Function2;

    if-eq v13, v9, :cond_16

    const/4 v3, 0x0

    goto :goto_d

    :cond_16
    move v3, v0

    :goto_d
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_17

    if-ne v4, v15, :cond_18

    :cond_17
    move v3, v0

    goto :goto_e

    :cond_18
    move/from16 v17, v0

    move-object/from16 v21, v1

    goto :goto_f

    :goto_e
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$6$1;

    const-string v5, "confirmPassword()V"

    const/4 v6, 0x0

    move-object v4, v1

    const/4 v1, 0x0

    move/from16 v17, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;

    move-object/from16 v20, v4

    const-string v4, "confirmPassword"

    move-object/from16 v21, v20

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_f
    check-cast v4, Lkotlin/reflect/KFunction;

    move-object/from16 v20, v4

    check-cast v20, Lkotlin/jvm/functions/Function0;

    if-eq v13, v9, :cond_19

    const/4 v0, 0x0

    goto :goto_10

    :cond_19
    move/from16 v0, v17

    :goto_10
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1a

    if-ne v1, v15, :cond_1b

    :cond_1a
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$7$1;

    const-string v5, "updateOtpCode(Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;

    const-string v4, "updateOtpCode"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_1b
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object/from16 v22, v1

    check-cast v22, Lkotlin/jvm/functions/Function1;

    if-eq v13, v9, :cond_1c

    const/4 v0, 0x0

    goto :goto_11

    :cond_1c
    move/from16 v0, v17

    :goto_11
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1d

    if-ne v1, v15, :cond_1e

    :cond_1d
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$8$1;

    const-string v5, "resendCode()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;

    const-string v4, "resendCode"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_1e
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object/from16 v23, v1

    check-cast v23, Lkotlin/jvm/functions/Function0;

    if-eq v13, v9, :cond_1f

    const/4 v0, 0x0

    goto :goto_12

    :cond_1f
    move/from16 v0, v17

    :goto_12
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_20

    if-ne v1, v15, :cond_21

    :cond_20
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$9$1;

    const-string v5, "confirmActivation()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;

    const-string v4, "confirmActivation"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_21
    check-cast v1, Lkotlin/reflect/KFunction;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_22

    new-instance v0, Lv;

    const/16 v2, 0xe

    invoke-direct {v0, v2}, Lv;-><init>(I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/16 v3, 0x100

    if-ne v14, v3, :cond_23

    move/from16 v13, v17

    :goto_13
    move-object/from16 v2, v21

    goto :goto_14

    :cond_23
    const/4 v13, 0x0

    goto :goto_13

    :goto_14
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v13

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_24

    if-ne v4, v15, :cond_25

    :cond_24
    new-instance v4, Lt2;

    const/4 v3, 0x0

    invoke-direct {v4, v7, v2, v3}, Lt2;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/pager/PagerState;I)V

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    move-object/from16 v18, v4

    check-cast v18, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v3, v12, 0x15

    const/high16 v4, 0xe000000

    and-int/2addr v3, v4

    const v4, 0x30000180

    or-int/2addr v3, v4

    move-object/from16 v17, v0

    move-object v15, v1

    move-object v9, v2

    move-object/from16 v19, v8

    move-object v8, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v20

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v16, p1

    move/from16 v20, v3

    invoke-static/range {v8 .. v20}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationScreenKt;->a(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationViewState;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_15

    :cond_26
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_15
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_27

    new-instance v0, Lu;

    const/4 v5, 0x3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p4

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_27
    return-void
.end method
