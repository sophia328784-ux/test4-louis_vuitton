.class public abstract Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersContainerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "isContentVisible",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 23

    move-object/from16 v0, p1

    move/from16 v3, p2

    move/from16 v12, p12

    if-eqz v0, :cond_0

    const-string v1, "QuickAccessFiltersContainer"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x187157bc

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    and-int/lit8 v0, v12, 0x6

    if-nez v0, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v12

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    move v5, v12

    :goto_1
    and-int/lit8 v7, v12, 0x30

    if-nez v7, :cond_4

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x20

    goto :goto_2

    :cond_3
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v5, v7

    :cond_4
    and-int/lit16 v7, v12, 0x180

    if-nez v7, :cond_6

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x100

    goto :goto_3

    :cond_5
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v5, v7

    :cond_6
    and-int/lit16 v7, v12, 0xc00

    move/from16 v15, p3

    if-nez v7, :cond_8

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x800

    goto :goto_4

    :cond_7
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v5, v7

    :cond_8
    and-int/lit16 v7, v12, 0x6000

    if-nez v7, :cond_a

    move-object/from16 v7, p4

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x4000

    goto :goto_5

    :cond_9
    const/16 v9, 0x2000

    :goto_5
    or-int/2addr v5, v9

    goto :goto_6

    :cond_a
    move-object/from16 v7, p4

    :goto_6
    const/high16 v9, 0x30000

    and-int/2addr v9, v12

    if-nez v9, :cond_c

    move-object/from16 v9, p5

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/high16 v10, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v10, 0x10000

    :goto_7
    or-int/2addr v5, v10

    goto :goto_8

    :cond_c
    move-object/from16 v9, p5

    :goto_8
    const/high16 v10, 0x180000

    and-int/2addr v10, v12

    if-nez v10, :cond_e

    move-object/from16 v10, p6

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const/high16 v11, 0x100000

    goto :goto_9

    :cond_d
    const/high16 v11, 0x80000

    :goto_9
    or-int/2addr v5, v11

    goto :goto_a

    :cond_e
    move-object/from16 v10, p6

    :goto_a
    const/high16 v11, 0xc00000

    and-int/2addr v11, v12

    if-nez v11, :cond_10

    move-object/from16 v11, p7

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const/high16 v13, 0x800000

    goto :goto_b

    :cond_f
    const/high16 v13, 0x400000

    :goto_b
    or-int/2addr v5, v13

    goto :goto_c

    :cond_10
    move-object/from16 v11, p7

    :goto_c
    const/high16 v13, 0x6000000

    and-int/2addr v13, v12

    if-nez v13, :cond_12

    move-object/from16 v13, p8

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/high16 v14, 0x4000000

    goto :goto_d

    :cond_11
    const/high16 v14, 0x2000000

    :goto_d
    or-int/2addr v5, v14

    goto :goto_e

    :cond_12
    move-object/from16 v13, p8

    :goto_e
    const/high16 v14, 0x30000000

    and-int/2addr v14, v12

    if-nez v14, :cond_14

    move-object/from16 v14, p9

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x20000000

    goto :goto_f

    :cond_13
    const/high16 v16, 0x10000000

    :goto_f
    or-int v5, v5, v16

    goto :goto_10

    :cond_14
    move-object/from16 v14, p9

    :goto_10
    and-int/lit8 v16, p13, 0x6

    move-object/from16 v1, p10

    if-nez v16, :cond_16

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    const/16 v16, 0x4

    goto :goto_11

    :cond_15
    const/16 v16, 0x2

    :goto_11
    or-int v16, p13, v16

    goto :goto_12

    :cond_16
    move/from16 v16, p13

    :goto_12
    const v17, 0x12492493

    and-int v8, v5, v17

    const v4, 0x12492492

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-ne v8, v4, :cond_18

    and-int/lit8 v4, v16, 0x3

    const/4 v8, 0x2

    if-eq v4, v8, :cond_17

    goto :goto_13

    :cond_17
    move/from16 v4, v17

    goto :goto_14

    :cond_18
    :goto_13
    move/from16 v4, v18

    :goto_14
    and-int/lit8 v8, v5, 0x1

    invoke-virtual {v6, v8, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v8, :cond_19

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v4, Landroidx/compose/runtime/MutableState;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    and-int/lit16 v1, v5, 0x380

    move-object/from16 v16, v2

    const/16 v2, 0x100

    if-ne v1, v2, :cond_1a

    move/from16 v17, v18

    :cond_1a
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v17, :cond_1b

    if-ne v1, v8, :cond_1c

    :cond_1b
    new-instance v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersContainerKt$QuickAccessFiltersContainer$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersContainerKt$QuickAccessFiltersContainer$1$1;-><init>(ZLandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v1, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v2, v5, 0x6

    and-int/lit8 v8, v2, 0xe

    invoke-static {v6, v0, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v13, Lar0;

    move-object/from16 v19, p8

    move-object/from16 v21, p10

    move-object/from16 v22, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v20, v14

    move-object/from16 v14, v16

    move-object/from16 v16, p0

    invoke-direct/range {v13 .. v22}, Lar0;-><init>(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    const v0, 0x372f106c

    invoke-static {v0, v13, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const v1, 0x36000

    or-int/2addr v1, v8

    and-int/lit8 v4, v5, 0x70

    or-int/2addr v1, v4

    and-int/lit16 v4, v2, 0x380

    or-int/2addr v1, v4

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    const/4 v8, 0x0

    const-string v4, "QAF container animation"

    move-object v5, v0

    move v0, v3

    move-object v2, v7

    move-object v3, v9

    move v7, v1

    move-object v1, v14

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_15

    :cond_1d
    move-object v14, v2

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_15
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_1e

    new-instance v0, Lry;

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v13, p13

    move-object v2, v14

    invoke-direct/range {v0 .. v13}, Lry;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void
.end method
