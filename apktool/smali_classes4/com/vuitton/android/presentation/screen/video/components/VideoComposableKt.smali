.class public abstract Lcom/vuitton/android/presentation/screen/video/components/VideoComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/video/models/VideoViewState;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/video/VideoViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 29

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x2288dfed    # 3.7099965E-18f

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    or-int v4, p4, v4

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v4, v6

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v4, v6

    and-int/lit16 v6, v4, 0x93

    const/16 v7, 0x92

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v6, v7, :cond_3

    move v6, v9

    goto :goto_3

    :cond_3
    move v6, v8

    :goto_3
    and-int/lit8 v7, v4, 0x1

    invoke-virtual {v0, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/video/VideoViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v6

    invoke-static {v6, v0}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-static {v0}, Lcom/vuitton/android/presentation/compose/components/LifecycleEventKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v10

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v11, :cond_4

    if-ne v12, v13, :cond_6

    :cond_4
    new-instance v11, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v11}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    iput-boolean v9, v11, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->e:Z

    new-instance v12, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-direct {v12, v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    invoke-direct {v7, v11}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    iget-boolean v11, v12, Landroidx/media3/exoplayer/ExoPlayer$Builder;->A:Z

    xor-int/2addr v11, v9

    invoke-static {v11}, Lcom/google/common/base/Preconditions;->q(Z)V

    new-instance v11, Lws;

    invoke-direct {v11, v7, v5}, Lws;-><init>(Ljava/lang/Object;I)V

    iput-object v11, v12, Landroidx/media3/exoplayer/ExoPlayer$Builder;->d:Lcom/google/common/base/Supplier;

    new-instance v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;

    invoke-direct {v5}, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;-><init>()V

    iget-boolean v7, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->o:Z

    xor-int/2addr v7, v9

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->q(Z)V

    const-string v7, "backBufferDurationMs"

    const-string v11, "0"

    const v14, 0xea60

    invoke-static {v14, v8, v7, v11}, Landroidx/media3/exoplayer/DefaultLoadControl;->k(IILjava/lang/String;Ljava/lang/String;)V

    iput v14, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->m:I

    iput-boolean v9, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->n:Z

    iget-boolean v7, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->o:Z

    xor-int/2addr v7, v9

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-boolean v9, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->o:Z

    iget-object v7, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->b:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    if-nez v7, :cond_5

    new-instance v7, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    const/high16 v8, 0x10000

    invoke-direct {v7, v9, v8}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object v7, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->b:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    :cond_5
    new-instance v14, Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object v15, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->b:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    iget v7, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->m:I

    iget-boolean v8, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->n:Z

    iget-object v11, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->a:Ljava/util/HashMap;

    move/from16 p3, v9

    iget v9, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->c:I

    iget v1, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->d:I

    move/from16 v17, v1

    iget v1, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->e:I

    move/from16 v18, v1

    iget v1, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->f:I

    move/from16 v19, v1

    iget v1, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->g:I

    move/from16 v20, v1

    iget v1, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->h:I

    move/from16 v21, v1

    iget v1, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->i:I

    move/from16 v22, v1

    iget v1, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->j:I

    move/from16 v23, v1

    iget v1, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->k:I

    iget-boolean v5, v5, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->l:Z

    move/from16 v24, v1

    move/from16 v25, v5

    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v16, v9

    move-object/from16 v28, v11

    invoke-direct/range {v14 .. v28}, Landroidx/media3/exoplayer/DefaultLoadControl;-><init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIIIIIZIZLjava/util/Map;)V

    iget-boolean v1, v12, Landroidx/media3/exoplayer/ExoPlayer$Builder;->A:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    new-instance v1, Lws;

    move/from16 v5, p3

    invoke-direct {v1, v14, v5}, Lws;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v12, Landroidx/media3/exoplayer/ExoPlayer$Builder;->f:Lcom/google/common/base/Supplier;

    invoke-virtual {v12}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->a()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v12, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/video/models/VideoViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/video/models/VideoViewState;->a:Ljava/lang/String;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/video/models/VideoViewState;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/video/models/VideoViewState;->b:Ljava/lang/String;

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v7, :cond_7

    if-ne v8, v13, :cond_8

    :cond_7
    new-instance v8, Lcom/vuitton/android/presentation/screen/video/components/VideoComposableKt$VideoComposable$1$1;

    invoke-direct {v8, v12, v6, v9}, Lcom/vuitton/android/presentation/screen/video/components/VideoComposableKt$VideoComposable$1$1;-><init>(Landroidx/media3/exoplayer/ExoPlayer;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v5, v8, v0}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v1

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_9

    if-ne v5, v13, :cond_a

    :cond_9
    new-instance v5, Lcom/vuitton/android/presentation/screen/video/components/VideoComposableKt$VideoComposable$2$1;

    invoke-direct {v5, v10, v12, v9}, Lcom/vuitton/android/presentation/screen/video/components/VideoComposableKt$VideoComposable$2$1;-><init>(Landroidx/lifecycle/Lifecycle$Event;Landroidx/media3/exoplayer/ExoPlayer;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v10, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/video/components/VideoComposableKt$VideoComposable$3;

    invoke-direct {v1, v3}, Lcom/vuitton/android/presentation/screen/video/components/VideoComposableKt$VideoComposable$3;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v12, v1}, Landroidx/media3/common/Player;->Y(Landroidx/media3/common/Player$Listener;)V

    and-int/lit8 v1, v4, 0x70

    invoke-static {v12, v2, v0, v1}, Lcom/vuitton/android/presentation/screen/video/components/VideoPlayerComponentKt;->a(Landroidx/media3/exoplayer/ExoPlayer;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_c

    new-instance v0, Lr31;

    const/4 v5, 0x7

    move-object/from16 v1, p0

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lr31;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/Function;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method
