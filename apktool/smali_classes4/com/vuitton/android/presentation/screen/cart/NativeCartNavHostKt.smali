.class public abstract Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;",
        "cartViewState",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 29

    move-object/from16 v1, p0

    move/from16 v13, p10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0xaece985

    move-object/from16 v2, p9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v13

    move-object/from16 v4, p1

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    and-int/lit16 v3, v13, 0x180

    if-nez v3, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v0, v3

    :cond_3
    move-object/from16 v8, p3

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x800

    goto :goto_3

    :cond_4
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v0, v3

    move-object/from16 v3, p4

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x4000

    goto :goto_4

    :cond_5
    const/16 v9, 0x2000

    :goto_4
    or-int/2addr v0, v9

    move-object/from16 v9, p5

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/high16 v11, 0x20000

    goto :goto_5

    :cond_6
    const/high16 v11, 0x10000

    :goto_5
    or-int/2addr v0, v11

    move-object/from16 v11, p6

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/high16 v15, 0x100000

    goto :goto_6

    :cond_7
    const/high16 v15, 0x80000

    :goto_6
    or-int/2addr v0, v15

    move-object/from16 v15, p7

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/high16 v16, 0x800000

    goto :goto_7

    :cond_8
    const/high16 v16, 0x400000

    :goto_7
    or-int v0, v0, v16

    move-object/from16 v12, p8

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/high16 v18, 0x4000000

    goto :goto_8

    :cond_9
    const/high16 v18, 0x2000000

    :goto_8
    or-int v0, v0, v18

    const v18, 0x2492493

    and-int v7, v0, v18

    const v6, 0x2492492

    const/16 v21, 0x1

    const/4 v5, 0x0

    if-eq v7, v6, :cond_a

    move/from16 v6, v21

    goto :goto_9

    :cond_a
    move v6, v5

    :goto_9
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v14, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_21

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v14}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    new-array v10, v5, [Landroidx/navigation/Navigator;

    invoke-static {v10, v14}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v10

    sget-object v5, Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;->MAIN:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    move-object/from16 v2, p2

    if-ne v2, v5, :cond_b

    move/from16 v5, v21

    goto :goto_a

    :cond_b
    const/4 v5, 0x0

    :goto_a
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v3, v0, 0xe

    const/4 v4, 0x4

    if-eq v3, v4, :cond_c

    const/4 v4, 0x0

    goto :goto_b

    :cond_c
    move/from16 v4, v21

    :goto_b
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    or-int v4, v4, v26

    move/from16 v26, v4

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v26, :cond_d

    if-ne v4, v8, :cond_e

    :cond_d
    new-instance v4, Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt$NativeCartNavHost$1$1;

    const/4 v9, 0x0

    invoke-direct {v4, v1, v10, v9}, Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt$NativeCartNavHost$1$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Landroidx/navigation/NavHostController;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v2, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_f

    new-instance v2, Lbn;

    const/4 v4, 0x5

    invoke-direct {v2, v7, v1, v4}, Lbn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v2, Landroidx/lifecycle/LifecycleEventObserver;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    or-int v9, v9, v26

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v9, :cond_11

    if-ne v1, v8, :cond_10

    goto :goto_c

    :cond_10
    const/4 v9, 0x0

    goto :goto_d

    :cond_11
    :goto_c
    new-instance v1, Lif0;

    const/4 v9, 0x0

    invoke-direct {v1, v6, v2, v9}, Lif0;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/lifecycle/LifecycleEventObserver;I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_d
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v1, v14}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    sget-object v15, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$Cart;->INSTANCE:Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$Cart;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_12

    new-instance v1, Lbe0;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lbe0;-><init>(I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object/from16 v24, v1

    check-cast v24, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_13

    new-instance v1, Lbe0;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lbe0;-><init>(I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    move-object/from16 v26, v1

    check-cast v26, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_14

    new-instance v1, Lbe0;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lbe0;-><init>(I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v27, v1

    check-cast v27, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_15

    new-instance v1, Lbe0;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lbe0;-><init>(I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v28, v1

    check-cast v28, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v1

    const v2, 0xe000

    and-int/2addr v2, v0

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_16

    move/from16 v2, v21

    goto :goto_e

    :cond_16
    move v2, v9

    :goto_e
    or-int/2addr v1, v2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_17

    move v2, v9

    goto :goto_f

    :cond_17
    move/from16 v2, v21

    :goto_f
    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x70

    const/16 v3, 0x20

    if-eq v2, v3, :cond_18

    move v2, v9

    goto :goto_10

    :cond_18
    move/from16 v2, v21

    :goto_10
    or-int/2addr v1, v2

    and-int/lit16 v2, v0, 0x380

    const/16 v3, 0x100

    if-ne v2, v3, :cond_19

    move/from16 v2, v21

    goto :goto_11

    :cond_19
    move v2, v9

    :goto_11
    or-int/2addr v1, v2

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    and-int/lit16 v2, v0, 0x1c00

    const/16 v3, 0x800

    if-ne v2, v3, :cond_1a

    move/from16 v2, v21

    goto :goto_12

    :cond_1a
    move v2, v9

    :goto_12
    or-int/2addr v1, v2

    const/high16 v2, 0x70000

    and-int/2addr v2, v0

    const/high16 v3, 0x20000

    if-ne v2, v3, :cond_1b

    move/from16 v2, v21

    goto :goto_13

    :cond_1b
    move v2, v9

    :goto_13
    or-int/2addr v1, v2

    const/high16 v2, 0x380000

    and-int/2addr v2, v0

    const/high16 v3, 0x100000

    if-ne v2, v3, :cond_1c

    move/from16 v2, v21

    goto :goto_14

    :cond_1c
    move v2, v9

    :goto_14
    or-int/2addr v1, v2

    const/high16 v2, 0x1c00000

    and-int/2addr v2, v0

    const/high16 v3, 0x800000

    if-ne v2, v3, :cond_1d

    move/from16 v2, v21

    goto :goto_15

    :cond_1d
    move v2, v9

    :goto_15
    or-int/2addr v1, v2

    const/high16 v2, 0xe000000

    and-int/2addr v0, v2

    const/high16 v2, 0x4000000

    if-ne v0, v2, :cond_1e

    goto :goto_16

    :cond_1e
    move/from16 v21, v9

    :goto_16
    or-int v0, v1, v21

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_20

    if-ne v1, v8, :cond_1f

    goto :goto_17

    :cond_1f
    move-object v6, v10

    goto :goto_18

    :cond_20
    :goto_17
    new-instance v0, Ljf0;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    move-object/from16 v2, p4

    move-object/from16 v9, p5

    move v1, v5

    move-object v6, v10

    move-object v10, v11

    move-object/from16 v5, p2

    move-object/from16 v11, p7

    invoke-direct/range {v0 .. v12}, Ljf0;-><init>(ZLkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Landroidx/navigation/NavHostController;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_18
    move-object/from16 v23, v1

    check-cast v23, Lkotlin/jvm/functions/Function1;

    const v25, 0x36d80030

    move-object/from16 v20, v26

    const/16 v26, 0x43c

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v24

    move-object/from16 v21, v27

    move-object/from16 v22, v28

    move-object/from16 v24, v14

    move-object v14, v6

    invoke-static/range {v14 .. v26}, Landroidx/navigation/compose/NavHostKt;->b(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_19

    :cond_21
    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_19
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_22

    new-instance v0, Lk4;

    const/4 v11, 0x7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move v10, v13

    invoke-direct/range {v0 .. v11}, Lk4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/Function;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_22
    return-void
.end method
