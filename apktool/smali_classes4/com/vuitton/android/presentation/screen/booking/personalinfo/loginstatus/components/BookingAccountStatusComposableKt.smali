.class public abstract Lcom/vuitton/android/presentation/screen/booking/personalinfo/loginstatus/components/BookingAccountStatusComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v7, p3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x62c5c23c

    move-object/from16 v2, p4

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p5, v0

    move-object/from16 v3, p1

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    move-object/from16 v4, p2

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v0, v5

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x800

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    const/16 v5, 0x400

    :goto_3
    or-int/2addr v0, v5

    and-int/lit16 v5, v0, 0x493

    const/16 v8, 0x492

    const/16 v16, 0x1

    const/4 v9, 0x0

    if-eq v5, v8, :cond_4

    move/from16 v5, v16

    goto :goto_4

    :cond_4
    move v5, v9

    :goto_4
    and-int/lit8 v8, v0, 0x1

    invoke-virtual {v13, v8, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_1c

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    const/4 v8, 0x7

    const/4 v10, 0x0

    invoke-static {v5, v10, v13, v9, v8}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    sget-object v8, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v12, v0, 0xe

    if-eq v12, v2, :cond_5

    move v14, v9

    goto :goto_5

    :cond_5
    move/from16 v14, v16

    :goto_5
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    move/from16 p4, v14

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p4, :cond_6

    if-ne v15, v14, :cond_7

    :cond_6
    new-instance v15, Lcom/vuitton/android/presentation/screen/booking/personalinfo/loginstatus/components/BookingAccountStatusComposableKt$BookingAccountStatusComposable$1$1;

    invoke-direct {v15, v1, v10}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/loginstatus/components/BookingAccountStatusComposableKt$BookingAccountStatusComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v11, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v15, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v15}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    if-eq v12, v2, :cond_8

    move/from16 v17, v9

    goto :goto_6

    :cond_8
    move/from16 v17, v16

    :goto_6
    and-int/lit16 v2, v0, 0x1c00

    if-ne v2, v6, :cond_9

    move/from16 v18, v16

    goto :goto_7

    :cond_9
    move/from16 v18, v9

    :goto_7
    or-int v17, v17, v18

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v17, :cond_a

    if-ne v10, v14, :cond_b

    :cond_a
    new-instance v10, Lk;

    const/16 v6, 0xe

    invoke-direct {v10, v1, v7, v6}, Lk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v10, v13, v9}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v6

    sget-object v10, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->BOOKING:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    or-int v15, v15, v19

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    or-int v15, v15, v19

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v15, :cond_c

    if-ne v9, v14, :cond_d

    :cond_c
    new-instance v9, Lq;

    const/16 v15, 0xf

    invoke-direct {v9, v6, v8, v5, v15}, Lq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v14, :cond_e

    new-instance v6, Lw9;

    const/16 v8, 0x1c

    invoke-direct {v6, v8}, Lw9;-><init>(I)V

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x800

    if-ne v2, v8, :cond_f

    move/from16 v8, v16

    goto :goto_8

    :cond_f
    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v8, :cond_10

    if-ne v15, v14, :cond_11

    :cond_10
    new-instance v15, Lh1;

    const/16 v8, 0x11

    invoke-direct {v15, v7, v8}, Lh1;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v15, Lkotlin/jvm/functions/Function0;

    move-object v8, v14

    const/16 v14, 0x186

    move-object/from16 v20, v11

    move-object v11, v15

    const/16 v15, 0x10

    move/from16 v21, v12

    const/4 v12, 0x0

    move/from16 v18, v0

    move-object v3, v8

    move-object v8, v10

    move/from16 v0, v21

    const/16 v19, 0x0

    move-object v10, v6

    move-object/from16 v6, v20

    invoke-static/range {v8 .. v15}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt;->b(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/compose/runtime/Composer;II)Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    move-result-object v15

    const/4 v8, 0x4

    if-eq v0, v8, :cond_12

    move/from16 v9, v19

    :goto_9
    const/16 v8, 0x800

    goto :goto_a

    :cond_12
    move/from16 v9, v16

    goto :goto_9

    :goto_a
    if-ne v2, v8, :cond_13

    move/from16 v2, v16

    goto :goto_b

    :cond_13
    move/from16 v2, v19

    :goto_b
    or-int/2addr v2, v9

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v2, v8

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v2, :cond_14

    if-ne v8, v3, :cond_15

    :cond_14
    new-instance v8, Lcom/vuitton/android/presentation/screen/booking/personalinfo/loginstatus/components/BookingAccountStatusComposableKt$BookingAccountStatusComposable$2$1;

    const/4 v2, 0x0

    invoke-direct {v8, v1, v7, v15, v2}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/loginstatus/components/BookingAccountStatusComposableKt$BookingAccountStatusComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v6, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;

    const/4 v2, 0x4

    if-eq v0, v2, :cond_16

    move/from16 v9, v19

    goto :goto_c

    :cond_16
    move/from16 v9, v16

    :goto_c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v9, :cond_17

    if-ne v5, v3, :cond_18

    :cond_17
    move/from16 v21, v0

    goto :goto_d

    :cond_18
    move v10, v0

    move v12, v2

    move-object v11, v3

    move/from16 v9, v18

    goto :goto_e

    :goto_d
    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/loginstatus/components/BookingAccountStatusComposableKt$BookingAccountStatusComposable$3$1;

    const-string v5, "onEmailChanged(Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    move-object v9, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;

    const-string v4, "onEmailChanged"

    move v12, v2

    move-object v11, v9

    move/from16 v9, v18

    move/from16 v10, v21

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :goto_e
    check-cast v5, Lkotlin/reflect/KFunction;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    if-eq v10, v12, :cond_19

    move/from16 v16, v19

    :cond_19
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v16, :cond_1a

    if-ne v0, v11, :cond_1b

    :cond_1a
    new-instance v0, Lw1;

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object v11, v0

    check-cast v11, Lkotlin/jvm/functions/Function0;

    and-int/lit16 v0, v9, 0x380

    shl-int/lit8 v2, v9, 0x9

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int v14, v0, v2

    move-object/from16 v12, p1

    move-object/from16 v10, p2

    move-object v9, v5

    move/from16 v0, v19

    invoke-static/range {v8 .. v14}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/loginstatus/components/BookingAccountStatusScreenKt;->a(Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v15, v13, v0}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt;->a(Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Landroidx/compose/runtime/Composer;I)V

    goto :goto_f

    :cond_1c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_1d

    new-instance v0, Lz;

    const/16 v6, 0xe

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p5

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lz;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1d
    return-void
.end method
