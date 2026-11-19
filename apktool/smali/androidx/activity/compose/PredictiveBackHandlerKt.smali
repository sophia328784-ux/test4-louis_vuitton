.class public abstract Landroidx/activity/compose/PredictiveBackHandlerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "activity-compose"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const v3, -0x264426c9

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    and-int/lit8 v3, v2, 0x6

    const/4 v4, 0x4

    if-nez v3, :cond_1

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v2

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit8 v5, v2, 0x30

    if-nez v5, :cond_3

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_3
    and-int/lit8 v5, v3, 0x13

    const/16 v6, 0x12

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v5, v6, :cond_4

    move v5, v12

    goto :goto_3

    :cond_4
    move v5, v11

    :goto_3
    and-int/lit8 v6, v3, 0x1

    invoke-virtual {v8, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_17

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    if-nez v5, :cond_5

    const v5, 0x5a2a96fe

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v8}, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/activity/OnBackPressedDispatcherOwner;

    move-result-object v5

    :goto_4
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_5
    const v6, 0x5a2a8bbb

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    goto :goto_4

    :goto_5
    if-eqz v5, :cond_16

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v6, :cond_6

    if-ne v7, v13, :cond_b

    :cond_6
    new-instance v7, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    instance-of v6, v5, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    const/4 v9, 0x0

    if-eqz v6, :cond_7

    move-object v6, v5

    check-cast v6, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    goto :goto_6

    :cond_7
    move-object v6, v9

    :goto_6
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroidx/navigationevent/NavigationEventDispatcherOwner;->getNavigationEventDispatcher()Landroidx/navigationevent/NavigationEventDispatcher;

    move-result-object v6

    goto :goto_7

    :cond_8
    move-object v6, v9

    :goto_7
    instance-of v14, v5, Landroidx/activity/OnBackPressedDispatcherOwner;

    if-eqz v14, :cond_9

    move-object v14, v5

    check-cast v14, Landroidx/activity/OnBackPressedDispatcherOwner;

    goto :goto_8

    :cond_9
    move-object v14, v9

    :goto_8
    if-eqz v14, :cond_a

    invoke-interface {v14}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v9

    :cond_a
    invoke-direct {v7, v6, v9}, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;-><init>(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/activity/OnBackPressedDispatcher;)V

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object v14, v7

    check-cast v14, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v13, :cond_c

    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v6, v8}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    iget-wide v10, v8, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v8, v10, v11}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_d

    if-ne v9, v13, :cond_e

    :cond_d
    new-instance v9, Landroidx/activity/compose/ComposePredictiveBackHandler;

    new-instance v7, Landroidx/activity/compose/PredictiveBackHandlerInfo;

    invoke-direct {v7, v5, v10, v11}, Landroidx/activity/compose/PredictiveBackHandlerInfo;-><init>(Ljava/lang/Object;J)V

    invoke-direct {v9, v6, v7}, Landroidx/activity/compose/ComposePredictiveBackHandler;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/activity/compose/PredictiveBackHandlerInfo;)V

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object v5, v9

    check-cast v5, Landroidx/activity/compose/ComposePredictiveBackHandler;

    const v6, -0x14c5e7d0

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_f

    if-ne v7, v13, :cond_10

    :cond_f
    new-instance v7, Landroidx/activity/compose/a;

    invoke-direct {v7, v5, v1, v12}, Landroidx/activity/compose/a;-><init>(Landroidx/activity/compose/internal/BackHandlerCompat;Lkotlin/Function;I)V

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static {v7, v8}, Landroidx/compose/runtime/EffectsKt;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    and-int/lit8 v9, v3, 0xe

    if-ne v9, v4, :cond_11

    move v3, v12

    goto :goto_9

    :cond_11
    const/4 v3, 0x0

    :goto_9
    or-int/2addr v3, v7

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_12

    if-ne v4, v13, :cond_13

    :cond_12
    new-instance v4, Landroidx/activity/compose/b;

    invoke-direct {v4, v5, v0, v12}, Landroidx/activity/compose/b;-><init>(Landroidx/activity/compose/internal/BackHandlerCompat;ZI)V

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    move-object v7, v4

    check-cast v7, Lkotlin/jvm/functions/Function1;

    move-object v4, v6

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/lifecycle/compose/LifecycleEffectKt;->d(Ljava/lang/Boolean;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_14

    if-ne v4, v13, :cond_15

    :cond_14
    new-instance v4, Landroidx/activity/compose/c;

    invoke-direct {v4, v14, v5, v12}, Landroidx/activity/compose/c;-><init>(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/internal/BackHandlerCompat;I)V

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v5, v4, v8}, Landroidx/compose/runtime/EffectsKt;->b(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_16
    const-string v0, "No NavigationEventDispatcherOwner was provided via LocalNavigationEventDispatcherOwner and no OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner. Please provide one of the two."

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_17
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_a
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v3

    if-eqz v3, :cond_18

    new-instance v4, Lic;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v1, v2, v5}, Lic;-><init>(ZLkotlin/Function;II)V

    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method
