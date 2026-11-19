.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/ExpandedPodcastKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/animation/SharedTransitionScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v12, p12

    if-eqz v0, :cond_0

    const-string v1, "ExpandedPodcast"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v15, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x21a83c10

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v12, 0x6

    const/4 v2, 0x4

    if-nez v1, :cond_2

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v12

    goto :goto_1

    :cond_2
    move v1, v12

    :goto_1
    and-int/lit8 v4, v12, 0x30

    if-nez v4, :cond_4

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    goto :goto_3

    :cond_4
    move-object/from16 v4, p1

    :goto_3
    and-int/lit16 v5, v12, 0x180

    if-nez v5, :cond_6

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x100

    goto :goto_4

    :cond_5
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    goto :goto_5

    :cond_6
    move-object/from16 v5, p2

    :goto_5
    and-int/lit16 v6, v12, 0xc00

    if-nez v6, :cond_8

    move-object/from16 v6, p3

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x800

    goto :goto_6

    :cond_7
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v1, v7

    goto :goto_7

    :cond_8
    move-object/from16 v6, p3

    :goto_7
    and-int/lit16 v7, v12, 0x6000

    move-object/from16 v14, p4

    if-nez v7, :cond_a

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v7, 0x4000

    goto :goto_8

    :cond_9
    const/16 v7, 0x2000

    :goto_8
    or-int/2addr v1, v7

    :cond_a
    const/high16 v7, 0x30000

    and-int/2addr v7, v12

    if-nez v7, :cond_c

    move-object/from16 v7, p5

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/high16 v8, 0x20000

    goto :goto_9

    :cond_b
    const/high16 v8, 0x10000

    :goto_9
    or-int/2addr v1, v8

    goto :goto_a

    :cond_c
    move-object/from16 v7, p5

    :goto_a
    const/high16 v8, 0x180000

    and-int/2addr v8, v12

    if-nez v8, :cond_e

    move-object/from16 v8, p6

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/high16 v9, 0x100000

    goto :goto_b

    :cond_d
    const/high16 v9, 0x80000

    :goto_b
    or-int/2addr v1, v9

    goto :goto_c

    :cond_e
    move-object/from16 v8, p6

    :goto_c
    const/high16 v9, 0xc00000

    and-int/2addr v9, v12

    if-nez v9, :cond_10

    move-object/from16 v9, p7

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const/high16 v10, 0x800000

    goto :goto_d

    :cond_f
    const/high16 v10, 0x400000

    :goto_d
    or-int/2addr v1, v10

    goto :goto_e

    :cond_10
    move-object/from16 v9, p7

    :goto_e
    const/high16 v10, 0x6000000

    and-int/2addr v10, v12

    if-nez v10, :cond_12

    move-object/from16 v10, p8

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const/high16 v11, 0x4000000

    goto :goto_f

    :cond_11
    const/high16 v11, 0x2000000

    :goto_f
    or-int/2addr v1, v11

    goto :goto_10

    :cond_12
    move-object/from16 v10, p8

    :goto_10
    const/high16 v11, 0x30000000

    and-int/2addr v11, v12

    if-nez v11, :cond_14

    move-object/from16 v11, p9

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    const/high16 v13, 0x20000000

    goto :goto_11

    :cond_13
    const/high16 v13, 0x10000000

    :goto_11
    or-int/2addr v1, v13

    :goto_12
    move-object/from16 v13, p10

    goto :goto_13

    :cond_14
    move-object/from16 v11, p9

    goto :goto_12

    :goto_13
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    goto :goto_14

    :cond_15
    const/4 v2, 0x2

    :goto_14
    const v16, 0x12492493

    and-int v3, v1, v16

    move/from16 p11, v1

    const v1, 0x12492492

    const/16 v16, 0x1

    if-ne v3, v1, :cond_17

    and-int/lit8 v1, v2, 0x3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    goto :goto_15

    :cond_16
    const/4 v1, 0x0

    goto :goto_16

    :cond_17
    :goto_15
    move/from16 v1, v16

    :goto_16
    and-int/lit8 v2, p11, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Landroid/content/Context;

    sget-object v1, Landroidx/compose/material3/RippleKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/PodcastComposableKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/RippleConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    new-instance v13, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/a;

    move-object/from16 v25, p10

    move-object/from16 v22, v4

    move-object/from16 v21, v5

    move-object/from16 v16, v6

    move-object/from16 v23, v7

    move-object/from16 v18, v8

    move-object/from16 v17, v9

    move-object/from16 v20, v10

    move-object/from16 v24, v11

    invoke-direct/range {v13 .. v25}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/a;-><init>(Landroidx/compose/animation/SharedTransitionScope;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/AnimatedVisibilityScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    const v2, -0x4c2768d0

    invoke-static {v2, v13, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v1, v2, v0, v3}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_17

    :cond_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_17
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_19

    new-instance v0, Lf3;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object v1, v15

    invoke-direct/range {v0 .. v12}, Lf3;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/animation/SharedTransitionScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void
.end method
