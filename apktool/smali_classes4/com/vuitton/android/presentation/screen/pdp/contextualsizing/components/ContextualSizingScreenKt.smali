.class public abstract Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;",
        "selectedItem",
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
.method public static final a(Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v3, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x4c8a8a8c    # 7.2635488E7f

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p5, v0

    move-object/from16 v6, p1

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    move-object/from16 v7, p2

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    move-object/from16 v8, p3

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x493

    const/16 v2, 0x492

    const/4 v9, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_4

    move v1, v4

    goto :goto_4

    :cond_4
    move v1, v9

    :goto_4
    and-int/2addr v0, v4

    invoke-virtual {v13, v0, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v10, :cond_5

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v13}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object v11, v0

    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    const v0, 0x7f1406b7

    invoke-static {v13, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_6

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_7

    if-ne v2, v10, :cond_8

    :cond_7
    new-instance v2, Lhq;

    invoke-direct {v2, v9, v3}, Lhq;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x3

    invoke-static {v9, v2, v13, v9, v1}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v2

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v5, :cond_9

    if-ne v14, v10, :cond_a

    :cond_9
    new-instance v14, Lhq;

    invoke-direct {v14, v4, v3}, Lhq;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-static {v9, v14, v13, v9, v1}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v1

    sget-object v14, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_b

    if-ne v5, v10, :cond_c

    :cond_b
    move-object v4, v0

    goto :goto_5

    :cond_c
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object v4, v0

    goto :goto_6

    :goto_5
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$1$1;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerState;Ljava/util/ArrayList;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :goto_6
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v14, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_d

    if-ne v5, v10, :cond_e

    :cond_d
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerState;Ljava/util/ArrayList;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :cond_e
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v14, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "ContextualSizingScreen"

    invoke-direct {v0, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_f

    if-ne v5, v10, :cond_10

    :cond_f
    new-instance v5, La4;

    const/16 v3, 0x16

    invoke-direct {v5, v12, v3}, La4;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v9, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    move-object v0, v11

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v11

    move-object v6, v0

    new-instance v0, Llf;

    move-object v3, v1

    move-object v5, v2

    move-object v2, v7

    move-object v7, v8

    move-object/from16 v1, p1

    move-object v8, v4

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v8}, Llf;-><init>(Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/pager/PagerState;Ljava/util/ArrayList;Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    const v1, -0x1ea8a2a5

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    const/high16 v14, 0x30000000

    const/16 v15, 0xfe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v9

    const-wide/16 v9, 0x0

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_7

    :cond_11
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_7
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_12

    new-instance v0, Lz;

    const/16 v6, 0x1b

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lz;-><init>(Ljava/io/Serializable;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method
