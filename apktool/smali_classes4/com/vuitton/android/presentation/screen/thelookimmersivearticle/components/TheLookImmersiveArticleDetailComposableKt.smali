.class public abstract Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleDetailComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v7, p5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x42c6c667

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x4

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p8, v0

    move-object/from16 v10, p1

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    move-object/from16 v11, p2

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    move-object/from16 v14, p3

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x800

    goto :goto_3

    :cond_3
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v0, v2

    move-object/from16 v15, p4

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x4000

    goto :goto_4

    :cond_4
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v0, v2

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v2, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v2, 0x10000

    :goto_5
    or-int/2addr v0, v2

    move-object/from16 v13, p6

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v2, 0x80000

    :goto_6
    or-int/2addr v0, v2

    const v2, 0x92493

    and-int/2addr v2, v0

    const v3, 0x92492

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eq v2, v3, :cond_7

    move/from16 v2, v17

    goto :goto_7

    :cond_7
    move/from16 v2, v16

    :goto_7
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {v8, v3, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-static {v2, v8}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v4, v0, 0xe

    if-eq v4, v9, :cond_8

    move/from16 v5, v16

    goto :goto_8

    :cond_8
    move/from16 v5, v17

    :goto_8
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v5, :cond_9

    if-ne v6, v12, :cond_a

    :cond_9
    new-instance v6, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleDetailComposableKt$TheLookImmersiveArticleDetailComposable$1$1;

    const/4 v5, 0x0

    invoke-direct {v6, v1, v2, v5}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleDetailComposableKt$TheLookImmersiveArticleDetailComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v3, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;->b5()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v11

    if-eq v4, v9, :cond_b

    move/from16 v3, v16

    goto :goto_9

    :cond_b
    move/from16 v3, v17

    :goto_9
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_c

    if-ne v5, v12, :cond_d

    :cond_c
    move v3, v0

    goto :goto_a

    :cond_d
    move/from16 v21, v0

    move-object/from16 v22, v2

    move v10, v4

    goto :goto_b

    :goto_a
    new-instance v0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleDetailComposableKt$TheLookImmersiveArticleDetailComposable$2$1;

    const-string v5, "updateCurrentLook(ILjava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    move/from16 v19, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;

    move/from16 v20, v4

    const-string v4, "updateCurrentLook"

    move-object/from16 v22, v2

    move/from16 v21, v19

    move/from16 v10, v20

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :goto_b
    check-cast v5, Lkotlin/reflect/KFunction;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    if-eq v10, v9, :cond_e

    move/from16 v0, v16

    goto :goto_c

    :cond_e
    move/from16 v0, v17

    :goto_c
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_f

    if-ne v2, v12, :cond_10

    :cond_f
    new-instance v2, Lll0;

    const/16 v0, 0x1c

    invoke-direct {v2, v1, v0}, Lll0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v2, Lkotlin/jvm/functions/Function2;

    if-eq v10, v9, :cond_11

    move/from16 v3, v16

    :goto_d
    move-object/from16 v0, v22

    goto :goto_e

    :cond_11
    move/from16 v3, v17

    goto :goto_d

    :goto_e
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x70000

    move/from16 v6, v21

    and-int/2addr v4, v6

    const/high16 v9, 0x20000

    if-ne v4, v9, :cond_12

    move/from16 v16, v17

    :cond_12
    or-int v3, v3, v16

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_13

    if-ne v4, v12, :cond_14

    :cond_13
    new-instance v4, Lcl0;

    const/16 v3, 0x13

    invoke-direct {v4, v1, v7, v0, v3}, Lcl0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v16, v4

    check-cast v16, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v0, v6, 0x3f0

    shl-int/lit8 v3, v6, 0x9

    const/high16 v4, 0x380000

    and-int/2addr v4, v3

    or-int/2addr v0, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v4, v3

    or-int/2addr v0, v4

    const/high16 v4, 0x70000000

    and-int/2addr v3, v4

    or-int v19, v0, v3

    move-object/from16 v9, v18

    move-object/from16 v18, v8

    move-object v8, v9

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object v12, v5

    move-object/from16 v17, v13

    move-object v13, v2

    invoke-static/range {v8 .. v19}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleDetailScreenKt;->a(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    goto :goto_f

    :cond_15
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_f
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_16

    new-instance v0, Lo;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p8

    move-object v6, v7

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lo;-><init>(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method
