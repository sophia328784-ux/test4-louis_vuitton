.class public abstract Lcom/vuitton/android/presentation/screen/feed/components/FeedForYouScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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
.method public static final a(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;ZLandroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lqb0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ld1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->d:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, -0x64023d92

    move-object/from16 v5, p17

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int v5, p18, v5

    move/from16 v8, p1

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x20

    goto :goto_1

    :cond_1
    const/16 v9, 0x10

    :goto_1
    or-int/2addr v5, v9

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x100

    goto :goto_2

    :cond_2
    const/16 v9, 0x80

    :goto_2
    or-int/2addr v5, v9

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x800

    goto :goto_3

    :cond_3
    const/16 v9, 0x400

    :goto_3
    or-int/2addr v5, v9

    move-object/from16 v9, p4

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x2000

    const/16 v18, 0x4000

    if-eqz v16, :cond_4

    move/from16 v16, v18

    goto :goto_4

    :cond_4
    move/from16 v16, v17

    :goto_4
    or-int v5, v5, v16

    move-object/from16 v6, p5

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    const/high16 v19, 0x10000

    const/high16 v20, 0x20000

    if-eqz v16, :cond_5

    move/from16 v16, v20

    goto :goto_5

    :cond_5
    move/from16 v16, v19

    :goto_5
    or-int v5, v5, v16

    move-object/from16 v7, p6

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    const/high16 v22, 0x80000

    const/high16 v23, 0x100000

    if-eqz v21, :cond_6

    move/from16 v21, v23

    goto :goto_6

    :cond_6
    move/from16 v21, v22

    :goto_6
    or-int v5, v5, v21

    move-object/from16 v10, p7

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    const/high16 v24, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v24, 0x400000

    :goto_7
    or-int v5, v5, v24

    move-object/from16 v11, p8

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    const/high16 v25, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v25, 0x2000000

    :goto_8
    or-int v5, v5, v25

    move-object/from16 v12, p9

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    const/high16 v26, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v26, 0x10000000

    :goto_9
    or-int v5, v5, v26

    move-object/from16 v13, p10

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    const/16 v16, 0x4

    :goto_a
    move-object/from16 v13, p11

    goto :goto_b

    :cond_a
    const/16 v16, 0x2

    goto :goto_a

    :goto_b
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    const/16 v21, 0x20

    goto :goto_c

    :cond_b
    const/16 v21, 0x10

    :goto_c
    or-int v16, v16, v21

    move-object/from16 v14, p12

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    const/16 v25, 0x100

    goto :goto_d

    :cond_c
    const/16 v25, 0x80

    :goto_d
    or-int v16, v16, v25

    move-object/from16 v15, p13

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    const/16 v21, 0x800

    goto :goto_e

    :cond_d
    const/16 v21, 0x400

    :goto_e
    or-int v16, v16, v21

    move/from16 p17, v5

    move-object/from16 v5, p14

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    move/from16 v17, v18

    :cond_e
    or-int v16, v16, v17

    move-object/from16 v5, p15

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    move/from16 v19, v20

    :cond_f
    or-int v16, v16, v19

    move-object/from16 v5, p16

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    move/from16 v22, v23

    :cond_10
    or-int v5, v16, v22

    const v16, 0x12492493

    and-int v6, p17, v16

    const v7, 0x12492492

    const/4 v8, 0x0

    if-ne v6, v7, :cond_12

    const v6, 0x92493

    and-int/2addr v6, v5

    const v7, 0x92492

    if-eq v6, v7, :cond_11

    goto :goto_f

    :cond_11
    move v6, v8

    goto :goto_10

    :cond_12
    :goto_f
    const/4 v6, 0x1

    :goto_10
    and-int/lit8 v7, p17, 0x1

    invoke-virtual {v4, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_16

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v6, 0x3

    invoke-static {v8, v4, v6}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v6

    instance-of v7, v3, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Loading;

    if-eqz v7, :cond_13

    const v3, -0x20acc329

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->n:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->o:Ljava/lang/String;

    invoke-static {v3, v5, v4, v8}, Lcom/vuitton/android/presentation/screen/feed/components/FeedForYouLoadingScreenKt;->a(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    move-object v0, v4

    goto/16 :goto_12

    :cond_13
    instance-of v7, v3, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Error;

    if-eqz v7, :cond_14

    const v3, -0x20a9dacc

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v3, p17, 0x6

    and-int/lit8 v3, v3, 0x7e

    invoke-static {v0, v2, v4, v3}, Lcom/vuitton/android/presentation/screen/feed/components/FeedErrorScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_11

    :cond_14
    instance-of v7, v3, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    if-eqz v7, :cond_15

    const v7, -0x20a6488a

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    check-cast v3, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;->a:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    shl-int/lit8 v7, p17, 0x3

    and-int/lit8 v7, v7, 0x70

    shr-int/lit8 v8, p17, 0x3

    and-int/lit16 v0, v8, 0x1c00

    or-int/2addr v0, v7

    const v7, 0xe000

    and-int v17, v8, v7

    or-int v0, v0, v17

    const/high16 v17, 0x70000

    and-int v18, v8, v17

    or-int v0, v0, v18

    const/high16 v18, 0x380000

    and-int v8, v8, v18

    or-int/2addr v0, v8

    shl-int/lit8 v8, p17, 0x12

    const/high16 v19, 0x1c00000

    and-int v8, v8, v19

    or-int/2addr v0, v8

    const/high16 v8, 0xe000000

    and-int v8, p17, v8

    or-int/2addr v0, v8

    const/high16 v8, 0x70000000

    and-int v8, p17, v8

    or-int/2addr v0, v8

    shr-int/lit8 v8, v5, 0x12

    and-int/lit8 v8, v8, 0xe

    shl-int/lit8 v19, v5, 0x3

    and-int/lit8 v20, v19, 0x70

    or-int v8, v8, v20

    move/from16 p17, v7

    and-int/lit16 v7, v5, 0x380

    or-int/2addr v7, v8

    shl-int/lit8 v5, v5, 0x6

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v5, v7

    and-int v7, v19, p17

    or-int/2addr v5, v7

    and-int v7, v19, v17

    or-int/2addr v5, v7

    and-int v7, v19, v18

    or-int v19, v5, v7

    const/16 v20, 0x0

    move/from16 v7, p1

    move-object/from16 v5, p6

    move-object/from16 v16, p15

    move/from16 v18, v0

    move-object v2, v3

    move-object/from16 v17, v4

    move-object v0, v6

    move-object v3, v9

    move-object v6, v10

    move-object v8, v11

    move-object v9, v12

    move-object v12, v14

    move-object v14, v15

    move-object/from16 v4, p5

    move-object/from16 v11, p10

    move-object/from16 v15, p14

    move-object/from16 v10, p16

    invoke-static/range {v0 .. v20}, Lcom/vuitton/android/presentation/screen/feed/components/FeedForYouSuccessScreenKt;->a(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v0, v17

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_15
    move-object v0, v4

    move v1, v8

    const v2, -0x6c68ae90

    invoke-static {v0, v2, v1}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_16
    move-object v0, v4

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_12
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_17

    move-object v1, v0

    new-instance v0, Lsx;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p18

    move-object/from16 v28, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v18}, Lsx;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;ZLandroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lqb0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ld1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    move-object/from16 v1, v28

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method
