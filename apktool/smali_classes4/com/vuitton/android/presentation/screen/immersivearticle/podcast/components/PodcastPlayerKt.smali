.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0008\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "sliderPosition",
        "",
        "shouldIncreaseSize",
        "",
        "textScale",
        "Landroidx/compose/ui/unit/Dp;",
        "trackPadding",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-wide/from16 v7, p2

    if-eqz v0, :cond_0

    const-string v1, "PodcastPlayer"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v9, v0

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, v13, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->d:J

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x595f8645

    move-object/from16 v3, p7

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_0

    :cond_1
    const/16 v2, 0x10

    :goto_0
    or-int v2, p8, v2

    invoke-virtual {v14, v7, v8}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_1

    :cond_2
    const/16 v3, 0x80

    :goto_1
    or-int/2addr v2, v3

    move-object/from16 v4, p4

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    goto :goto_2

    :cond_3
    const/16 v3, 0x400

    :goto_2
    or-int/2addr v2, v3

    move-object/from16 v10, p5

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x4000

    goto :goto_3

    :cond_4
    const/16 v3, 0x2000

    :goto_3
    or-int/2addr v2, v3

    move-object/from16 v11, p6

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v3, 0x20000

    goto :goto_4

    :cond_5
    const/high16 v3, 0x10000

    :goto_4
    or-int/2addr v2, v3

    const v3, 0x12493

    and-int/2addr v3, v2

    const v6, 0x12492

    if-eq v3, v6, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    and-int/lit8 v6, v2, 0x1

    invoke-virtual {v14, v6, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/content/Context;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v6, :cond_7

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotLongStateKt;->a(J)Landroidx/compose/runtime/MutableLongState;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v3, Landroidx/compose/runtime/MutableLongState;

    const-wide/16 v18, 0x7d0

    move-object/from16 p7, v6

    sub-long v5, v7, v18

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    const/4 v15, 0x0

    if-nez v1, :cond_8

    move-object/from16 v1, p7

    if-ne v12, v1, :cond_9

    goto :goto_6

    :cond_8
    move-object/from16 v1, p7

    :goto_6
    new-instance v12, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$1$1;

    invoke-direct {v12, v13, v3, v15}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$1$1;-><init>(Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;Landroidx/compose/runtime/MutableLongState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v0, v12}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v12, v13, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->b:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v14, v5, v6}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v19

    or-int v0, v0, v19

    and-int/lit16 v2, v2, 0x1c00

    const/16 v15, 0x800

    if-ne v2, v15, :cond_a

    const/16 v16, 0x1

    goto :goto_7

    :cond_a
    const/16 v16, 0x0

    :goto_7
    or-int v0, v0, v16

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_c

    if-ne v2, v1, :cond_b

    goto :goto_8

    :cond_b
    move-object v13, v1

    move-object v0, v2

    move-wide/from16 v21, v5

    move-object v5, v3

    move-wide/from16 v2, v21

    goto :goto_9

    :cond_c
    :goto_8
    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;

    move-wide/from16 v21, v5

    move-object v5, v3

    move-wide/from16 v2, v21

    const/4 v6, 0x0

    move-object/from16 v21, v13

    move-object v13, v1

    move-object/from16 v1, v21

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;-><init>(Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;JLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableLongState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_9
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v12, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_d

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    const v1, 0x3fa66666    # 1.3f

    goto :goto_a

    :cond_e
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_a
    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v6, 0x43480000    # 200.0f

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static {v4, v6, v12, v13}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v11

    move-object v15, v13

    move-object v13, v14

    const/16 v14, 0xc30

    move-object/from16 v16, v15

    const/16 v15, 0x14

    move/from16 v19, v12

    const-string v12, "textScale"

    move v10, v1

    const/4 v1, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v18

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_f

    const v10, 0x735f827f

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_b
    const/4 v1, 0x4

    const/4 v15, 0x0

    goto :goto_c

    :cond_f
    const v10, 0x736089ff

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :goto_c
    invoke-static {v4, v6, v1, v15}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v11

    const/16 v15, 0x1b0

    const/16 v16, 0x8

    const-string v12, "trackPadding"

    move-object v14, v13

    const/4 v13, 0x0

    invoke-static/range {v10 .. v16}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v10

    move-object v15, v14

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    move-object v11, v0

    new-instance v0, Lro0;

    move-object/from16 v13, p1

    move-object/from16 v4, p4

    move-object/from16 v14, p5

    move-object/from16 v12, p6

    move-object/from16 v20, v1

    move-object v1, v9

    move-object v9, v5

    move-wide v5, v2

    move-wide v2, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    invoke-direct/range {v0 .. v14}, Lro0;-><init>(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function1;JLandroid/content/Context;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;Lkotlin/jvm/functions/Function0;)V

    const v2, 0x1a015b05

    invoke-static {v2, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v2, 0x38

    move-object/from16 v3, v20

    invoke-static {v3, v0, v15, v2}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_d

    :cond_10
    move-object v1, v9

    move-object v15, v14

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_d
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_11

    new-instance v0, Lso0;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lso0;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method
