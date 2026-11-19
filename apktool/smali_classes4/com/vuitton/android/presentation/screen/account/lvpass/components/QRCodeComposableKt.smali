.class public abstract Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;",
        "qrCodeState",
        "",
        "is3dReady",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p5

    const v0, -0x662fdb27

    move-object/from16 v4, p4

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    and-int/lit8 v0, v6, 0x6

    const/4 v8, 0x4

    if-nez v0, :cond_2

    and-int/lit8 v0, v6, 0x8

    if-nez v0, :cond_0

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    move v0, v8

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, v6

    goto :goto_2

    :cond_2
    move v0, v6

    :goto_2
    and-int/lit8 v4, v6, 0x30

    const/16 v5, 0x20

    if-nez v4, :cond_5

    and-int/lit8 v4, v6, 0x40

    if-nez v4, :cond_3

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_3

    :cond_3
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_4

    :cond_4
    const/16 v4, 0x10

    :goto_4
    or-int/2addr v0, v4

    :cond_5
    and-int/lit16 v4, v6, 0x180

    const/16 v9, 0x100

    if-nez v4, :cond_8

    and-int/lit16 v4, v6, 0x200

    if-nez v4, :cond_6

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_5

    :cond_6
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    :goto_5
    if-eqz v4, :cond_7

    move v4, v9

    goto :goto_6

    :cond_7
    const/16 v4, 0x80

    :goto_6
    or-int/2addr v0, v4

    :cond_8
    and-int/lit16 v4, v6, 0xc00

    const/16 v10, 0x800

    if-nez v4, :cond_a

    move-object/from16 v4, p3

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    move v11, v10

    goto :goto_7

    :cond_9
    const/16 v11, 0x400

    :goto_7
    or-int/2addr v0, v11

    goto :goto_8

    :cond_a
    move-object/from16 v4, p3

    :goto_8
    and-int/lit16 v11, v0, 0x493

    const/16 v12, 0x492

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eq v11, v12, :cond_b

    move v11, v13

    goto :goto_9

    :cond_b
    move v11, v14

    :goto_9
    and-int/lit8 v12, v0, 0x1

    invoke-virtual {v7, v12, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_18

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v11, v0, 0x70

    if-eq v11, v5, :cond_d

    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_c

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_a

    :cond_c
    move v5, v14

    goto :goto_b

    :cond_d
    :goto_a
    move v5, v13

    :goto_b
    and-int/lit8 v11, v0, 0xe

    if-eq v11, v8, :cond_f

    and-int/lit8 v11, v0, 0x8

    if-eqz v11, :cond_e

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    goto :goto_c

    :cond_e
    move v11, v14

    goto :goto_d

    :cond_f
    :goto_c
    move v11, v13

    :goto_d
    or-int/2addr v5, v11

    and-int/lit16 v11, v0, 0x380

    if-eq v11, v9, :cond_11

    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_10

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_e

    :cond_10
    move v9, v14

    goto :goto_f

    :cond_11
    :goto_e
    move v9, v13

    :goto_f
    or-int/2addr v5, v9

    and-int/lit16 v0, v0, 0x1c00

    if-ne v0, v10, :cond_12

    move v14, v13

    :cond_12
    or-int v0, v5, v14

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_13

    if-ne v5, v9, :cond_14

    :cond_13
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$HandleStoreModeAffiliation$1$1;

    const/4 v5, 0x0

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$HandleStoreModeAffiliation$1$1;-><init>(Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :cond_14
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v1, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v7}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_15

    new-instance v3, Lk2;

    invoke-direct {v3, v2, v8}, Lk2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v3, Landroidx/lifecycle/LifecycleEventObserver;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_16

    if-ne v8, v9, :cond_17

    :cond_16
    new-instance v8, Lif0;

    invoke-direct {v8, v0, v3, v13}, Lif0;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/lifecycle/LifecycleEventObserver;I)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v8, v7}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    goto :goto_10

    :cond_18
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_10
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_19

    new-instance v0, Loi0;

    const/16 v6, 0x8

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Loi0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModel;Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v14, p4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x40bfebea

    move-object/from16 v2, p6

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p7, v2

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v2, v3

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v2, v3

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    goto :goto_3

    :cond_3
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v2, v3

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0x4000

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_4

    :cond_4
    const/16 v3, 0x2000

    :goto_4
    or-int/2addr v2, v3

    move-object/from16 v3, p5

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/high16 v8, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v8, 0x10000

    :goto_5
    or-int/2addr v2, v8

    const v8, 0x12493

    and-int/2addr v8, v2

    const v9, 0x12492

    const/4 v10, 0x0

    if-eq v8, v9, :cond_6

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    move v8, v10

    :goto_6
    and-int/lit8 v9, v2, 0x1

    invoke-virtual {v12, v9, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_26

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v8, Lcom/vuitton/android/presentation/tracking/AppsFlyerTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModel;->S9()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v9

    const/4 v13, 0x7

    const/4 v15, 0x0

    invoke-static {v9, v15, v12, v10, v13}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;

    instance-of v13, v9, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Loading;

    if-eqz v13, :cond_7

    const v4, -0x1da0811

    const-string v5, "QRCodeComposable"

    invoke-static {v12, v4, v5}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v4, v5}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    shl-int/lit8 v5, v2, 0x3

    const/high16 v9, 0x70000

    and-int/2addr v5, v9

    or-int/lit8 v16, v5, 0x36

    const/16 v17, 0x1c

    const/4 v9, 0x1

    move v5, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v15, v12

    const-wide/16 v12, 0x0

    move/from16 v19, v2

    move-object v2, v8

    move-object v8, v4

    move v4, v5

    invoke-static/range {v8 .. v17}, Lcom/vuitton/android/presentation/loading/LvLoadingKt;->b(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/loading/LoadingMode;ZJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v12, v15

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_7
    move-object v0, v14

    goto/16 :goto_15

    :cond_7
    move/from16 v19, v2

    move-object v2, v8

    move v8, v10

    instance-of v10, v9, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode2D;

    const p6, 0xe000

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v10, :cond_14

    const v9, -0x1d5c0c6

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v9, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode2D;

    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v11, v19, 0x70

    if-eq v11, v4, :cond_8

    move/from16 v17, v8

    goto :goto_8

    :cond_8
    const/16 v17, 0x1

    :goto_8
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    or-int v17, v17, v20

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v17, :cond_9

    if-ne v8, v13, :cond_a

    :cond_9
    new-instance v8, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$2$1;

    invoke-direct {v8, v1, v9, v15}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode2D;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v10, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v8, v8, v17

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v8, :cond_b

    if-ne v4, v13, :cond_c

    :cond_b
    new-instance v4, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$3$1;

    invoke-direct {v4, v2, v9, v15}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$3$1;-><init>(Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode2D;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v10, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v9, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode2D;->a:Landroid/graphics/Bitmap;

    and-int v4, v19, p6

    if-ne v4, v5, :cond_d

    const/4 v10, 0x1

    :goto_9
    const/16 v4, 0x20

    goto :goto_a

    :cond_d
    const/4 v10, 0x0

    goto :goto_9

    :goto_a
    if-eq v11, v4, :cond_e

    const/4 v4, 0x0

    goto :goto_b

    :cond_e
    const/4 v4, 0x1

    :goto_b
    or-int/2addr v4, v10

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_f

    if-ne v5, v13, :cond_10

    :cond_f
    new-instance v5, Luq0;

    const/4 v4, 0x0

    invoke-direct {v5, v14, v1, v9, v4}, Luq0;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success;I)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/16 v4, 0x20

    if-eq v11, v4, :cond_11

    const/4 v10, 0x0

    goto :goto_c

    :cond_11
    const/4 v10, 0x1

    :goto_c
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v10

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v4, :cond_13

    if-ne v10, v13, :cond_12

    goto :goto_d

    :cond_12
    const/4 v4, 0x0

    goto :goto_e

    :cond_13
    :goto_d
    new-instance v10, Lvq0;

    const/4 v4, 0x0

    invoke-direct {v10, v1, v9, v4}, Lvq0;-><init>(Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success;I)V

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_e
    move-object v11, v10

    check-cast v11, Lkotlin/jvm/functions/Function0;

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v9, v5

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCode2DScreenKt;->a(Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_7

    :cond_14
    move v4, v8

    instance-of v8, v9, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode3D;

    if-eqz v8, :cond_24

    const v8, -0x1c2f6cf

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode3D;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v13, :cond_15

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v9}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v9, Landroidx/compose/runtime/MutableState;

    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v11, v19, 0x70

    const/16 v5, 0x20

    if-eq v11, v5, :cond_16

    move v5, v4

    goto :goto_f

    :cond_16
    const/4 v5, 0x1

    :goto_f
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    or-int v5, v5, v21

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v5, :cond_17

    if-ne v4, v13, :cond_18

    :cond_17
    new-instance v4, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$6$1;

    invoke-direct {v4, v1, v8, v15}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$6$1;-><init>(Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode3D;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v10, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_19

    if-ne v5, v13, :cond_1a

    :cond_19
    new-instance v5, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$7$1;

    invoke-direct {v5, v2, v8, v15}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$7$1;-><init>(Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode3D;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v10, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1b

    const v4, -0x1b9777d

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v4, 0x0

    invoke-static {v15, v12, v4}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/ScreenLoadingScreenKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :cond_1b
    const/4 v4, 0x0

    const v5, -0x1b8b088

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    iget-object v4, v8, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode3D;->a:Landroid/graphics/Bitmap;

    iget-object v5, v8, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode3D;->b:Landroid/graphics/Bitmap;

    and-int v10, v19, p6

    const/16 v15, 0x4000

    if-ne v10, v15, :cond_1c

    const/4 v10, 0x1

    :goto_11
    const/16 v15, 0x20

    goto :goto_12

    :cond_1c
    const/4 v10, 0x0

    goto :goto_11

    :goto_12
    if-eq v11, v15, :cond_1d

    const/4 v15, 0x0

    goto :goto_13

    :cond_1d
    const/4 v15, 0x1

    :goto_13
    or-int/2addr v10, v15

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v10, v15

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v10, :cond_1e

    if-ne v15, v13, :cond_1f

    :cond_1e
    new-instance v15, Luq0;

    const/4 v10, 0x1

    invoke-direct {v15, v14, v1, v8, v10}, Luq0;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success;I)V

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    move-object v10, v15

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v13, :cond_20

    new-instance v15, Lu00;

    const/16 v0, 0x17

    invoke-direct {v15, v0, v9}, Lu00;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/16 v0, 0x20

    if-eq v11, v0, :cond_21

    const/4 v0, 0x0

    goto :goto_14

    :cond_21
    const/4 v0, 0x1

    :goto_14
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v0, v9

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v0, :cond_22

    if-ne v9, v13, :cond_23

    :cond_22
    new-instance v9, Lvq0;

    const/4 v0, 0x1

    invoke-direct {v9, v1, v8, v0}, Lvq0;-><init>(Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success;I)V

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    move-object v13, v9

    check-cast v13, Lkotlin/jvm/functions/Function0;

    move-object v14, v12

    move-object v12, v15

    const/16 v15, 0x6000

    const/4 v11, 0x0

    move-object/from16 v0, p4

    move-object v8, v4

    move-object v9, v5

    invoke-static/range {v8 .. v15}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCode3DScreenKt;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v12, v14

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :cond_24
    move-object v0, v14

    instance-of v4, v9, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Error;

    if-eqz v4, :cond_25

    const v4, -0x1ad1142

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v4, v19, 0xc

    and-int/lit8 v4, v4, 0xe

    shr-int/lit8 v5, v19, 0x6

    and-int/lit8 v5, v5, 0x70

    or-int/2addr v4, v5

    invoke-static {v0, v7, v12, v4}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QrCodeErrorScreenKt;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_15
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;

    and-int/lit8 v5, v19, 0x70

    shr-int/lit8 v8, v19, 0x6

    and-int/lit16 v8, v8, 0x1c00

    or-int/2addr v5, v8

    move-object v0, v4

    move-object v4, v12

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt;->a(Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_16

    :cond_25
    const v0, 0x1074da83

    const/4 v4, 0x0

    invoke-static {v12, v0, v4}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_26
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_16
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_27

    new-instance v0, Lu1;

    const/16 v8, 0x1b

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-object v3, v6

    move-object v4, v7

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_27
    return-void
.end method
