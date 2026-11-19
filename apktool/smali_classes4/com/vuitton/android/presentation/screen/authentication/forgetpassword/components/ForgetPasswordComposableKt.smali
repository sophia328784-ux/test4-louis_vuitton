.class public abstract Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x19e21fab

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x4

    if-eqz v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v9

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int v14, v0, v1

    and-int/lit8 v0, v14, 0x13

    const/16 v1, 0x12

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    and-int/lit8 v1, v14, 0x1

    invoke-virtual {v10, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_3

    new-instance v0, Ltx;

    const/16 v4, 0xd

    invoke-direct {v0, v4}, Ltx;-><init>(I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/16 v4, 0x180

    const/4 v5, 0x3

    invoke-static {v3, v0, v10, v4, v5}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v0

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-static {v4, v10}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v16

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_4

    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v4, v10}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_5

    invoke-static {v10}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v6

    :cond_5
    check-cast v6, Landroidx/compose/material3/SnackbarHostState;

    move-object v7, v6

    invoke-static {v10}, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v6

    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v15, v14, 0xe

    if-eq v15, v11, :cond_6

    move/from16 v18, v3

    goto :goto_3

    :cond_6
    const/16 v18, 0x1

    :goto_3
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    or-int v18, v18, v19

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    or-int v18, v18, v19

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    or-int v18, v18, v19

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    or-int v18, v18, v19

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v18, :cond_7

    if-ne v3, v1, :cond_8

    :cond_7
    move-object v2, v0

    goto :goto_4

    :cond_8
    move-object v13, v7

    move-object v7, v0

    move-object v0, v3

    move-object v3, v6

    move-object v6, v4

    move-object v4, v5

    move-object v5, v13

    move-object v13, v1

    goto :goto_5

    :goto_4
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$1$1;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    const/4 v7, 0x0

    move-object v13, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lkotlin/coroutines/Continuation;)V

    move-object v7, v6

    move-object v6, v3

    move-object v3, v7

    move-object v7, v2

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_5
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v12, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eq v15, v11, :cond_9

    const/4 v0, 0x0

    goto :goto_6

    :cond_9
    const/4 v0, 0x1

    :goto_6
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_b

    if-ne v1, v13, :cond_a

    goto :goto_7

    :cond_a
    move-object/from16 v2, p0

    move-object/from16 v19, v5

    goto :goto_8

    :cond_b
    :goto_7
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1;

    move-object v2, v5

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v19, v2

    move-object v2, v1

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_8
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v12, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    and-int/lit8 v12, v14, 0x70

    const/16 v1, 0x20

    if-ne v12, v1, :cond_c

    const/4 v3, 0x1

    goto :goto_9

    :cond_c
    const/4 v3, 0x0

    :goto_9
    or-int/2addr v0, v3

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_d

    if-ne v1, v13, :cond_e

    :cond_d
    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;

    invoke-direct {v1, v6, v7, v8}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x1

    const/4 v14, 0x0

    invoke-static {v14, v1, v10, v14, v0}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;->d:Z

    if-eq v15, v11, :cond_f

    move v3, v14

    goto :goto_a

    :cond_f
    const/4 v3, 0x1

    :goto_a
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v3, :cond_10

    if-ne v1, v13, :cond_11

    :cond_10
    new-instance v1, Lrz;

    invoke-direct {v1, v2, v14}, Lrz;-><init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object/from16 v16, v1

    check-cast v16, Lkotlin/jvm/functions/Function1;

    if-eq v15, v11, :cond_12

    move v3, v14

    goto :goto_b

    :cond_12
    const/4 v3, 0x1

    :goto_b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v3, :cond_13

    if-ne v1, v13, :cond_14

    :cond_13
    new-instance v1, Lsz;

    invoke-direct {v1, v2, v14}, Lsz;-><init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v21, v1

    check-cast v21, Lkotlin/jvm/functions/Function0;

    if-eq v15, v11, :cond_15

    move v3, v14

    goto :goto_c

    :cond_15
    const/4 v3, 0x1

    :goto_c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v3, :cond_16

    if-ne v1, v13, :cond_17

    :cond_16
    new-instance v1, Lsz;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lsz;-><init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v22, v1

    check-cast v22, Lkotlin/jvm/functions/Function0;

    if-eq v15, v11, :cond_18

    move v3, v14

    goto :goto_d

    :cond_18
    const/4 v3, 0x1

    :goto_d
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v3, :cond_19

    if-ne v1, v13, :cond_1a

    :cond_19
    move v1, v0

    goto :goto_e

    :cond_1a
    move/from16 v24, v0

    move-object v14, v6

    goto :goto_f

    :goto_e
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$7$1;

    const-string v5, "updateOtpCode(Ljava/lang/String;)V"

    move-object v3, v6

    const/4 v6, 0x0

    move v4, v1

    const/4 v1, 0x1

    move-object/from16 v23, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;

    move/from16 v24, v4

    const-string v4, "updateOtpCode"

    move-object/from16 v14, v23

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_f
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object/from16 v23, v1

    check-cast v23, Lkotlin/jvm/functions/Function1;

    if-eq v15, v11, :cond_1b

    const/4 v3, 0x0

    goto :goto_10

    :cond_1b
    const/4 v3, 0x1

    :goto_10
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v3, :cond_1c

    if-ne v0, v13, :cond_1d

    :cond_1c
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$8$1;

    const-string v5, "onFieldUpdated(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;

    const-string v4, "onFieldUpdated"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object/from16 v25, v0

    check-cast v25, Lkotlin/jvm/functions/Function2;

    move-object/from16 v27, v19

    invoke-interface/range {p0 .. p0}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;->H3()Z

    move-result v19

    if-eq v15, v11, :cond_1e

    const/4 v3, 0x0

    goto :goto_11

    :cond_1e
    const/4 v3, 0x1

    :goto_11
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v3, :cond_20

    if-ne v0, v13, :cond_1f

    goto :goto_12

    :cond_1f
    move-object/from16 v2, p0

    goto :goto_13

    :cond_20
    :goto_12
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$9$1;

    const-string v5, "validatePassword()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;

    const-string v4, "validatePassword"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_13
    check-cast v0, Lkotlin/reflect/KFunction;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eq v15, v11, :cond_21

    const/4 v3, 0x0

    goto :goto_14

    :cond_21
    const/4 v3, 0x1

    :goto_14
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v3

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_22

    if-ne v3, v13, :cond_23

    :cond_22
    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;

    invoke-direct {v3, v2, v14, v7}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;-><init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/pager/PagerState;)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v3, Lkotlin/jvm/functions/Function0;

    if-eq v15, v11, :cond_24

    const/4 v1, 0x0

    :goto_15
    const/16 v4, 0x20

    goto :goto_16

    :cond_24
    const/4 v1, 0x1

    goto :goto_15

    :goto_16
    if-ne v12, v4, :cond_25

    const/4 v4, 0x1

    goto :goto_17

    :cond_25
    const/4 v4, 0x0

    :goto_17
    or-int/2addr v1, v4

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_26

    if-ne v4, v13, :cond_27

    :cond_26
    new-instance v4, Ldt;

    const/16 v1, 0x10

    invoke-direct {v4, v2, v8, v1}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    check-cast v4, Lkotlin/jvm/functions/Function0;

    if-eq v15, v11, :cond_28

    const/16 v26, 0x0

    goto :goto_18

    :cond_28
    const/16 v26, 0x1

    :goto_18
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v26, :cond_29

    if-ne v1, v13, :cond_2a

    :cond_29
    new-instance v1, Lrz;

    const/4 v5, 0x1

    invoke-direct {v1, v2, v5}, Lrz;-><init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object/from16 v18, v25

    const/16 v25, 0x180

    move-object v11, v7

    move-object/from16 v14, v16

    move-object/from16 v15, v21

    move-object/from16 v16, v22

    move-object/from16 v17, v23

    move/from16 v13, v24

    move-object/from16 v12, v27

    move-object/from16 v23, v1

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v24, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v0

    invoke-static/range {v10 .. v25}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordScreenKt;->a(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/material3/SnackbarHostState;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_19

    :cond_2b
    move-object/from16 v24, v10

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_19
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2c

    new-instance v1, Lrs;

    const/16 v3, 0xf

    invoke-direct {v1, v2, v8, v9, v3}, Lrs;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2c
    return-void
.end method
