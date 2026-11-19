.class public abstract Lcom/vuitton/android/presentation/screen/story/components/StoryComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/story/components/StoryComposableKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0006\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "currentPage",
        "",
        "currentAssetDuration",
        "",
        "isOnPause",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 42

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v9, p4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0xbb276bb

    move-object/from16 v2, p5

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    iget-object v11, v10, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    or-int v0, p6, v0

    move-object/from16 v13, p1

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    move-object/from16 v4, p3

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x800

    goto :goto_3

    :cond_3
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v0, v2

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x4000

    goto :goto_4

    :cond_4
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v0, v2

    and-int/lit16 v2, v0, 0x2493

    const/16 v7, 0x2492

    const/4 v8, 0x0

    if-eq v2, v7, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    move v2, v8

    :goto_5
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v10, v7, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_35

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v13, :cond_6

    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v7, v10}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v16

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v16, :cond_7

    if-ne v15, v13, :cond_8

    :cond_7
    new-instance v15, Le90;

    invoke-direct {v15, v2, v12}, Le90;-><init>(II)V

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/4 v12, 0x3

    invoke-static {v8, v15, v10, v8, v12}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v12

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v13, :cond_9

    invoke-static {v8}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v15, Landroidx/compose/runtime/MutableIntState;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v13, :cond_a

    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Landroidx/compose/runtime/SnapshotLongStateKt;->a(J)Landroidx/compose/runtime/MutableLongState;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v18, v8

    check-cast v18, Landroidx/compose/runtime/MutableLongState;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v13, :cond_b

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v8}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v8, Landroidx/compose/runtime/MutableState;

    sget-object v14, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v20, :cond_c

    if-ne v5, v13, :cond_d

    :cond_c
    new-instance v5, Lcom/vuitton/android/presentation/screen/story/components/StoryComposableKt$StoryComposable$1$1;

    invoke-direct {v5, v1, v8, v6}, Lcom/vuitton/android/presentation/screen/story/components/StoryComposableKt$StoryComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v14, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v5, 0xe000

    and-int/2addr v5, v0

    const/16 v6, 0x4000

    if-ne v5, v6, :cond_e

    const/4 v5, 0x1

    goto :goto_6

    :cond_e
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_f

    if-ne v6, v13, :cond_10

    :cond_f
    new-instance v6, Lcom/vuitton/android/presentation/screen/story/components/a;

    invoke-direct {v6, v9, v7, v15, v12}, Lcom/vuitton/android/presentation/screen/story/components/a;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/foundation/pager/PagerState;)V

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v6, Lkotlin/jvm/functions/Function0;

    and-int/lit16 v5, v0, 0x1c00

    const/16 v3, 0x800

    if-ne v5, v3, :cond_11

    const/4 v3, 0x1

    goto :goto_7

    :cond_11
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    and-int/lit16 v0, v0, 0x380

    const/16 v5, 0x100

    if-ne v0, v5, :cond_12

    const/16 v19, 0x1

    goto :goto_8

    :cond_12
    const/16 v19, 0x0

    :goto_8
    or-int v3, v3, v19

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_13

    if-ne v5, v13, :cond_14

    :cond_13
    move v4, v2

    goto :goto_9

    :cond_14
    move-object/from16 v17, v6

    move-object/from16 v28, v7

    move-object/from16 v20, v12

    move-object v4, v15

    const/4 v15, 0x0

    const/16 v19, 0x100

    move v7, v2

    move-object v12, v8

    move-object/from16 v8, p2

    goto :goto_a

    :goto_9
    new-instance v2, Lcom/vuitton/android/presentation/screen/story/components/b;

    move-object v3, v12

    move-object v12, v8

    move-object v8, v3

    move-object/from16 v3, p3

    move-object/from16 v17, v6

    move-object v5, v7

    move-object v7, v15

    const/4 v15, 0x0

    const/16 v19, 0x100

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/story/components/b;-><init>(Lkotlin/jvm/functions/Function0;ILkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/foundation/pager/PagerState;)V

    move-object/from16 v20, v7

    move v7, v4

    move-object/from16 v4, v20

    move-object/from16 v28, v5

    move-object/from16 v20, v8

    move-object v8, v6

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v2

    :goto_a
    check-cast v5, Lkotlin/jvm/functions/Function0;

    sget-object v2, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0xf

    if-nez v3, :cond_15

    if-ne v6, v13, :cond_16

    :cond_15
    new-instance v6, Lcl0;

    invoke-direct {v6, v2, v1, v12, v15}, Lcl0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v6, v10}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v14, "StoryComposable"

    invoke-direct {v2, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v13, :cond_17

    new-instance v6, Ll01;

    invoke-direct {v6, v15}, Ll01;-><init>(I)V

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v15, 0x0

    invoke-static {v2, v15, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v6, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    move v15, v0

    iget-wide v0, v10, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    invoke-static {v10, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v29, v7

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v11, :cond_34

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    move/from16 v22, v0

    iget-boolean v0, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_18

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_18
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_b
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v6, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v22, v12

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v23, v12

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v2, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v24, v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_19

    new-instance v0, Ll01;

    move-object/from16 v25, v1

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ll01;-><init>(I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_c

    :cond_19
    move-object/from16 v25, v1

    :goto_c
    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-static {v2, v1, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v21

    new-instance v0, Lrl;

    move-object v2, v6

    const/16 v6, 0x8

    move-object/from16 v33, v2

    move-object/from16 v31, v3

    move-object/from16 v30, v5

    move-object/from16 v5, v18

    move-object/from16 v3, v22

    move-object/from16 v32, v24

    move-object/from16 v34, v25

    move-object/from16 v2, p1

    move/from16 v18, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lrl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v1, v0

    const v2, 0x11d9111e

    invoke-static {v2, v1, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v26, 0x6000

    const/16 v27, 0x3eec

    move-object v2, v12

    const/4 v12, 0x0

    move-object v6, v13

    const/4 v13, 0x0

    move-object/from16 v22, v14

    const/4 v14, 0x1

    move/from16 v24, v15

    const/4 v15, 0x0

    const/16 v25, 0x2

    const/16 v16, 0x0

    move-object/from16 v35, v17

    const/16 v17, 0x0

    move/from16 v36, v18

    const/16 v18, 0x0

    move/from16 v37, v19

    const/16 v19, 0x0

    move/from16 v38, v24

    move-object/from16 v24, v10

    move-object/from16 v10, v20

    const/16 v20, 0x0

    move-object/from16 v39, v11

    move-object/from16 v11, v21

    const/16 v21, 0x0

    move-object/from16 v40, v22

    const/16 v22, 0x0

    move/from16 v41, v25

    const v25, 0x6006000

    move-object/from16 v9, v23

    move-object/from16 v23, v1

    move-object v1, v9

    move-object v9, v2

    move-object/from16 v36, v5

    move-object v5, v6

    move-object/from16 v2, v35

    move/from16 v6, v38

    move-object/from16 v35, v4

    move-object/from16 v4, v40

    invoke-static/range {v10 .. v27}, Landroidx/compose/foundation/pager/PagerKt;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    move-object v11, v10

    move-object/from16 v10, v24

    new-instance v12, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v12, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->e(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v5, :cond_1a

    new-instance v13, Ll01;

    const/16 v14, 0xe

    invoke-direct {v13, v14}, Ll01;-><init>(I)V

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/4 v15, 0x0

    invoke-static {v12, v15, v13}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v13, v14, v10, v15}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v13

    iget-wide v14, v10, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v10, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    if-eqz v39, :cond_33

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v24, v2

    iget-boolean v2, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v2, :cond_1b

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    :goto_d
    move-object/from16 v2, v32

    goto :goto_e

    :cond_1b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    goto :goto_d

    :goto_e
    invoke-static {v10, v13, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v13, v33

    invoke-static {v10, v15, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v15, v34

    invoke-static {v14, v10, v1, v10, v15}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v10, v12, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {v35 .. v35}, Landroidx/compose/runtime/IntState;->f()I

    move-result v12

    iget-object v14, v11, Landroidx/compose/foundation/pager/PagerState;->k:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v14}, Landroidx/compose/foundation/gestures/ScrollableState;->a()Z

    move-result v14

    invoke-interface/range {v36 .. v36}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v16

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move-object/from16 v25, v3

    move-object/from16 v3, v30

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v20, v11

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v19, :cond_1d

    if-ne v11, v5, :cond_1c

    goto :goto_f

    :cond_1c
    move/from16 v19, v12

    goto :goto_10

    :cond_1d
    :goto_f
    new-instance v11, Lsq0;

    move/from16 v19, v12

    const/16 v12, 0x1c

    invoke-direct {v11, v3, v12}, Lsq0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_10
    check-cast v11, Lkotlin/jvm/functions/Function0;

    move-object/from16 v33, v13

    move v12, v14

    move-wide/from16 v13, v16

    move-object/from16 v17, v11

    move/from16 v11, v19

    const/16 v19, 0x0

    move-object/from16 v30, v3

    move-object v0, v15

    move/from16 v15, v18

    move-object/from16 v26, v20

    move-object/from16 v16, v28

    move-object/from16 v3, v33

    move-object/from16 v18, v10

    move/from16 v10, v29

    invoke-static/range {v10 .. v19}, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt;->a(IIZJZLkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v10, v18

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-static {v11}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v4, v13}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v15

    iget v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v13, 0x0

    move-object/from16 v40, v4

    const/4 v4, 0x2

    invoke-static {v14, v15, v13, v4}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v14, 0x30

    invoke-static {v11, v12, v10, v14}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v11

    iget-wide v14, v10, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v10, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v39, :cond_32

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_1e

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    :cond_1e
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_11
    invoke-static {v10, v11, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v15, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v10, v1, v10, v0}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v10, v4, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->f(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;

    move-result-object v4

    iget-object v11, v4, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->q:I

    const v13, 0x7f140319

    invoke-static {v10, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v14

    const/16 v13, 0x100

    if-ne v6, v13, :cond_1f

    const/4 v15, 0x1

    goto :goto_12

    :cond_1f
    const/4 v15, 0x0

    :goto_12
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v15, :cond_20

    if-ne v6, v5, :cond_21

    :cond_20
    new-instance v6, Ltf0;

    const/16 v13, 0x18

    invoke-direct {v6, v8, v13}, Ltf0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    move-object/from16 v19, v6

    check-cast v19, Lkotlin/jvm/functions/Function0;

    const/16 v22, 0x0

    const/16 v23, 0x3e9

    move-object/from16 v18, v10

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x0

    move/from16 v21, v20

    move-object/from16 v20, v18

    const/16 v18, 0x0

    move/from16 v27, v21

    const/16 v21, 0x0

    move-object v6, v12

    move v12, v4

    move-object v4, v6

    move/from16 v6, v27

    invoke-static/range {v10 .. v23}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;ZIZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v10, p0

    move-object/from16 v11, v20

    iget-object v12, v10, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->c:Lcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v12, v11, v15}, Lcom/vuitton/android/presentation/screen/story/components/StoryHeaderKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;Landroidx/compose/runtime/Composer;I)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-boolean v12, v10, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->h:Z

    sget-object v14, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    if-eqz v12, :cond_23

    const v12, 0x5266a85c

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v12, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v15, v40

    invoke-direct {v12, v15}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->j:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v14, v12, v6}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/16 v22, 0x0

    const/16 v23, 0xb

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, v6

    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/16 v16, 0x1

    xor-int/lit8 v12, v12, 0x1

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v5, :cond_22

    new-instance v13, Lv11;

    move-object/from16 v23, v1

    move-object/from16 v32, v2

    move-object/from16 v1, v25

    const/4 v2, 0x0

    invoke-direct {v13, v2, v1}, Lv11;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_13

    :cond_22
    move-object/from16 v23, v1

    move-object/from16 v32, v2

    move-object/from16 v1, v25

    const/4 v2, 0x0

    :goto_13
    check-cast v13, Lkotlin/jvm/functions/Function0;

    move-object/from16 v33, v3

    const/16 v3, 0x180

    invoke-static {v3, v11, v6, v13, v12}, Lcom/vuitton/android/presentation/compose/LVPlayPauseButtonKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_23
    move-object/from16 v23, v1

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v1, v25

    move-object/from16 v15, v40

    const/4 v2, 0x0

    const v3, 0x526c6423

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_14
    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt;->a(Landroidx/compose/runtime/Composer;)Z

    move-result v2

    if-nez v2, :cond_2b

    const v2, 0x526d3354

    invoke-static {v11, v2, v15}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v13, 0x0

    invoke-static {v2, v13, v13, v3}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object/from16 v3, v31

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->e(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->m:F

    const/4 v6, 0x0

    const/4 v12, 0x1

    invoke-static {v2, v6, v3, v12}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object/from16 v6, v24

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v3, :cond_24

    if-ne v12, v5, :cond_25

    :cond_24
    new-instance v12, Lsq0;

    const/16 v3, 0x1d

    invoke-direct {v12, v6, v3}, Lsq0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v12, Lkotlin/jvm/functions/Function0;

    move-object/from16 v3, v30

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v16, v2

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v13, :cond_27

    if-ne v2, v5, :cond_26

    goto :goto_15

    :cond_26
    const/4 v13, 0x0

    goto :goto_16

    :cond_27
    :goto_15
    new-instance v2, Lw11;

    const/4 v13, 0x0

    invoke-direct {v2, v3, v13}, Lw11;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_16
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v5, :cond_28

    new-instance v13, Lv11;

    move-object/from16 v18, v2

    const/4 v2, 0x1

    invoke-direct {v13, v2, v1}, Lv11;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_17

    :cond_28
    move-object/from16 v18, v2

    const/4 v2, 0x1

    :goto_17
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v19, :cond_29

    if-ne v2, v5, :cond_2a

    :cond_29
    new-instance v2, Lp01;

    const/4 v5, 0x6

    invoke-direct {v2, v10, v1, v5}, Lp01;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v1, v7

    const/16 v7, 0xc00

    move-object/from16 v25, v0

    move-object/from16 v30, v3

    move-object/from16 v17, v6

    move-object v6, v11

    move-object v2, v12

    move-object v0, v15

    move-object/from16 v3, v18

    move-object/from16 v8, v23

    move-object/from16 v12, v32

    move-object v11, v1

    move-object v15, v4

    move-object v4, v13

    move-object/from16 v1, v16

    move-object/from16 v13, v33

    move-object/from16 v16, v9

    const/4 v9, 0x0

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/story/components/StoryClickCatcherKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_18

    :cond_2b
    move-object/from16 v25, v0

    move-object/from16 v16, v9

    move-object v6, v11

    move-object v0, v15

    move-object/from16 v8, v23

    move-object/from16 v17, v24

    move-object/from16 v12, v32

    move-object/from16 v13, v33

    const/4 v9, 0x0

    move-object v15, v4

    move-object v11, v7

    const v1, 0x5274eda3

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_18
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2c

    iget-boolean v1, v10, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->g:Z

    if-eqz v1, :cond_2c

    const v1, 0x52752ff4

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v1, 0x1

    goto :goto_19

    :cond_2c
    const v1, -0x47a99bcc

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt;->a(Landroidx/compose/runtime/Composer;)Z

    move-result v1

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_19
    if-eqz v1, :cond_31

    const v1, 0x5276f8c3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v6, v1, v0, v2}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v14, v0, v1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    const/16 v2, 0x36

    invoke-static {v1, v15, v6, v2}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v1

    iget-wide v2, v6, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v6, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v39, :cond_30

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v4, v6, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v4, :cond_2d

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1a

    :cond_2d
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1a
    invoke-static {v6, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6, v3, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v15, v25

    invoke-static {v2, v6, v8, v6, v15}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v2, v16

    invoke-static {v6, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v11, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->H:I

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    if-lez v0, :cond_2e

    const/4 v13, 0x1

    goto :goto_1b

    :cond_2e
    move v13, v9

    :goto_1b
    const v0, 0x7f140359

    invoke-static {v6, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v15, v17

    const/16 v17, 0x0

    const/16 v18, 0x5

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v16, v6

    invoke-static/range {v10 .. v18}, Lcom/vuitton/android/presentation/compose/components/AccessibilityPagerButtonsKt;->a(Landroidx/compose/ui/Modifier;ILcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v10, v16

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v11, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I:I

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    if-ltz v0, :cond_2f

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result v1

    const/4 v12, 0x1

    sub-int/2addr v1, v12

    if-ge v0, v1, :cond_2f

    const/4 v13, 0x1

    goto :goto_1c

    :cond_2f
    move v13, v9

    :goto_1c
    const v0, 0x7f140342

    invoke-static {v10, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0x5

    move-object/from16 v16, v10

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v15, v30

    invoke-static/range {v10 .. v18}, Lcom/vuitton/android/presentation/compose/components/AccessibilityPagerButtonsKt;->a(Landroidx/compose/ui/Modifier;ILcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v10, v16

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1d

    :cond_30
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v20, 0x0

    throw v20

    :cond_31
    move-object v10, v6

    const/4 v12, 0x1

    const v0, 0x528674e3

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1d
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1e

    :cond_32
    const/16 v20, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v20

    :cond_33
    const/16 v20, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v20

    :cond_34
    const/16 v20, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v20

    :cond_35
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1e
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_36

    new-instance v0, Lkj0;

    const/16 v7, 0x1c

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lkj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_36
    return-void
.end method
