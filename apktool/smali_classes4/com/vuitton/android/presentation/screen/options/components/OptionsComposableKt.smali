.class public abstract Lcom/vuitton/android/presentation/screen/options/components/OptionsComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;",
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
.method public static final a(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 14

    move/from16 v5, p5

    const v0, -0x35a66d5f

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v5, 0x6

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v5

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    and-int/lit8 v2, v5, 0x30

    const/16 v3, 0x20

    if-nez v2, :cond_3

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_3
    and-int/lit16 v4, v5, 0x180

    const/16 v6, 0x100

    move-object/from16 v9, p2

    if-nez v4, :cond_5

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v6

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v1, v4

    :cond_5
    and-int/lit16 v4, v5, 0xc00

    const/16 v7, 0x800

    move-object/from16 v10, p3

    if-nez v4, :cond_7

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v7

    goto :goto_4

    :cond_6
    const/16 v4, 0x400

    :goto_4
    or-int/2addr v1, v4

    :cond_7
    and-int/lit16 v4, v1, 0x493

    const/16 v8, 0x492

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v4, v8, :cond_8

    move v4, v12

    goto :goto_5

    :cond_8
    move v4, v11

    :goto_5
    and-int/lit8 v8, v1, 0x1

    invoke-virtual {v0, v8, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    and-int/lit8 v13, v1, 0x70

    if-ne v13, v3, :cond_9

    move v3, v12

    goto :goto_6

    :cond_9
    move v3, v11

    :goto_6
    or-int/2addr v3, v8

    and-int/lit16 v8, v1, 0x380

    if-ne v8, v6, :cond_a

    move v6, v12

    goto :goto_7

    :cond_a
    move v6, v11

    :goto_7
    or-int/2addr v3, v6

    and-int/lit16 v1, v1, 0x1c00

    if-ne v1, v7, :cond_b

    move v11, v12

    :cond_b
    or-int v1, v3, v11

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_c

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v1, :cond_d

    :cond_c
    new-instance v6, Lcom/vuitton/android/presentation/screen/options/components/OptionsComposableKt$ListenSideEffects$1$1;

    const/4 v11, 0x0

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/options/components/OptionsComposableKt$ListenSideEffects$1$1;-><init>(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v6

    :cond_d
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v4, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    goto :goto_8

    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_f

    new-instance v0, Li1;

    const/16 v6, 0x1d

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Li1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;Landroidx/navigation/NavController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v13, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p6 .. p10}, La;->D(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const v0, 0x1faa5e06

    move-object/from16 v2, p11

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p12, v0

    move-object/from16 v9, p1

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v0, v3

    move-object/from16 v10, p3

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    goto :goto_3

    :cond_3
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v0, v3

    move-object/from16 v5, p4

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x4000

    goto :goto_4

    :cond_4
    const/16 v3, 0x2000

    :goto_4
    or-int/2addr v0, v3

    move-object/from16 v11, p5

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v3, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v3, 0x10000

    :goto_5
    or-int/2addr v0, v3

    move-object/from16 v12, p6

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/high16 v3, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v3, 0x80000

    :goto_6
    or-int/2addr v0, v3

    move-object/from16 v14, p7

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v3, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v3, 0x400000

    :goto_7
    or-int/2addr v0, v3

    move-object/from16 v15, p8

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/high16 v3, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v3, 0x2000000

    :goto_8
    or-int/2addr v0, v3

    move-object/from16 v3, p9

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/high16 v4, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v4, 0x10000000

    :goto_9
    or-int/2addr v0, v4

    move-object/from16 v4, p10

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x4

    goto :goto_a

    :cond_a
    const/4 v7, 0x2

    :goto_a
    const v16, 0x12492493

    and-int v8, v0, v16

    const v2, 0x12492492

    if-ne v8, v2, :cond_c

    and-int/lit8 v2, v7, 0x3

    const/4 v7, 0x2

    if-eq v2, v7, :cond_b

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v2, 0x1

    :goto_c
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;->h()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v7

    and-int/lit8 v14, v0, 0xe

    move/from16 v18, v0

    const/4 v0, 0x4

    if-eq v14, v0, :cond_d

    const/4 v0, 0x0

    goto :goto_d

    :cond_d
    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    or-int v0, v0, v19

    move/from16 v19, v0

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v8

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v19, :cond_f

    if-ne v0, v8, :cond_e

    goto :goto_e

    :cond_e
    const/4 v15, 0x1

    goto :goto_f

    :cond_f
    :goto_e
    new-instance v0, Lxg0;

    const/4 v15, 0x1

    invoke-direct {v0, v1, v2, v15}, Lxg0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_f
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v16, :cond_11

    if-ne v15, v8, :cond_10

    goto :goto_10

    :cond_10
    move-object/from16 v16, v0

    goto :goto_11

    :cond_11
    :goto_10
    new-instance v15, Lef;

    move-object/from16 v16, v0

    const/16 v0, 0xa

    invoke-direct {v15, v2, v0}, Lef;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_11
    check-cast v15, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v0, v18, 0x3

    and-int/lit16 v0, v0, 0x1c00

    move-object v3, v7

    move v7, v0

    move-object v0, v2

    move-object v2, v3

    move-object v4, v15

    move-object/from16 v3, v16

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/options/components/OptionsComposableKt;->a(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v15, v6

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4, v2, v15, v3}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v6

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_12

    invoke-static {v15}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v2

    :cond_12
    check-cast v2, Landroidx/compose/material3/SnackbarHostState;

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v7, 0x4

    if-eq v14, v7, :cond_13

    move v7, v4

    goto :goto_12

    :cond_13
    const/4 v7, 0x1

    :goto_12
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v7, v14

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v7, :cond_14

    if-ne v14, v8, :cond_15

    :cond_14
    new-instance v14, Lcom/vuitton/android/presentation/screen/options/components/OptionsComposableKt$OptionsComposable$3$1;

    invoke-direct {v14, v1, v2, v0, v3}, Lcom/vuitton/android/presentation/screen/options/components/OptionsComposableKt$OptionsComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v5, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v3, Lkw;

    const/16 v5, 0xf

    invoke-direct {v3, v13, v5}, Lkw;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v5, -0x484fa93e

    invoke-static {v5, v3, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v14

    new-instance v3, Lae0;

    const/4 v5, 0x6

    invoke-direct {v3, v2, v5}, Lae0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v2, -0x5886e280

    invoke-static {v2, v3, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v17

    move-object v2, v0

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/components/a;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v8, p7

    move-object/from16 v7, p8

    move/from16 v16, v4

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v9, v12

    move-object/from16 v12, v20

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/vuitton/android/presentation/screen/options/components/a;-><init>(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;Landroidx/navigation/NavController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    move-object v1, v2

    const v2, -0x12ee0e9

    invoke-static {v2, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v25

    const v27, 0x30000c30

    const/16 v28, 0x1f5

    move-object/from16 v24, v15

    move-object v15, v14

    const/4 v14, 0x0

    move/from16 v4, v16

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v0, 0x1

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v26, v24

    const/16 v24, 0x0

    invoke-static/range {v14 .. v28}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v26

    invoke-virtual {v6}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v2

    if-eqz v2, :cond_16

    const v2, -0xce6a11a

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v2, 0x7f140319

    invoke-static {v15, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/options/components/b;

    invoke-direct {v3, v6, v1}, Lcom/vuitton/android/presentation/screen/options/components/b;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;)V

    const v5, -0x5a525c2b

    invoke-static {v5, v3, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v23

    sget v3, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v3, v3, 0x9

    const/high16 v5, 0x6000000

    or-int v25, v3, v5

    const/16 v26, 0xf5

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v6

    move-object/from16 v24, v15

    move-object v15, v2

    invoke-static/range {v14 .. v26}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v24

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_16
    const v2, -0xce01da4

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;->b:Z

    if-eqz v2, :cond_17

    const v2, -0xcdfa546

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v4, v15, v4, v0}, Lcom/vuitton/android/designkit/components/components/LVLoadingOverlayKt;->a(ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_17
    const v0, -0xcdf25a4

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_18
    move-object v15, v6

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_14
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_19

    new-instance v0, Lgk;

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p12

    move-object v3, v13

    invoke-direct/range {v0 .. v12}, Lgk;-><init>(Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;Landroidx/navigation/NavController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void
.end method
