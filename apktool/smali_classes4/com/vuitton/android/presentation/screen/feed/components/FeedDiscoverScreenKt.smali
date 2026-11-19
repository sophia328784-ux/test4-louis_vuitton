.class public abstract Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverScreenKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;ZLandroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lqb0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ld1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->c:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x1667b125

    move-object/from16 v5, p13

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int v5, p14, v5

    move/from16 v9, p1

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x20

    goto :goto_1

    :cond_1
    const/16 v8, 0x10

    :goto_1
    or-int/2addr v5, v8

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x100

    goto :goto_2

    :cond_2
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v5, v8

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x800

    goto :goto_3

    :cond_3
    const/16 v8, 0x400

    :goto_3
    or-int/2addr v5, v8

    move-object/from16 v8, p4

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/16 v14, 0x4000

    goto :goto_4

    :cond_4
    const/16 v14, 0x2000

    :goto_4
    or-int/2addr v5, v14

    move-object/from16 v14, p5

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/high16 v15, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v15, 0x10000

    :goto_5
    or-int/2addr v5, v15

    move-object/from16 v15, p6

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/high16 v16, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v16, 0x80000

    :goto_6
    or-int v5, v5, v16

    move-object/from16 v6, p7

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/high16 v16, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v16, 0x400000

    :goto_7
    or-int v5, v5, v16

    move-object/from16 v7, p8

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/high16 v17, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v17, 0x2000000

    :goto_8
    or-int v5, v5, v17

    move-object/from16 v10, p9

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/high16 v18, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v18, 0x10000000

    :goto_9
    or-int v5, v5, v18

    move-object/from16 v11, p10

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v16, 0x4

    :goto_a
    move-object/from16 v12, p11

    goto :goto_b

    :cond_a
    const/16 v16, 0x2

    goto :goto_a

    :goto_b
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    const/16 v17, 0x20

    goto :goto_c

    :cond_b
    const/16 v17, 0x10

    :goto_c
    or-int v16, v16, v17

    move-object/from16 v13, p12

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v17, 0x100

    :goto_d
    move/from16 p13, v5

    goto :goto_e

    :cond_c
    const/16 v17, 0x80

    goto :goto_d

    :goto_e
    or-int v5, v16, v17

    const v16, 0x12492493

    and-int v6, p13, v16

    const v7, 0x12492492

    const/4 v8, 0x0

    if-ne v6, v7, :cond_e

    and-int/lit16 v6, v5, 0x93

    const/16 v7, 0x92

    if-eq v6, v7, :cond_d

    goto :goto_f

    :cond_d
    move v6, v8

    goto :goto_10

    :cond_e
    :goto_f
    const/4 v6, 0x1

    :goto_10
    and-int/lit8 v7, p13, 0x1

    invoke-virtual {v2, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_12

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v6, 0x3

    invoke-static {v8, v2, v6}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v6

    instance-of v7, v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Loading;

    if-eqz v7, :cond_f

    const v0, -0x4cb4242c

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2, v8}, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverLoadingScreenKt;->a(Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_11

    :cond_f
    instance-of v7, v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Error;

    if-eqz v7, :cond_10

    const v0, -0x4cb2c97b

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v0, p13, 0x6

    and-int/lit8 v0, v0, 0x7e

    invoke-static {v3, v4, v2, v0}, Lcom/vuitton/android/presentation/screen/feed/components/FeedErrorScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_11

    :cond_10
    instance-of v7, v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    if-eqz v7, :cond_11

    const v7, -0x4caf6882

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;->a:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->a:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/model/common/mapper/FeatureThemeMapperKt;->a(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;)Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-result-object v0

    move/from16 v16, v8

    iget-boolean v8, v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->m:Z

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->h:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    shl-int/lit8 v17, p13, 0x9

    const v18, 0xe000

    and-int v17, v17, v18

    shl-int/lit8 v19, p13, 0x6

    const/high16 v20, 0x380000

    and-int v20, v19, v20

    or-int v17, v17, v20

    const/high16 v20, 0x1c00000

    and-int v20, v19, v20

    or-int v17, v17, v20

    const/high16 v20, 0xe000000

    and-int v20, v19, v20

    or-int v17, v17, v20

    const/high16 v20, 0x70000000

    and-int v19, v19, v20

    or-int v21, v17, v19

    shr-int/lit8 v17, p13, 0x18

    and-int/lit8 v17, v17, 0xe

    shl-int/lit8 v19, v5, 0x3

    and-int/lit8 v19, v19, 0x70

    or-int v17, v17, v19

    move-object/from16 v19, v0

    shr-int/lit8 v0, p13, 0x15

    and-int/lit16 v0, v0, 0x380

    or-int v0, v17, v0

    shl-int/lit8 v5, v5, 0x6

    move/from16 p13, v0

    and-int/lit16 v0, v5, 0x1c00

    or-int v0, p13, v0

    and-int v5, v5, v18

    or-int v22, v0, v5

    const/16 v23, 0x0

    move-object/from16 v17, p9

    move-object/from16 v20, v2

    move-object v5, v6

    move-object/from16 v18, v12

    move-object v12, v14

    move/from16 v0, v16

    move-object/from16 v6, v19

    move-object/from16 v14, p7

    move-object/from16 v16, v11

    move-object/from16 v19, v13

    move-object v13, v15

    move-object/from16 v11, p4

    move-object/from16 v15, p8

    invoke-static/range {v5 .. v23}, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt;->a(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_11

    :cond_11
    move v0, v8

    const v1, -0x1b3fa196

    invoke-static {v2, v1, v0}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_12
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_11
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_13

    new-instance v0, Lkx;

    move/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lkx;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;ZLandroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lqb0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ld1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void
.end method
