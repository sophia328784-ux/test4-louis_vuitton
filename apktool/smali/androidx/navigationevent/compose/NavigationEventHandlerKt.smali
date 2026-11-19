.class public abstract Landroidx/navigationevent/compose/NavigationEventHandlerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "navigationevent-compose"
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
.method public static final a(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    const v0, 0x48bee1a3

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    or-int/lit16 v0, v0, 0x180

    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x800

    goto :goto_2

    :cond_2
    const/16 v3, 0x400

    :goto_2
    or-int/2addr v0, v3

    and-int/lit16 v3, v0, 0x493

    const/16 v5, 0x492

    if-eq v3, v5, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {v8, v5, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v5, :cond_4

    new-instance v3, Ldd0;

    const/16 v6, 0x16

    invoke-direct {v3, v6}, Ldd0;-><init>(I)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function0;

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_5

    new-instance v3, Ldd0;

    const/16 v7, 0x17

    invoke-direct {v3, v7}, Ldd0;-><init>(I)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_6

    new-instance v7, Ldd0;

    const/16 v5, 0x18

    invoke-direct {v7, v5}, Ldd0;-><init>(I)V

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v7, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v5, v0, 0xe

    or-int/lit16 v5, v5, 0xdb0

    shl-int/lit8 v0, v0, 0x9

    const v9, 0xe000

    and-int/2addr v9, v0

    or-int/2addr v5, v9

    const/high16 v9, 0x30000

    or-int/2addr v5, v9

    const/high16 v9, 0x380000

    and-int/2addr v0, v9

    or-int v9, v5, v0

    const/4 v2, 0x0

    move-object v1, p0

    move v5, p1

    move-object v4, v7

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->b(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v3, v6

    goto :goto_4

    :cond_7
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v3, p2

    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_8

    new-instance v0, Li4;

    const/16 v6, 0xf

    move-object v1, p0

    move v2, p1

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Li4;-><init>(Ljava/lang/Object;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method

.method public static final b(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v8, p0

    move/from16 v9, p8

    const v0, 0x358b6fe0

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    and-int/lit8 v0, v9, 0x6

    const/4 v11, 0x4

    if-nez v0, :cond_1

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v9

    goto :goto_1

    :cond_1
    move v0, v9

    :goto_1
    and-int/lit8 v1, v9, 0x30

    if-nez v1, :cond_3

    move/from16 v1, p1

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    goto :goto_3

    :cond_3
    move/from16 v1, p1

    :goto_3
    and-int/lit16 v3, v9, 0x180

    if-nez v3, :cond_5

    move-object/from16 v3, p2

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_4

    :cond_4
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v0, v5

    goto :goto_5

    :cond_5
    move-object/from16 v3, p2

    :goto_5
    and-int/lit16 v5, v9, 0xc00

    if-nez v5, :cond_7

    move-object/from16 v5, p3

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_6

    :cond_6
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v0, v7

    goto :goto_7

    :cond_7
    move-object/from16 v5, p3

    :goto_7
    and-int/lit16 v7, v9, 0x6000

    if-nez v7, :cond_9

    move/from16 v7, p4

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x4000

    goto :goto_8

    :cond_8
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v0, v13

    goto :goto_9

    :cond_9
    move/from16 v7, p4

    :goto_9
    const/high16 v13, 0x30000

    and-int/2addr v13, v9

    if-nez v13, :cond_b

    move-object/from16 v13, p5

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_a
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v0, v15

    goto :goto_b

    :cond_b
    move-object/from16 v13, p5

    :goto_b
    const/high16 v15, 0x180000

    and-int/2addr v15, v9

    if-nez v15, :cond_d

    move-object/from16 v15, p6

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_c
    const/high16 v16, 0x80000

    :goto_c
    or-int v0, v0, v16

    goto :goto_d

    :cond_d
    move-object/from16 v15, p6

    :goto_d
    const v16, 0x92493

    and-int v14, v0, v16

    const v12, 0x92492

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-eq v14, v12, :cond_e

    move/from16 v12, v18

    goto :goto_e

    :cond_e
    move/from16 v12, v17

    :goto_e
    and-int/lit8 v14, v0, 0x1

    invoke-virtual {v10, v14, v12}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v12

    if-eqz v12, :cond_1f

    sget-object v12, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v12, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    if-eqz v12, :cond_1e

    invoke-interface {v12}, Landroidx/navigationevent/NavigationEventDispatcherOwner;->getNavigationEventDispatcher()Landroidx/navigationevent/NavigationEventDispatcher;

    move-result-object v12

    and-int/lit8 v14, v0, 0xe

    if-ne v14, v11, :cond_f

    move/from16 v19, v18

    goto :goto_f

    :cond_f
    move/from16 v19, v17

    :goto_f
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v19, :cond_10

    if-ne v11, v6, :cond_11

    :cond_10
    new-instance v11, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    iget-object v4, v8, Landroidx/navigationevent/compose/NavigationEventState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigationevent/NavigationEventInfo;

    new-instance v2, Ltb0;

    const/16 v1, 0xe

    invoke-direct {v2, v8, v1}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v11, v4, v2}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object v1, v11

    check-cast v1, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    and-int/lit8 v4, v0, 0x70

    const/16 v11, 0x20

    if-ne v4, v11, :cond_12

    move/from16 v4, v18

    goto :goto_10

    :cond_12
    move/from16 v4, v17

    :goto_10
    or-int/2addr v2, v4

    and-int/lit16 v4, v0, 0x380

    const/16 v11, 0x100

    if-ne v4, v11, :cond_13

    move/from16 v4, v18

    goto :goto_11

    :cond_13
    move/from16 v4, v17

    :goto_11
    or-int/2addr v2, v4

    and-int/lit16 v4, v0, 0x1c00

    const/16 v11, 0x800

    if-ne v4, v11, :cond_14

    move/from16 v4, v18

    goto :goto_12

    :cond_14
    move/from16 v4, v17

    :goto_12
    or-int/2addr v2, v4

    const v4, 0xe000

    and-int/2addr v4, v0

    const/16 v11, 0x4000

    if-ne v4, v11, :cond_15

    move/from16 v4, v18

    goto :goto_13

    :cond_15
    move/from16 v4, v17

    :goto_13
    or-int/2addr v2, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v0

    const/high16 v11, 0x20000

    if-ne v4, v11, :cond_16

    move/from16 v4, v18

    goto :goto_14

    :cond_16
    move/from16 v4, v17

    :goto_14
    or-int/2addr v2, v4

    const/high16 v4, 0x380000

    and-int/2addr v0, v4

    const/high16 v4, 0x100000

    if-ne v0, v4, :cond_17

    move/from16 v0, v18

    goto :goto_15

    :cond_17
    move/from16 v0, v17

    :goto_15
    or-int/2addr v0, v2

    const/4 v2, 0x4

    if-ne v14, v2, :cond_18

    move/from16 v2, v18

    goto :goto_16

    :cond_18
    move/from16 v2, v17

    :goto_16
    or-int/2addr v0, v2

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_1a

    if-ne v2, v6, :cond_19

    goto :goto_17

    :cond_19
    move-object v11, v6

    goto :goto_18

    :cond_1a
    :goto_17
    new-instance v0, Landroidx/navigationevent/compose/a;

    move/from16 v2, p1

    move-object v4, v5

    move-object v11, v6

    move v5, v7

    move-object v6, v13

    move-object v7, v15

    invoke-direct/range {v0 .. v8}, Landroidx/navigationevent/compose/a;-><init>(Landroidx/navigationevent/compose/ComposeNavigationEventHandler;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/navigationevent/compose/NavigationEventState;)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_18
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v10}, Landroidx/compose/runtime/EffectsKt;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    const/4 v2, 0x4

    if-ne v14, v2, :cond_1b

    move/from16 v17, v18

    :cond_1b
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    or-int v0, v17, v0

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_1c

    if-ne v2, v11, :cond_1d

    :cond_1c
    new-instance v2, Landroidx/navigationevent/compose/b;

    invoke-direct {v2, v8, v1, v12}, Landroidx/navigationevent/compose/b;-><init>(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/compose/ComposeNavigationEventHandler;Landroidx/navigationevent/NavigationEventDispatcher;)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v2, v10}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    goto :goto_19

    :cond_1e
    const-string v0, "No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_1f
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_19
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_20

    new-instance v0, Lzv;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v1, v8

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lzv;-><init>(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method
