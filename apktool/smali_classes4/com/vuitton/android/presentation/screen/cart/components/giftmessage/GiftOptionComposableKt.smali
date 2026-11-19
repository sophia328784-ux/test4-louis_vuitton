.class public abstract Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftOptionComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;ZZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v1, p0

    move/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x2abd7835

    move-object/from16 v2, p8

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p9, v0

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    move/from16 v4, p2

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v0, v5

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x800

    goto :goto_3

    :cond_3
    const/16 v5, 0x400

    :goto_3
    or-int/2addr v0, v5

    move-object/from16 v5, p4

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x4000

    goto :goto_4

    :cond_4
    const/16 v11, 0x2000

    :goto_4
    or-int/2addr v0, v11

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/high16 v11, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v11, 0x10000

    :goto_5
    or-int/2addr v0, v11

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/high16 v11, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v11, 0x80000

    :goto_6
    or-int/2addr v0, v11

    move-object/from16 v11, p7

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/high16 v13, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v13, 0x400000

    :goto_7
    or-int/2addr v0, v13

    const v13, 0x492493

    and-int/2addr v13, v0

    const v14, 0x492492

    const/16 v16, 0x1

    if-eq v13, v14, :cond_8

    move/from16 v13, v16

    goto :goto_8

    :cond_8
    const/4 v13, 0x0

    :goto_8
    and-int/lit8 v14, v0, 0x1

    invoke-virtual {v10, v14, v13}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v13

    if-eqz v13, :cond_10

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v13

    invoke-static {v13, v10}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    sget-object v14, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v15, v0, 0xe

    if-eq v15, v3, :cond_9

    const/16 v17, 0x0

    goto :goto_9

    :cond_9
    move/from16 v17, v16

    :goto_9
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v3, 0x0

    if-nez v17, :cond_a

    if-ne v2, v12, :cond_b

    :cond_a
    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftOptionComposableKt$GiftOptionComposable$1$1;

    invoke-direct {v2, v1, v3}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftOptionComposableKt$GiftOptionComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v14, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v2, 0x4

    if-eq v15, v2, :cond_c

    const/4 v2, 0x0

    goto :goto_a

    :cond_c
    move/from16 v2, v16

    :goto_a
    const/high16 v15, 0x380000

    and-int/2addr v0, v15

    const/high16 v15, 0x100000

    if-ne v0, v15, :cond_d

    move/from16 v15, v16

    goto :goto_b

    :cond_d
    const/4 v15, 0x0

    :goto_b
    or-int v0, v2, v15

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_e

    if-ne v2, v12, :cond_f

    :cond_e
    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftOptionComposableKt$GiftOptionComposable$2$1;

    invoke-direct {v2, v1, v9, v3}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftOptionComposableKt$GiftOptionComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v14, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "GiftOptionComposable"

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v2, v6, 0x1

    new-instance v3, Lrq;

    const/16 v12, 0x16

    invoke-direct {v3, v12}, Lrq;-><init>(I)V

    const/4 v12, 0x6

    invoke-static {v0, v2, v3, v10, v12}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v20

    new-instance v0, Lkw;

    const/4 v2, 0x2

    invoke-direct {v0, v8, v2}, Lkw;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v2, -0x53cd6c71

    invoke-static {v2, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v14

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/a;

    move-object v2, v1

    move v1, v4

    move-object v3, v5

    move-object v5, v11

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/a;-><init>(ZLcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    move-object v1, v2

    const v2, -0x1c9044b0

    invoke-static {v2, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/b;

    invoke-direct {v2, v1, v7, v4}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/b;-><init>(Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)V

    const v3, 0x48479d9a

    invoke-static {v3, v2, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v21

    const v23, 0x300001b0

    const/16 v24, 0xf8

    const/4 v13, 0x0

    move-object v11, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v22, v10

    move-object v10, v12

    move-object v12, v0

    invoke-static/range {v10 .. v24}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_c

    :cond_10
    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_c
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_11

    new-instance v0, Lzh;

    move/from16 v3, p2

    move-object/from16 v5, p4

    move v2, v6

    move-object v4, v7

    move-object v6, v8

    move-object v7, v9

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lzh;-><init>(Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;ZZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method
