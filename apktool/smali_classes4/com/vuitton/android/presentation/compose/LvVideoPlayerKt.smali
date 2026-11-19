.class public abstract Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u00a8\u0006\u0011\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00038\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0006\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00078\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\t\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00078\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u000b\u001a\u00020\n8\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0010\u0010\u000c\u001a\u0004\u0018\u00010\n8\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\r\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u000f\u001a\u00020\u000e8\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0010\u001a\u00020\u000e8\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "manualPlayAndWasPlaying",
        "manualPlayIntern",
        "Landroidx/media3/common/Player$Listener;",
        "listener",
        "shouldShowPlaceholder",
        "shouldShowError",
        "Landroid/util/AttributeSet;",
        "attrs",
        "hasNotifiedReady",
        "",
        "currentRes",
        "nextRes",
        "showNext",
        "",
        "currentAlpha",
        "nextAlpha",
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
.method public static final a(Landroidx/compose/ui/Modifier;IILjava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v2, p1

    if-eqz v0, :cond_0

    const-string v1, "LocalLvVideoPlayerWithFade"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    const v0, -0x13a53b60

    move-object/from16 v3, p7

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v0

    const/16 v3, 0x20

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    :goto_0
    or-int v0, p8, v0

    const v4, 0xc00d80

    or-int/2addr v0, v4

    move-object/from16 v7, p6

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v5, 0x4000000

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    const/high16 v4, 0x2000000

    :goto_1
    or-int/2addr v0, v4

    const/high16 v4, 0x30000000

    or-int/2addr v0, v4

    const v4, 0x12492493

    and-int/2addr v4, v0

    const v8, 0x12492492

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v4, v8, :cond_3

    move v4, v9

    goto :goto_2

    :cond_3
    move v4, v10

    :goto_2
    and-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v8, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v13, :cond_4

    new-instance v8, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-direct {v8, v4}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->a()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v8

    invoke-interface {v8, v10}, Landroidx/media3/common/Player;->E0(I)V

    invoke-interface {v8, v9}, Landroidx/media3/common/Player;->P(Z)V

    invoke-interface {v8}, Landroidx/media3/common/Player;->d0()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/media3/common/TrackSelectionParameters;->a()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v11

    invoke-virtual {v11, v9, v9}, Landroidx/media3/common/TrackSelectionParameters$Builder;->m(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/media3/common/TrackSelectionParameters$Builder;->b()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v11

    invoke-interface {v8, v11}, Landroidx/media3/common/Player;->F0(Landroidx/media3/common/TrackSelectionParameters;)V

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v8, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v13, :cond_5

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v11}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v11, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    const/4 v14, 0x0

    if-ne v12, v13, :cond_6

    invoke-static {v14}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v15, v12

    check-cast v15, Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    and-int/lit8 v9, v0, 0x70

    if-ne v9, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    move v3, v10

    :goto_3
    or-int v3, v16, v3

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_8

    if-ne v9, v13, :cond_9

    :cond_8
    new-instance v9, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$1$1;

    invoke-direct {v9, v8, v4, v2, v14}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$1$1;-><init>(Landroidx/media3/exoplayer/ExoPlayer;Landroid/content/Context;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v12, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/high16 v3, 0xe000000

    and-int/2addr v0, v3

    if-ne v0, v5, :cond_a

    const/4 v9, 0x1

    goto :goto_4

    :cond_a
    move v9, v10

    :goto_4
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v9

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_b

    if-ne v3, v13, :cond_c

    :cond_b
    new-instance v7, Ls0;

    const/4 v12, 0x5

    move-object/from16 v9, p6

    move-object v10, v11

    move/from16 v11, p4

    invoke-direct/range {v7 .. v12}, Ls0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v7

    :cond_c
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v3, v6}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_e

    if-ne v3, v13, :cond_d

    goto :goto_5

    :cond_d
    move/from16 v0, p5

    goto :goto_6

    :cond_e
    :goto_5
    new-instance v3, Ls0;

    move/from16 v0, p5

    invoke-direct {v3, v0, v4, v15, v8}, Ls0;-><init>(ZLandroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/media3/exoplayer/ExoPlayer;)V

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_6
    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/16 v7, 0x30

    const/4 v8, 0x4

    const/4 v5, 0x0

    move-object v4, v1

    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->a(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    const/4 v3, 0x4

    const-string v4, "#000000"

    goto :goto_7

    :cond_f
    move/from16 v0, p5

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v3, p2

    move-object/from16 v4, p3

    :goto_7
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_10

    new-instance v0, Lfb0;

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lfb0;-><init>(Landroidx/compose/ui/Modifier;IILjava/lang/String;ZZLkotlin/jvm/functions/Function0;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/media3/exoplayer/ExoPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/String;Landroidx/compose/ui/layout/ContentScale;ZZZZLjava/lang/Boolean;ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;IIII)V
    .locals 52

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v1, p22

    move/from16 v4, p23

    move/from16 v5, p25

    const-string v6, "LvVideoPlayer"

    if-eqz v0, :cond_0

    invoke-static {v0, v6}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0x51e537eb

    move-object/from16 v8, p21

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    iget-object v8, v7, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v9, v5, 0x1

    if-eqz v9, :cond_1

    or-int/lit8 v12, v1, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v12, v1, 0x6

    if-nez v12, :cond_3

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x4

    goto :goto_0

    :cond_2
    const/4 v12, 0x2

    :goto_0
    or-int/2addr v12, v1

    goto :goto_1

    :cond_3
    move v12, v1

    :goto_1
    and-int/lit8 v13, v1, 0x30

    if-nez v13, :cond_5

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x20

    goto :goto_2

    :cond_4
    const/16 v13, 0x10

    :goto_2
    or-int/2addr v12, v13

    :cond_5
    and-int/lit16 v13, v1, 0x180

    const/16 v16, 0x80

    if-nez v13, :cond_7

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x100

    goto :goto_3

    :cond_6
    move/from16 v13, v16

    :goto_3
    or-int/2addr v12, v13

    :cond_7
    and-int/lit8 v13, v5, 0x8

    const/16 v17, 0x400

    if-eqz v13, :cond_9

    or-int/lit16 v12, v12, 0xc00

    :cond_8
    move-object/from16 v15, p3

    goto :goto_5

    :cond_9
    and-int/lit16 v15, v1, 0xc00

    if-nez v15, :cond_8

    move-object/from16 v15, p3

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v19, 0x800

    goto :goto_4

    :cond_a
    move/from16 v19, v17

    :goto_4
    or-int v12, v12, v19

    :goto_5
    and-int/lit8 v19, v5, 0x10

    const/16 v20, 0x2000

    if-eqz v19, :cond_c

    or-int/lit16 v12, v12, 0x6000

    :cond_b
    move-object/from16 v14, p4

    goto :goto_7

    :cond_c
    and-int/lit16 v14, v1, 0x6000

    if-nez v14, :cond_b

    move-object/from16 v14, p4

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    const/16 v23, 0x4000

    goto :goto_6

    :cond_d
    move/from16 v23, v20

    :goto_6
    or-int v12, v12, v23

    :goto_7
    and-int/lit8 v23, v5, 0x20

    const/high16 v24, 0x10000

    const/high16 v26, 0x30000

    if-eqz v23, :cond_f

    or-int v12, v12, v26

    move/from16 v10, p5

    :cond_e
    const/high16 v27, 0x20000

    goto :goto_9

    :cond_f
    and-int v27, v1, v26

    move/from16 v10, p5

    if-nez v27, :cond_e

    const/high16 v27, 0x20000

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v28

    if-eqz v28, :cond_10

    move/from16 v28, v27

    goto :goto_8

    :cond_10
    move/from16 v28, v24

    :goto_8
    or-int v12, v12, v28

    :goto_9
    and-int/lit8 v28, v5, 0x40

    const/high16 v29, 0x80000

    const/high16 v30, 0x100000

    const/high16 v31, 0x180000

    if-eqz v28, :cond_11

    or-int v12, v12, v31

    move-object/from16 v11, p6

    goto :goto_b

    :cond_11
    and-int v32, v1, v31

    move-object/from16 v11, p6

    if-nez v32, :cond_13

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_12

    move/from16 v33, v30

    goto :goto_a

    :cond_12
    move/from16 v33, v29

    :goto_a
    or-int v12, v12, v33

    :cond_13
    :goto_b
    move-object/from16 v33, v0

    and-int/lit16 v0, v5, 0x80

    const/high16 v34, 0x400000

    move/from16 v35, v0

    const/high16 v36, 0xc00000

    if-eqz v35, :cond_14

    or-int v12, v12, v36

    move-object/from16 v0, p7

    goto :goto_d

    :cond_14
    and-int v37, v1, v36

    move-object/from16 v0, p7

    if-nez v37, :cond_16

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_15

    const/high16 v38, 0x800000

    goto :goto_c

    :cond_15
    move/from16 v38, v34

    :goto_c
    or-int v12, v12, v38

    :cond_16
    :goto_d
    and-int/lit16 v0, v5, 0x100

    const/high16 v38, 0x2000000

    move/from16 v39, v0

    const/high16 v40, 0x6000000

    if-eqz v39, :cond_17

    or-int v12, v12, v40

    move/from16 v0, p8

    goto :goto_f

    :cond_17
    and-int v41, v1, v40

    move/from16 v0, p8

    if-nez v41, :cond_19

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v42

    if-eqz v42, :cond_18

    const/high16 v42, 0x4000000

    goto :goto_e

    :cond_18
    move/from16 v42, v38

    :goto_e
    or-int v12, v12, v42

    :cond_19
    :goto_f
    and-int/lit16 v0, v5, 0x200

    const/high16 v42, 0x10000000

    move/from16 v43, v0

    const/high16 v44, 0x30000000

    if-eqz v43, :cond_1a

    or-int v12, v12, v44

    move/from16 v0, p9

    goto :goto_11

    :cond_1a
    and-int v45, v1, v44

    move/from16 v0, p9

    if-nez v45, :cond_1c

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v46

    if-eqz v46, :cond_1b

    const/high16 v46, 0x20000000

    goto :goto_10

    :cond_1b
    move/from16 v46, v42

    :goto_10
    or-int v12, v12, v46

    :cond_1c
    :goto_11
    and-int/lit16 v0, v5, 0x400

    if-eqz v0, :cond_1d

    or-int/lit8 v46, v4, 0x6

    move/from16 v47, v46

    move/from16 v46, v0

    move/from16 v0, p10

    goto :goto_13

    :cond_1d
    and-int/lit8 v46, v4, 0x6

    if-nez v46, :cond_1f

    move/from16 v46, v0

    move/from16 v0, p10

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v47

    if-eqz v47, :cond_1e

    const/16 v47, 0x4

    goto :goto_12

    :cond_1e
    const/16 v47, 0x2

    :goto_12
    or-int v47, v4, v47

    goto :goto_13

    :cond_1f
    move/from16 v46, v0

    move/from16 v0, p10

    move/from16 v47, v4

    :goto_13
    and-int/lit16 v0, v5, 0x800

    if-eqz v0, :cond_20

    or-int/lit8 v47, v47, 0x30

    move/from16 v48, v0

    :goto_14
    move/from16 v0, v47

    goto :goto_16

    :cond_20
    and-int/lit8 v48, v4, 0x30

    if-nez v48, :cond_22

    move/from16 v48, v0

    move/from16 v0, p11

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v49

    if-eqz v49, :cond_21

    const/16 v49, 0x20

    goto :goto_15

    :cond_21
    const/16 v49, 0x10

    :goto_15
    or-int v47, v47, v49

    goto :goto_14

    :cond_22
    move/from16 v48, v0

    move/from16 v0, p11

    goto :goto_14

    :goto_16
    and-int/lit16 v1, v5, 0x1000

    if-eqz v1, :cond_23

    or-int/lit16 v0, v0, 0x180

    goto :goto_17

    :cond_23
    move/from16 v47, v0

    and-int/lit16 v0, v4, 0x180

    if-nez v0, :cond_25

    move-object/from16 v0, p12

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_24

    const/16 v16, 0x100

    :cond_24
    or-int v16, v47, v16

    move/from16 v0, v16

    goto :goto_17

    :cond_25
    move-object/from16 v0, p12

    move/from16 v0, v47

    :goto_17
    move/from16 v16, v1

    and-int/lit16 v1, v5, 0x2000

    if-eqz v1, :cond_26

    or-int/lit16 v0, v0, 0xc00

    goto :goto_18

    :cond_26
    move/from16 v47, v0

    and-int/lit16 v0, v4, 0xc00

    if-nez v0, :cond_28

    move/from16 v0, p13

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v49

    if-eqz v49, :cond_27

    const/16 v17, 0x800

    :cond_27
    or-int v17, v47, v17

    move/from16 v0, v17

    goto :goto_18

    :cond_28
    move/from16 v0, p13

    move/from16 v0, v47

    :goto_18
    move/from16 v17, v1

    and-int/lit16 v1, v5, 0x4000

    if-eqz v1, :cond_2a

    or-int/lit16 v0, v0, 0x6000

    move/from16 v47, v0

    :cond_29
    move/from16 v0, p14

    goto :goto_19

    :cond_2a
    move/from16 v47, v0

    and-int/lit16 v0, v4, 0x6000

    if-nez v0, :cond_29

    move/from16 v0, p14

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v49

    if-eqz v49, :cond_2b

    const/16 v20, 0x4000

    :cond_2b
    or-int v20, v47, v20

    move/from16 v47, v20

    :goto_19
    const v20, 0x8000

    and-int v20, v5, v20

    if-eqz v20, :cond_2c

    or-int v47, v47, v26

    move-object/from16 v0, p15

    goto :goto_1b

    :cond_2c
    and-int v26, v4, v26

    move-object/from16 v0, p15

    if-nez v26, :cond_2e

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2d

    move/from16 v26, v27

    goto :goto_1a

    :cond_2d
    move/from16 v26, v24

    :goto_1a
    or-int v47, v47, v26

    :cond_2e
    :goto_1b
    and-int v24, v5, v24

    if-eqz v24, :cond_2f

    or-int v47, v47, v31

    move-object/from16 v0, p16

    goto :goto_1d

    :cond_2f
    and-int v26, v4, v31

    move-object/from16 v0, p16

    if-nez v26, :cond_31

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_30

    move/from16 v26, v30

    goto :goto_1c

    :cond_30
    move/from16 v26, v29

    :goto_1c
    or-int v47, v47, v26

    :cond_31
    :goto_1d
    and-int v26, v5, v27

    if-eqz v26, :cond_32

    or-int v47, v47, v36

    move-object/from16 v0, p17

    goto :goto_1e

    :cond_32
    and-int v31, v4, v36

    move-object/from16 v0, p17

    if-nez v31, :cond_34

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_33

    const/high16 v34, 0x800000

    :cond_33
    or-int v47, v47, v34

    :cond_34
    :goto_1e
    const/high16 v31, 0x40000

    and-int v31, v5, v31

    if-eqz v31, :cond_35

    or-int v47, v47, v40

    move-object/from16 v0, p18

    goto :goto_1f

    :cond_35
    and-int v34, v4, v40

    move-object/from16 v0, p18

    if-nez v34, :cond_37

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_36

    const/high16 v38, 0x4000000

    :cond_36
    or-int v47, v47, v38

    :cond_37
    :goto_1f
    and-int v29, v5, v29

    if-eqz v29, :cond_39

    or-int v47, v47, v44

    :cond_38
    :goto_20
    move/from16 v0, v47

    goto :goto_21

    :cond_39
    and-int v34, v4, v44

    move-object/from16 v0, p19

    if-nez v34, :cond_38

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3a

    const/high16 v42, 0x20000000

    :cond_3a
    or-int v47, v47, v42

    goto :goto_20

    :goto_21
    and-int v30, v5, v30

    if-eqz v30, :cond_3b

    const/16 v34, 0x6

    move/from16 v36, v34

    move/from16 v34, v1

    move-object/from16 v1, p20

    goto :goto_23

    :cond_3b
    and-int/lit8 v34, p24, 0x6

    if-nez v34, :cond_3d

    move/from16 v34, v1

    move-object/from16 v1, p20

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3c

    const/16 v36, 0x4

    goto :goto_22

    :cond_3c
    const/16 v36, 0x2

    :goto_22
    or-int v36, p24, v36

    goto :goto_23

    :cond_3d
    move/from16 v34, v1

    move-object/from16 v1, p20

    move/from16 v36, p24

    :goto_23
    const v38, 0x12492493

    and-int v1, v12, v38

    const v3, 0x12492492

    const/4 v10, 0x0

    if-ne v1, v3, :cond_3f

    and-int v1, v0, v38

    if-ne v1, v3, :cond_3f

    and-int/lit8 v1, v36, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3e

    goto :goto_24

    :cond_3e
    move v1, v10

    goto :goto_25

    :cond_3f
    :goto_24
    const/4 v1, 0x1

    :goto_25
    and-int/lit8 v3, v12, 0x1

    invoke-virtual {v7, v3, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_7f

    if-eqz v9, :cond_40

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_26

    :cond_40
    move-object/from16 v1, v33

    :goto_26
    const/4 v3, 0x0

    if-eqz v13, :cond_41

    move-object/from16 v32, v3

    goto :goto_27

    :cond_41
    move-object/from16 v32, v15

    :goto_27
    if-eqz v19, :cond_42

    move-object/from16 v33, v3

    goto :goto_28

    :cond_42
    move-object/from16 v33, v14

    :goto_28
    if-eqz v23, :cond_43

    move/from16 v38, v10

    goto :goto_29

    :cond_43
    move/from16 v38, p5

    :goto_29
    if-eqz v28, :cond_44

    move-object/from16 v40, v3

    goto :goto_2a

    :cond_44
    move-object/from16 v40, v11

    :goto_2a
    if-eqz v35, :cond_45

    sget-object v9, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/layout/ContentScale$Companion;->d:Landroidx/compose/ui/layout/ContentScale$Companion$FillHeight$1;

    move-object/from16 v35, v9

    goto :goto_2b

    :cond_45
    move-object/from16 v35, p7

    :goto_2b
    if-eqz v39, :cond_46

    const/16 v39, 0x1

    goto :goto_2c

    :cond_46
    move/from16 v39, p8

    :goto_2c
    if-eqz v43, :cond_47

    move/from16 v42, v10

    goto :goto_2d

    :cond_47
    move/from16 v42, p9

    :goto_2d
    if-eqz v46, :cond_48

    const/16 v43, 0x1

    goto :goto_2e

    :cond_48
    move/from16 v43, p10

    :goto_2e
    if-eqz v48, :cond_49

    move/from16 v44, v10

    goto :goto_2f

    :cond_49
    move/from16 v44, p11

    :goto_2f
    if-eqz v16, :cond_4a

    move-object v9, v3

    goto :goto_30

    :cond_4a
    move-object/from16 v9, p12

    :goto_30
    if-eqz v17, :cond_4b

    const/16 v46, 0x1

    goto :goto_31

    :cond_4b
    move/from16 v46, p13

    :goto_31
    if-eqz v34, :cond_4c

    move/from16 v34, v10

    goto :goto_32

    :cond_4c
    move/from16 v34, p14

    :goto_32
    if-eqz v20, :cond_4d

    move-object/from16 v47, v3

    goto :goto_33

    :cond_4d
    move-object/from16 v47, p15

    :goto_33
    if-eqz v24, :cond_4e

    move-object/from16 v48, v3

    goto :goto_34

    :cond_4e
    move-object/from16 v48, p16

    :goto_34
    if-eqz v26, :cond_4f

    move-object/from16 v49, v3

    goto :goto_35

    :cond_4f
    move-object/from16 v49, p17

    :goto_35
    if-eqz v31, :cond_50

    move-object v11, v3

    goto :goto_36

    :cond_50
    move-object/from16 v11, p18

    :goto_36
    if-eqz v29, :cond_51

    move-object/from16 v31, v3

    goto :goto_37

    :cond_51
    move-object/from16 v31, p19

    :goto_37
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v30, :cond_53

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v13, :cond_52

    new-instance v14, Lfa0;

    const/16 v15, 0x9

    invoke-direct {v14, v15}, Lfa0;-><init>(I)V

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_52
    check-cast v14, Lkotlin/jvm/functions/Function0;

    move-object/from16 v50, v14

    goto :goto_38

    :cond_53
    move-object/from16 v50, p20

    :goto_38
    sget-object v14, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v14, Landroidx/compose/ui/platform/InspectionModeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_56

    const v0, 0x4174c4f1

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v0, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v0, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    iget-wide v12, v7, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v7, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v8, :cond_55

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v3, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v3, :cond_54

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_39

    :cond_54
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_39
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v13, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v14, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    sget-object v6, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v6, v0, v3}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v29, 0x0

    const v30, 0x3fffc

    const-string v8, "This is a video"

    move v6, v10

    move-object v3, v11

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x6

    move-object/from16 v27, v9

    move-object v9, v0

    move-object/from16 v0, v27

    move/from16 v27, v6

    move-object v6, v3

    move/from16 v3, v27

    move-object/from16 v27, v7

    const/4 v7, 0x1

    invoke-static/range {v8 .. v30}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v9, v27

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v5, v0

    move-object/from16 v19, v1

    move-object v11, v6

    move-object/from16 v25, v31

    move-object/from16 v31, v32

    move/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v0, v38

    move/from16 v10, v39

    move-object/from16 v3, v40

    move/from16 v14, v42

    move/from16 v21, v43

    move/from16 v23, v44

    move/from16 v4, v46

    move-object/from16 v6, v47

    move-object/from16 v7, v48

    move-object/from16 v24, v49

    move-object/from16 v26, v50

    goto/16 :goto_55

    :cond_55
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_56
    move v14, v10

    move-object v10, v9

    move-object v9, v7

    const/4 v7, 0x1

    const v15, 0x417c726a

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v15, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Context;

    sget-object v7, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v9}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    move-object/from16 v16, v3

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_57

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_57
    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v13, :cond_5a

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_59

    if-eqz v43, :cond_58

    goto :goto_3a

    :cond_58
    const/4 v14, 0x0

    goto :goto_3b

    :cond_59
    :goto_3a
    const/4 v14, 0x1

    :goto_3b
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v14}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5a
    check-cast v14, Landroidx/compose/runtime/MutableState;

    move-object/from16 v19, v3

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_5c

    sget-object v3, Lcom/vuitton/android/presentation/di/AppModule;->a:Lcom/vuitton/android/presentation/CacheFactory;

    if-eqz v3, :cond_5b

    iget-object v3, v3, Lcom/vuitton/android/presentation/CacheFactory;->b:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    goto :goto_3c

    :cond_5b
    move-object/from16 v3, v16

    :goto_3c
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5c
    check-cast v3, Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v13, :cond_5d

    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5d
    check-cast v4, Landroidx/compose/runtime/MutableState;

    move-object/from16 p13, v4

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v13, :cond_60

    if-nez v40, :cond_5f

    if-eqz v47, :cond_5e

    goto :goto_3d

    :cond_5e
    const/4 v4, 0x0

    goto :goto_3e

    :cond_5f
    :goto_3d
    const/4 v4, 0x1

    :goto_3e
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_60
    check-cast v4, Landroidx/compose/runtime/MutableState;

    move-object/from16 p18, v4

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v13, :cond_61

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_61
    check-cast v4, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    and-int/lit8 v2, v36, 0xe

    move-object/from16 p15, v4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_62

    const/4 v2, 0x1

    goto :goto_3f

    :cond_62
    const/4 v2, 0x0

    :goto_3f
    or-int v2, v20, v2

    const/high16 v4, 0x1c00000

    and-int/2addr v4, v0

    move/from16 p3, v2

    const/high16 v2, 0x800000

    if-ne v4, v2, :cond_63

    const/4 v2, 0x1

    goto :goto_40

    :cond_63
    const/4 v2, 0x0

    :goto_40
    or-int v2, p3, v2

    const/high16 p3, 0x70000000

    and-int v4, v0, p3

    move/from16 p4, v2

    const/high16 v2, 0x20000000

    if-ne v4, v2, :cond_64

    const/4 v2, 0x1

    goto :goto_41

    :cond_64
    const/4 v2, 0x0

    :goto_41
    or-int v2, p4, v2

    and-int/lit16 v4, v12, 0x380

    move/from16 p4, v2

    const/16 v2, 0x100

    if-ne v4, v2, :cond_65

    const/4 v2, 0x1

    goto :goto_42

    :cond_65
    const/4 v2, 0x0

    :goto_42
    or-int v2, p4, v2

    and-int/lit16 v4, v12, 0x1c00

    move/from16 p4, v2

    const/16 v2, 0x800

    if-ne v4, v2, :cond_66

    const/4 v2, 0x1

    goto :goto_43

    :cond_66
    const/4 v2, 0x0

    :goto_43
    or-int v2, p4, v2

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    and-int v4, v12, p3

    move/from16 p3, v2

    const/high16 v2, 0x20000000

    if-ne v4, v2, :cond_67

    const/4 v2, 0x1

    goto :goto_44

    :cond_67
    const/4 v2, 0x0

    :goto_44
    or-int v2, p3, v2

    and-int/lit8 v4, v0, 0xe

    move/from16 p3, v2

    const/4 v2, 0x4

    if-ne v4, v2, :cond_68

    const/4 v2, 0x1

    goto :goto_45

    :cond_68
    const/4 v2, 0x0

    :goto_45
    or-int v2, p3, v2

    const/high16 v18, 0xe000000

    and-int v4, v12, v18

    move/from16 p3, v2

    const/high16 v2, 0x4000000

    if-ne v4, v2, :cond_69

    const/4 v2, 0x1

    goto :goto_46

    :cond_69
    const/4 v2, 0x0

    :goto_46
    or-int v2, p3, v2

    and-int/lit16 v4, v0, 0x380

    move/from16 v20, v0

    const/16 v0, 0x100

    if-ne v4, v0, :cond_6a

    const/4 v0, 0x1

    goto :goto_47

    :cond_6a
    const/4 v0, 0x0

    :goto_47
    or-int/2addr v0, v2

    and-int/lit8 v2, v20, 0x70

    const/16 v4, 0x20

    if-ne v2, v4, :cond_6b

    const/4 v2, 0x1

    goto :goto_48

    :cond_6b
    const/4 v2, 0x0

    :goto_48
    or-int/2addr v0, v2

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_6d

    if-ne v2, v13, :cond_6c

    goto :goto_49

    :cond_6c
    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v30, p15

    move-object/from16 v29, p18

    move-object/from16 v28, v8

    move-object v5, v10

    move-object v8, v14

    move-object/from16 v25, v31

    move-object/from16 v4, v32

    move/from16 v10, v39

    move/from16 v14, v42

    move/from16 v21, v43

    move/from16 v23, v44

    move-object/from16 v24, v49

    move-object/from16 v26, v50

    goto :goto_4a

    :cond_6d
    :goto_49
    new-instance v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;

    const/4 v2, 0x0

    move-object/from16 p4, p1

    move-object/from16 p5, p2

    move-object/from16 p3, v0

    move-object/from16 p20, v2

    move-object/from16 p7, v3

    move-object/from16 p11, v10

    move-object/from16 p19, v14

    move-object/from16 p17, v31

    move-object/from16 p6, v32

    move/from16 p10, v39

    move/from16 p8, v42

    move/from16 p9, v43

    move/from16 p12, v44

    move-object/from16 p16, v49

    move-object/from16 p14, v50

    invoke-direct/range {p3 .. p20}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;-><init>(Landroidx/media3/exoplayer/ExoPlayer;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/datasource/cache/CacheDataSource$Factory;ZZZLjava/lang/Boolean;ZLandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v2, p3

    move-object/from16 v0, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v14, p8

    move/from16 v21, p9

    move/from16 v10, p10

    move-object/from16 v5, p11

    move/from16 v23, p12

    move-object/from16 v26, p14

    move-object/from16 v30, p15

    move-object/from16 v24, p16

    move-object/from16 v25, p17

    move-object/from16 v29, p18

    move-object/from16 v28, v8

    move-object/from16 v8, p19

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_4a
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v4, v2, v9}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    if-nez v5, :cond_6e

    const v2, 0x41c33dc9

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v31, v4

    goto :goto_4d

    :cond_6e
    const v2, 0x41c33dca

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v31

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v32

    or-int v31, v31, v32

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v31, :cond_70

    if-ne v3, v13, :cond_6f

    goto :goto_4b

    :cond_6f
    move-object/from16 v31, v4

    goto :goto_4c

    :cond_70
    :goto_4b
    new-instance v3, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;

    move-object/from16 v31, v4

    move-object/from16 v4, v16

    invoke-direct {v3, v2, v0, v8, v4}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;-><init>(ZLandroidx/media3/exoplayer/ExoPlayer;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_4c
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v5, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_4d
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_71

    new-instance v2, Lgb0;

    move-object/from16 p4, v0

    move-object/from16 p3, v2

    move-object/from16 p7, v8

    move-object/from16 p8, v19

    move/from16 p5, v21

    move/from16 p6, v23

    invoke-direct/range {p3 .. p8}, Lgb0;-><init>(Landroidx/media3/exoplayer/ExoPlayer;ZZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_71
    check-cast v2, Landroidx/lifecycle/LifecycleEventObserver;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v4, v8

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v4, v8

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v4, :cond_72

    if-ne v8, v13, :cond_73

    :cond_72
    new-instance v8, Ljx;

    const/16 v4, 0x12

    invoke-direct {v8, v7, v2, v0, v4}, Ljx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_73
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v8, v9}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    if-eqz v33, :cond_74

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v7, 0x1

    invoke-static {v1, v2, v7}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v2

    goto :goto_4e

    :cond_74
    move-object v2, v1

    :goto_4e
    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget-wide v7, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v9, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v28, :cond_7e

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v19, v1

    iget-boolean v1, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v1, :cond_75

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4f

    :cond_75
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_4f
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v3, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v7, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v2, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result v1

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_76

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_76
    check-cast v2, Landroidx/compose/runtime/MutableState;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    and-int v4, v20, v18

    const/high16 v6, 0x4000000

    if-ne v4, v6, :cond_77

    const/4 v4, 0x1

    goto :goto_50

    :cond_77
    const/4 v4, 0x0

    :goto_50
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_78

    if-ne v6, v13, :cond_79

    :cond_78
    new-instance v6, Lt30;

    const/16 v4, 0xb

    invoke-direct {v6, v11, v0, v4}, Lt30;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_79
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/16 v4, 0xe

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 p3, v3

    move/from16 p8, v4

    move-object/from16 p7, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move/from16 p4, v46

    invoke-static/range {p3 .. p8}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move/from16 v4, p4

    const/high16 v6, 0x70000

    and-int/2addr v6, v12

    move/from16 v7, v27

    if-ne v6, v7, :cond_7a

    const/4 v6, 0x1

    goto :goto_51

    :cond_7a
    const/4 v6, 0x0

    :goto_51
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    const v7, 0xe000

    and-int v7, v20, v7

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_7b

    const/4 v7, 0x1

    goto :goto_52

    :cond_7b
    const/4 v7, 0x0

    :goto_52
    or-int/2addr v6, v7

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_7d

    if-ne v7, v13, :cond_7c

    goto :goto_53

    :cond_7c
    move/from16 v1, v34

    move/from16 v0, v38

    goto :goto_54

    :cond_7d
    :goto_53
    new-instance v6, Lhb0;

    move-object/from16 p9, v0

    move/from16 p8, v1

    move-object/from16 p6, v2

    move-object/from16 p3, v6

    move-object/from16 p5, v15

    move/from16 p7, v34

    move/from16 p4, v38

    invoke-direct/range {p3 .. p9}, Lhb0;-><init>(ZLandroid/content/Context;Landroidx/compose/runtime/MutableState;IILandroidx/media3/exoplayer/ExoPlayer;)V

    move-object/from16 v7, p3

    move/from16 v0, p4

    move/from16 v1, p7

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_54
    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    const/4 v6, 0x4

    const/4 v8, 0x0

    move/from16 p7, v2

    move-object/from16 p4, v3

    move/from16 p8, v6

    move-object/from16 p3, v7

    move-object/from16 p5, v8

    move-object/from16 p6, v9

    invoke-static/range {p3 .. p8}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->a(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    new-instance v2, Lu1;

    move-object/from16 p3, v2

    move-object/from16 p8, v29

    move-object/from16 p9, v30

    move-object/from16 p7, v35

    move-object/from16 p4, v40

    move-object/from16 p5, v47

    move-object/from16 p6, v48

    invoke-direct/range {p3 .. p9}, Lu1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v8, p3

    move-object/from16 v3, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v2, p7

    const v12, -0x7e8f4f1b

    invoke-static {v12, v8, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    const/16 v12, 0x30

    const/4 v13, 0x0

    invoke-static {v13, v8, v9, v12}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v8, 0x1

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_55
    move v15, v1

    move-object v8, v2

    move-object v13, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v27, v9

    move v9, v10

    move v10, v14

    move-object/from16 v1, v19

    move/from16 v12, v23

    move-object/from16 v18, v24

    move-object/from16 v20, v25

    move-object/from16 v5, v33

    move v6, v0

    move-object v7, v3

    move v14, v4

    move-object/from16 v19, v11

    move/from16 v11, v21

    move-object/from16 v21, v26

    move-object/from16 v4, v31

    goto :goto_56

    :cond_7e
    const/4 v13, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v13

    :cond_7f
    move-object v9, v7

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v10, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v27, v9

    move-object v7, v11

    move-object v5, v14

    move-object v4, v15

    move-object/from16 v1, v33

    move/from16 v9, p8

    move/from16 v11, p10

    move/from16 v14, p13

    move/from16 v15, p14

    :goto_56
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_80

    move-object v2, v0

    new-instance v0, Lib0;

    move-object/from16 v3, p2

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move/from16 v25, p25

    move-object/from16 v51, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v25}, Lib0;-><init>(Landroidx/compose/ui/Modifier;Landroidx/media3/exoplayer/ExoPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/String;Landroidx/compose/ui/layout/ContentScale;ZZZZLjava/lang/Boolean;ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IIII)V

    move-object/from16 v2, v51

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_80
    return-void
.end method
