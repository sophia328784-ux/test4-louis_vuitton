.class public abstract Landroidx/activity/compose/BackHandlerKt;
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
.method public static final a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    const v3, -0x158b58d6

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x4

    if-eqz v3, :cond_0

    or-int/lit8 v5, v1, 0x6

    move v6, v5

    move/from16 v5, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v1, 0x6

    if-nez v5, :cond_2

    move/from16 v5, p0

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v1

    goto :goto_1

    :cond_2
    move/from16 v5, p0

    move v6, v1

    :goto_1
    and-int/lit8 v7, v1, 0x30

    const/16 v9, 0x20

    if-nez v7, :cond_4

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v9

    goto :goto_2

    :cond_3
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v6, v7

    :cond_4
    and-int/lit8 v7, v6, 0x13

    const/16 v10, 0x12

    const/4 v11, 0x0

    if-eq v7, v10, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    move v7, v11

    :goto_3
    and-int/lit8 v10, v6, 0x1

    invoke-virtual {v8, v10, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_19

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    move v3, v5

    :goto_4
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    if-nez v5, :cond_7

    const v5, 0x1fe7a4b1

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v8}, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/activity/OnBackPressedDispatcherOwner;

    move-result-object v5

    :goto_5
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_7
    const v7, 0x1fe7996e

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    goto :goto_5

    :goto_6
    if-eqz v5, :cond_18

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_8

    if-ne v10, v13, :cond_d

    :cond_8
    new-instance v10, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    instance-of v7, v5, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    const/4 v14, 0x0

    if-eqz v7, :cond_9

    move-object v7, v5

    check-cast v7, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    goto :goto_7

    :cond_9
    move-object v7, v14

    :goto_7
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroidx/navigationevent/NavigationEventDispatcherOwner;->getNavigationEventDispatcher()Landroidx/navigationevent/NavigationEventDispatcher;

    move-result-object v7

    goto :goto_8

    :cond_a
    move-object v7, v14

    :goto_8
    instance-of v15, v5, Landroidx/activity/OnBackPressedDispatcherOwner;

    if-eqz v15, :cond_b

    move-object v15, v5

    check-cast v15, Landroidx/activity/OnBackPressedDispatcherOwner;

    goto :goto_9

    :cond_b
    move-object v15, v14

    :goto_9
    if-eqz v15, :cond_c

    invoke-interface {v15}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v14

    :cond_c
    invoke-direct {v10, v7, v14}, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;-><init>(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/activity/OnBackPressedDispatcher;)V

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v10, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    iget-wide v14, v8, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v8, v14, v15}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v16

    or-int v7, v7, v16

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v7, :cond_e

    if-ne v12, v13, :cond_f

    :cond_e
    new-instance v12, Landroidx/activity/compose/ComposeBackHandler;

    new-instance v7, Landroidx/activity/compose/BackHandlerInfo;

    invoke-direct {v7, v5, v14, v15}, Landroidx/activity/compose/BackHandlerInfo;-><init>(Ljava/lang/Object;J)V

    invoke-direct {v12, v7}, Landroidx/activity/compose/ComposeBackHandler;-><init>(Landroidx/activity/compose/BackHandlerInfo;)V

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object v5, v12

    check-cast v5, Landroidx/activity/compose/ComposeBackHandler;

    const v7, -0x22e316cc

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    and-int/lit8 v12, v6, 0x70

    if-ne v12, v9, :cond_10

    const/4 v9, 0x1

    goto :goto_a

    :cond_10
    move v9, v11

    :goto_a
    or-int/2addr v7, v9

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_11

    if-ne v9, v13, :cond_12

    :cond_11
    new-instance v9, Landroidx/activity/compose/a;

    invoke-direct {v9, v5, v0, v11}, Landroidx/activity/compose/a;-><init>(Landroidx/activity/compose/internal/BackHandlerCompat;Lkotlin/Function;I)V

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v9, v8}, Landroidx/compose/runtime/EffectsKt;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    and-int/lit8 v6, v6, 0xe

    if-ne v6, v4, :cond_13

    const/4 v12, 0x1

    goto :goto_b

    :cond_13
    move v12, v11

    :goto_b
    or-int v4, v9, v12

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_14

    if-ne v9, v13, :cond_15

    :cond_14
    new-instance v9, Landroidx/activity/compose/b;

    invoke-direct {v9, v5, v3, v11}, Landroidx/activity/compose/b;-><init>(Landroidx/activity/compose/internal/BackHandlerCompat;ZI)V

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object v4, v7

    move-object v7, v9

    move v9, v6

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/lifecycle/compose/LifecycleEffectKt;->d(Ljava/lang/Boolean;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_16

    if-ne v6, v13, :cond_17

    :cond_16
    new-instance v6, Landroidx/activity/compose/c;

    invoke-direct {v6, v10, v5, v11}, Landroidx/activity/compose/c;-><init>(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/internal/BackHandlerCompat;I)V

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v5, v6, v8}, Landroidx/compose/runtime/EffectsKt;->b(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :cond_18
    const-string v0, "No NavigationEventDispatcherOwner was provided via LocalNavigationEventDispatcherOwner and no OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner. Please provide one of the two."

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_19
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    move v3, v5

    :goto_c
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v4

    if-eqz v4, :cond_1a

    new-instance v5, Lhc;

    invoke-direct {v5, v3, v0, v1, v2}, Lhc;-><init>(ZLkotlin/jvm/functions/Function0;II)V

    iput-object v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1a
    return-void
.end method
