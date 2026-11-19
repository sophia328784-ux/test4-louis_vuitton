.class public abstract Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u00a8\u0006\u0010\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00038\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0006\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00078\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\t\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u000b\u001a\u00020\n8\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u000c\u001a\u00020\u00058\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\r\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u000f\u001a\u00020\u000e8\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "sliderPositionMs",
        "latestDurationMs",
        "Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;",
        "tooltipContent",
        "",
        "isDraggingSlider",
        "Lkotlinx/coroutines/Job;",
        "skipTooltipJob",
        "isSliderExpanded",
        "Landroidx/compose/ui/unit/Dp;",
        "trackHeight",
        "isDragged",
        "isPressed",
        "",
        "sliderWidthPx",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;JJZZLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p16

    move/from16 v2, p17

    const-string v3, "AudioPlayerControls"

    if-eqz v0, :cond_0

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, -0x1c9b0567

    move-object/from16 v5, p15

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    and-int/lit8 v5, p18, 0x1

    if-eqz v5, :cond_1

    or-int/lit8 v8, v1, 0x6

    :goto_0
    move-object/from16 v11, p1

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x4

    goto :goto_1

    :cond_2
    const/4 v8, 0x2

    :goto_1
    or-int/2addr v8, v1

    goto :goto_0

    :goto_2
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x20

    goto :goto_3

    :cond_3
    const/16 v9, 0x10

    :goto_3
    or-int/2addr v8, v9

    and-int/lit16 v9, v1, 0x180

    move-wide/from16 v6, p2

    if-nez v9, :cond_5

    invoke-virtual {v4, v6, v7}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x100

    goto :goto_4

    :cond_4
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v8, v9

    :cond_5
    and-int/lit16 v9, v1, 0xc00

    move-wide/from16 v10, p4

    if-nez v9, :cond_7

    invoke-virtual {v4, v10, v11}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v15

    if-eqz v15, :cond_6

    const/16 v15, 0x800

    goto :goto_5

    :cond_6
    const/16 v15, 0x400

    :goto_5
    or-int/2addr v8, v15

    :cond_7
    and-int/lit16 v15, v1, 0x6000

    if-nez v15, :cond_9

    move/from16 v15, p6

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v17, 0x4000

    goto :goto_6

    :cond_8
    const/16 v17, 0x2000

    :goto_6
    or-int v8, v8, v17

    goto :goto_7

    :cond_9
    move/from16 v15, p6

    :goto_7
    and-int/lit8 v17, p18, 0x20

    if-eqz v17, :cond_a

    const/high16 v18, 0x30000

    or-int v8, v8, v18

    move/from16 v12, p7

    goto :goto_9

    :cond_a
    move/from16 v12, p7

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v19

    if-eqz v19, :cond_b

    const/high16 v19, 0x20000

    goto :goto_8

    :cond_b
    const/high16 v19, 0x10000

    :goto_8
    or-int v8, v8, v19

    :goto_9
    const/high16 v19, 0x180000

    and-int v19, v1, v19

    if-nez v19, :cond_d

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v13

    if-eqz v13, :cond_c

    const/high16 v13, 0x100000

    goto :goto_a

    :cond_c
    const/high16 v13, 0x80000

    :goto_a
    or-int/2addr v8, v13

    :cond_d
    const/high16 v13, 0xc00000

    and-int/2addr v13, v1

    if-nez v13, :cond_f

    move-object/from16 v13, p9

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    const/high16 v19, 0x800000

    goto :goto_b

    :cond_e
    const/high16 v19, 0x400000

    :goto_b
    or-int v8, v8, v19

    goto :goto_c

    :cond_f
    move-object/from16 v13, p9

    :goto_c
    const/high16 v19, 0x6000000

    and-int v19, v1, v19

    move-object/from16 v9, p10

    if-nez v19, :cond_11

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    const/high16 v19, 0x4000000

    goto :goto_d

    :cond_10
    const/high16 v19, 0x2000000

    :goto_d
    or-int v8, v8, v19

    :cond_11
    const/high16 v19, 0x30000000

    and-int v19, v1, v19

    move-object/from16 v14, p11

    if-nez v19, :cond_13

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    const/high16 v23, 0x20000000

    goto :goto_e

    :cond_12
    const/high16 v23, 0x10000000

    :goto_e
    or-int v8, v8, v23

    :cond_13
    and-int/lit8 v23, v2, 0x6

    if-nez v23, :cond_15

    move-object/from16 v23, v0

    move-object/from16 v0, p12

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    const/16 v24, 0x4

    goto :goto_f

    :cond_14
    const/16 v24, 0x2

    :goto_f
    or-int v24, v2, v24

    goto :goto_10

    :cond_15
    move-object/from16 v23, v0

    move-object/from16 v0, p12

    move/from16 v24, v2

    :goto_10
    and-int/lit8 v25, v2, 0x30

    move-object/from16 v0, p13

    if-nez v25, :cond_17

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_16

    const/16 v16, 0x20

    goto :goto_11

    :cond_16
    const/16 v16, 0x10

    :goto_11
    or-int v24, v24, v16

    :cond_17
    and-int/lit16 v0, v2, 0x180

    if-nez v0, :cond_19

    move-object/from16 v0, p14

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18

    const/16 v20, 0x100

    goto :goto_12

    :cond_18
    const/16 v20, 0x80

    :goto_12
    or-int v24, v24, v20

    :goto_13
    move/from16 v0, v24

    goto :goto_14

    :cond_19
    move-object/from16 v0, p14

    goto :goto_13

    :goto_14
    const v16, 0x12492493

    and-int v1, v8, v16

    const v2, 0x12492492

    const/16 v24, 0x0

    const/16 v25, 0x1

    if-ne v1, v2, :cond_1b

    and-int/lit16 v0, v0, 0x93

    const/16 v1, 0x92

    if-eq v0, v1, :cond_1a

    goto :goto_15

    :cond_1a
    move/from16 v0, v24

    goto :goto_16

    :cond_1b
    :goto_15
    move/from16 v0, v25

    :goto_16
    and-int/lit8 v1, v8, 0x1

    invoke-virtual {v4, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2b

    if-eqz v5, :cond_1c

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_17

    :cond_1c
    move-object/from16 v0, v23

    :goto_17
    if-eqz v17, :cond_1d

    move/from16 v27, v24

    goto :goto_18

    :cond_1d
    move/from16 v27, v12

    :goto_18
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_1e

    invoke-static {v6, v7}, Landroidx/compose/runtime/SnapshotLongStateKt;->a(J)Landroidx/compose/runtime/MutableLongState;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    move-object/from16 v16, v1

    check-cast v16, Landroidx/compose/runtime/MutableLongState;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v4}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    if-ne v3, v2, :cond_1f

    invoke-static {v5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_20

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v12}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v12, Landroidx/compose/runtime/MutableState;

    move-object/from16 p0, v5

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_21

    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v5, Landroidx/compose/runtime/MutableState;

    move-object/from16 p15, v0

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_22

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v4}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 p7, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v23, v5

    and-int/lit16 v5, v8, 0x380

    const/16 v6, 0x100

    if-ne v5, v6, :cond_23

    move/from16 v5, v25

    goto :goto_19

    :cond_23
    move/from16 v5, v24

    :goto_19
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_24

    if-ne v6, v2, :cond_25

    :cond_24
    new-instance v15, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt$AudioPlayerControls$7$1;

    const/16 v20, 0x0

    move-object/from16 v18, v1

    move-object/from16 v19, v16

    move-wide/from16 v16, p2

    invoke-direct/range {v15 .. v20}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt$AudioPlayerControls$7$1;-><init>(JLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v16, v19

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v6, v15

    :cond_25
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v0, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v5, 0xe000

    and-int/2addr v5, v8

    const/16 v6, 0x4000

    if-ne v5, v6, :cond_26

    move/from16 v5, v25

    goto :goto_1a

    :cond_26
    move/from16 v5, v24

    :goto_1a
    const/high16 v6, 0x380000

    and-int/2addr v6, v8

    const/high16 v7, 0x100000

    if-ne v6, v7, :cond_27

    move/from16 v24, v25

    :cond_27
    or-int v5, v5, v24

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_29

    if-ne v6, v2, :cond_28

    goto :goto_1b

    :cond_28
    move-object/from16 v1, v16

    goto :goto_1c

    :cond_29
    :goto_1b
    new-instance v17, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt$AudioPlayerControls$8$1;

    const/16 v22, 0x0

    move/from16 v18, p6

    move-object/from16 v19, p8

    move-object/from16 v21, v1

    move-object/from16 v20, v16

    invoke-direct/range {v17 .. v22}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt$AudioPlayerControls$8$1;-><init>(ZLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v6, v17

    move-object/from16 v1, v20

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1c
    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object/from16 v5, p8

    invoke-static {v0, v5, v6, v4}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_2a

    new-instance v6, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt$AudioPlayerControls$9$1;

    move-object/from16 v2, p0

    invoke-direct {v6, v12, v1, v3, v2}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt$AudioPlayerControls$9$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v0, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    new-instance v9, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;

    move/from16 v26, p6

    move-object/from16 v21, p7

    move-object/from16 v19, p13

    move-object/from16 v24, p14

    move-object/from16 v16, v1

    move-object v15, v3

    move-object/from16 v18, v5

    move-object/from16 v17, v12

    move-object/from16 v22, v13

    move-object/from16 v20, v14

    move-object/from16 v25, v23

    move-object/from16 v14, p10

    move-object/from16 v23, p12

    move-wide v12, v10

    move-object/from16 v11, p1

    move-object/from16 v10, p15

    invoke-direct/range {v9 .. v27}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;JLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;ZZ)V

    const v1, -0x2e2ac227

    invoke-static {v1, v9, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v0, v1, v4, v2}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object v1, v10

    move/from16 v8, v27

    goto :goto_1d

    :cond_2b
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->D()V

    move v8, v12

    move-object/from16 v1, v23

    :goto_1d
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2c

    move-object v2, v0

    new-instance v0, Lpb;

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v28, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v18}, Lpb;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;JJZZLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;III)V

    move-object/from16 v2, v28

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2c
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    move-wide/from16 v14, p3

    move-wide/from16 v3, p5

    move-object/from16 v1, p8

    const-string v5, "AudioTrackSlider"

    if-eqz v0, :cond_0

    invoke-static {v0, v5}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v6, -0x5501ff5c

    move-object/from16 v7, p10

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    iget-object v6, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x20

    goto :goto_0

    :cond_1
    const/16 v7, 0x10

    :goto_0
    or-int v7, p11, v7

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x100

    goto :goto_1

    :cond_2
    const/16 v8, 0x80

    :goto_1
    or-int/2addr v7, v8

    invoke-virtual {v12, v14, v15}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x800

    goto :goto_2

    :cond_3
    const/16 v8, 0x400

    :goto_2
    or-int/2addr v7, v8

    invoke-virtual {v12, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x4000

    goto :goto_3

    :cond_4
    const/16 v8, 0x2000

    :goto_3
    or-int/2addr v7, v8

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/high16 v8, 0x100000

    goto :goto_4

    :cond_5
    const/high16 v8, 0x80000

    :goto_4
    or-int/2addr v7, v8

    const v8, 0x492493

    and-int/2addr v8, v7

    const v11, 0x492492

    if-eq v8, v11, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    and-int/lit8 v11, v7, 0x1

    invoke-virtual {v12, v11, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_25

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v8, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v10, :cond_7

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v11, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v10, :cond_8

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v13}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v13, Landroidx/compose/runtime/MutableState;

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move-object/from16 v28, v6

    if-eqz v16, :cond_9

    const v6, -0x1c7f4d14

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->j:F

    :goto_6
    move/from16 v16, v6

    const/4 v6, 0x0

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_9
    const v6, -0x1c7f47f5

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->g:F

    goto :goto_6

    :goto_7
    const/high16 v6, 0x43480000    # 200.0f

    const/4 v9, 0x4

    move-object/from16 v20, v12

    const/4 v12, 0x0

    move/from16 v40, v7

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-static {v7, v6, v9, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v17

    const/16 v21, 0x1b0

    const/16 v22, 0x8

    const-string v18, "trackHeight"

    const/16 v19, 0x0

    invoke-static/range {v16 .. v22}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    move-object/from16 v7, v20

    invoke-static {v11, v7}, Landroidx/compose/foundation/interaction/DragInteractionKt;->a(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v10, :cond_a

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v12}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v12, Landroidx/compose/runtime/MutableState;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v22, v11

    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v41, v8

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v16, :cond_c

    if-ne v8, v10, :cond_b

    goto :goto_8

    :cond_b
    move-object/from16 v2, p9

    move-object/from16 v16, v6

    goto :goto_9

    :cond_c
    :goto_8
    new-instance v8, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt$AudioTrackSlider$1$1;

    move-object/from16 v2, p9

    move-object/from16 v16, v6

    const/4 v6, 0x0

    invoke-direct {v8, v9, v6, v2}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt$AudioTrackSlider$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_9
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v11, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v17, :cond_d

    if-ne v2, v10, :cond_e

    :cond_d
    new-instance v2, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt$AudioTrackSlider$2$1;

    const/4 v1, 0x0

    invoke-direct {v2, v9, v12, v13, v1}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt$AudioTrackSlider$2$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v8, v11, v2, v7}, Landroidx/compose/runtime/EffectsKt;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    long-to-float v1, v14

    long-to-float v2, v3

    const/4 v6, 0x0

    cmpl-float v8, v2, v6

    const/high16 v9, 0x3f800000    # 1.0f

    if-lez v8, :cond_f

    div-float v8, v1, v2

    invoke-static {v8, v6, v9}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v8

    goto :goto_a

    :cond_f
    move v8, v6

    :goto_a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v10, :cond_10

    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v11, Landroidx/compose/runtime/MutableIntState;

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v13

    iget v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Landroidx/compose/ui/unit/Dp;

    iget v6, v6, Landroidx/compose/ui/unit/Dp;->b:F

    const/high16 v17, 0x40000000    # 2.0f

    div-float v6, v6, v17

    sub-float/2addr v13, v6

    neg-float v6, v13

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v10, :cond_11

    new-instance v13, Lq1;

    const/4 v9, 0x1

    invoke-direct {v13, v11, v9}, Lq1;-><init>(Landroidx/compose/runtime/MutableIntState;I)V

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v13}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v13, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    move/from16 v17, v1

    move-object/from16 v42, v11

    const/4 v1, 0x0

    invoke-static {v13, v1}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    iget-wide v3, v7, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v7, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v28, :cond_24

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    move/from16 v18, v1

    iget-boolean v1, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v1, :cond_12

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_12
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_b
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v11, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v3, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v43, v13

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v3, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v44, v0

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v4, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v14, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move/from16 v31, v6

    const/4 v6, 0x0

    invoke-static {v14, v15, v7, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v14

    move-object v15, v5

    iget-wide v5, v7, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v7, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v28, :cond_23

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v18, v15

    iget-boolean v15, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_13

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_13
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_c
    invoke-static {v7, v14, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7, v6, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v7, v13, v7, v3}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v15, v18

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v7, v4, v0, v15, v5}, Ln00;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v10, :cond_14

    new-instance v6, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt$AudioTrackSlider$4$1$1$1;

    invoke-direct {v6, v12}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt$AudioTrackSlider$4$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v4, v5, v6}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v10, :cond_15

    new-instance v5, Lu5;

    const/16 v6, 0xf

    invoke-direct {v5, v6}, Lu5;-><init>(I)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    const/4 v4, 0x0

    invoke-static {v4, v2}, Lkotlin/ranges/RangesKt;->h(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v25

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_16

    new-instance v2, Lk0;

    const/4 v4, 0x3

    move-object/from16 v14, p7

    invoke-direct {v2, v14, v4}, Lk0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_d

    :cond_16
    move-object/from16 v14, p7

    :goto_d
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/high16 v4, 0x380000

    and-int v4, v40, v4

    const/high16 v5, 0x100000

    if-ne v4, v5, :cond_17

    const/4 v4, 0x1

    goto :goto_e

    :cond_17
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_19

    if-ne v5, v10, :cond_18

    goto :goto_f

    :cond_18
    move-object/from16 v6, p8

    goto :goto_10

    :cond_19
    :goto_f
    new-instance v5, Lh1;

    const/16 v4, 0xa

    move-object/from16 v6, p8

    invoke-direct {v5, v6, v4}, Lh1;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_10
    move-object/from16 v20, v5

    check-cast v20, Lkotlin/jvm/functions/Function0;

    sget-object v4, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$AudioPlayerControlsKt;->a:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$AudioPlayerControlsKt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v23, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$AudioPlayerControlsKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    new-instance v4, Lnb;

    move-object/from16 v5, p1

    move-object/from16 v12, v16

    invoke-direct {v4, v5, v8, v12}, Lnb;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;FLandroidx/compose/runtime/State;)V

    const v12, 0x271a5c4b

    invoke-static {v12, v4, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v24

    const/high16 v27, 0x36180000

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v26, v7

    move/from16 v16, v17

    move-object/from16 v17, v2

    invoke-static/range {v16 .. v27}, Landroidx/compose/material3/SliderKt;->a(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/Composer;I)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v15}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move/from16 v4, v31

    const/4 v6, 0x1

    const/4 v12, 0x0

    invoke-static {v2, v12, v4, v6}, Landroidx/compose/foundation/layout/OffsetKt;->c(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v12, 0x0

    invoke-static {v4, v6, v7, v12}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v4

    iget-wide v5, v7, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v7, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz v28, :cond_22

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_1a

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    :cond_1a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_11
    invoke-static {v7, v4, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7, v6, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v7, v13, v7, v3}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v7, v2, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v15}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, v41

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    move/from16 v3, v40

    and-int/lit16 v4, v3, 0x1c00

    const/16 v5, 0x800

    if-ne v4, v5, :cond_1b

    const/4 v4, 0x1

    goto :goto_12

    :cond_1b
    const/4 v4, 0x0

    :goto_12
    or-int/2addr v2, v4

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_1d

    if-ne v4, v10, :cond_1c

    goto :goto_13

    :cond_1c
    move-wide/from16 v5, p3

    const/4 v12, 0x0

    goto :goto_14

    :cond_1d
    :goto_13
    new-instance v4, Lob;

    move-wide/from16 v5, p3

    const/4 v12, 0x0

    invoke-direct {v4, v1, v5, v6, v12}, Lob;-><init>(Landroid/content/Context;JI)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_14
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v12, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v2, "audioGuide_trackDetailCurrentPosition_text"

    invoke-static {v0, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    invoke-static {v5, v6}, Lcom/vuitton/android/presentation/extensions/LongExtKt;->c(J)Ljava/lang/String;

    move-result-object v16

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v2, p1

    iget-wide v11, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->b:J

    const/16 v37, 0x0

    const v38, 0x1fff8

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    move-object/from16 v34, v0

    move-object/from16 v35, v7

    move-wide/from16 v18, v11

    invoke-static/range {v16 .. v38}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    move-object/from16 v4, v44

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    invoke-virtual {v0, v4, v9, v11}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v7, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const-string v0, "audioGuide_trackDetailTotalDuration_text"

    invoke-static {v15, v0}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    const v11, 0xe000

    and-int v12, v3, v11

    const/16 v13, 0x4000

    if-ne v12, v13, :cond_1e

    const/4 v12, 0x1

    goto :goto_15

    :cond_1e
    const/4 v12, 0x0

    :goto_15
    or-int/2addr v9, v12

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v9, :cond_20

    if-ne v12, v10, :cond_1f

    goto :goto_16

    :cond_1f
    move-wide/from16 v9, p5

    goto :goto_17

    :cond_20
    :goto_16
    new-instance v12, Lob;

    move-wide/from16 v9, p5

    const/4 v13, 0x1

    invoke-direct {v12, v1, v9, v10, v13}, Lob;-><init>(Landroid/content/Context;JI)V

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_17
    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-static {v0, v1, v12}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    invoke-static {v9, v10}, Lcom/vuitton/android/presentation/extensions/LongExtKt;->c(J)Ljava/lang/String;

    move-result-object v16

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    iget-wide v12, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->b:J

    const/16 v37, 0x0

    const v38, 0x1fff8

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    move-object/from16 v34, v0

    move-object/from16 v35, v7

    move-wide/from16 v18, v12

    invoke-static/range {v16 .. v38}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v15}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v12, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    move-object/from16 v15, v43

    invoke-virtual {v12, v0, v15}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v44, v4

    iget-wide v4, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->a:J

    move-object/from16 v20, v7

    iget-wide v6, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->c:J

    if-eqz p2, :cond_21

    move v1, v13

    :cond_21
    invoke-interface/range {v42 .. v42}, Landroidx/compose/runtime/IntState;->f()I

    move-result v12

    shl-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v11

    move v9, v3

    move-object v3, v0

    move v0, v13

    move v13, v9

    move-object/from16 v9, p2

    move v10, v8

    move v11, v12

    move-object/from16 v12, v20

    move v8, v1

    invoke-static/range {v3 .. v13}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt;->c(Landroidx/compose/ui/Modifier;JJZLcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;FILandroidx/compose/runtime/Composer;I)V

    move-object v7, v12

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_18

    :cond_22
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v29, 0x0

    throw v29

    :cond_23
    const/16 v29, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v29

    :cond_24
    const/16 v29, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v29

    :cond_25
    move-object/from16 v14, p7

    move-object/from16 v44, v0

    move-object v7, v12

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_18
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_26

    new-instance v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    move-object v8, v14

    move-object/from16 v1, v44

    invoke-direct/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_26
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;JJZLcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;FILandroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p10

    if-eqz v0, :cond_0

    const-string v1, "AudioTrackTooltip-qi6gXK8"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    const v0, 0xb1a3477

    move-object/from16 v2, p9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v2, v10, 0x6

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v10

    goto :goto_1

    :cond_2
    move v2, v10

    :goto_1
    and-int/lit8 v3, v10, 0x30

    move-wide/from16 v13, p1

    if-nez v3, :cond_4

    invoke-virtual {v0, v13, v14}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_2

    :cond_3
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_4
    and-int/lit16 v3, v10, 0x180

    move-wide/from16 v4, p3

    if-nez v3, :cond_6

    invoke-virtual {v0, v4, v5}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x100

    goto :goto_3

    :cond_5
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v2, v3

    :cond_6
    and-int/lit16 v3, v10, 0xc00

    move/from16 v6, p5

    if-nez v3, :cond_8

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x800

    goto :goto_4

    :cond_7
    const/16 v3, 0x400

    :goto_4
    or-int/2addr v2, v3

    :cond_8
    and-int/lit16 v3, v10, 0x6000

    if-nez v3, :cond_b

    const v3, 0x8000

    and-int/2addr v3, v10

    if-nez v3, :cond_9

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_5

    :cond_9
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    :goto_5
    if-eqz v3, :cond_a

    const/16 v3, 0x4000

    goto :goto_6

    :cond_a
    const/16 v3, 0x2000

    :goto_6
    or-int/2addr v2, v3

    :cond_b
    const/high16 v3, 0x30000

    and-int/2addr v3, v10

    if-nez v3, :cond_d

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v3

    if-eqz v3, :cond_c

    const/high16 v3, 0x20000

    goto :goto_7

    :cond_c
    const/high16 v3, 0x10000

    :goto_7
    or-int/2addr v2, v3

    :cond_d
    const/high16 v3, 0x180000

    and-int/2addr v3, v10

    if-nez v3, :cond_f

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_e

    const/high16 v3, 0x100000

    goto :goto_8

    :cond_e
    const/high16 v3, 0x80000

    :goto_8
    or-int/2addr v2, v3

    :cond_f
    const v3, 0x92493

    and-int/2addr v3, v2

    const v11, 0x92492

    if-eq v3, v11, :cond_10

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    and-int/lit8 v11, v2, 0x1

    invoke-virtual {v0, v11, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/Density;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->w:F

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v15

    iget v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->g:F

    invoke-interface {v3, v11}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v16

    int-to-float v12, v9

    mul-float v17, v8, v12

    const/high16 v18, 0x40000000    # 2.0f

    div-float v18, v16, v18

    move/from16 p9, v2

    sub-float v2, v17, v18

    sub-float v12, v12, v16

    const/4 v4, 0x0

    cmpg-float v5, v12, v4

    if-gez v5, :cond_11

    move v12, v4

    :cond_11
    invoke-static {v2, v4, v12}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v2

    invoke-interface {v3, v2}, Landroidx/compose/ui/unit/Density;->l1(F)F

    move-result v2

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    instance-of v5, v7, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent$Timecode;

    if-eqz v5, :cond_12

    move-object v5, v7

    check-cast v5, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent$Timecode;

    iget-wide v4, v5, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent$Timecode;->a:J

    invoke-static {v4, v5}, Lcom/vuitton/android/presentation/extensions/LongExtKt;->c(J)Ljava/lang/String;

    move-result-object v4

    :goto_a
    move-object/from16 v16, v4

    goto :goto_b

    :cond_12
    instance-of v4, v7, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent$Skip;

    if-eqz v4, :cond_13

    move-object v4, v7

    check-cast v4, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent$Skip;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent$Skip;->a:Ljava/lang/String;

    goto :goto_a

    :cond_13
    if-nez v7, :cond_16

    const-string v4, ""

    goto :goto_a

    :goto_b
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v4

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_14

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v4, :cond_15

    :cond_14
    new-instance v5, Lrb;

    const/4 v4, 0x0

    invoke-direct {v5, v2, v3, v4}, Lrb;-><init>(FFI)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/OffsetKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v12, 0x0

    invoke-static {v3, v12, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v5

    invoke-static {v3, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v3

    move v12, v11

    new-instance v11, Lsb;

    move-wide/from16 v17, p3

    invoke-direct/range {v11 .. v18}, Lsb;-><init>(FJFLjava/lang/String;J)V

    const v4, 0x2feb974f

    invoke-static {v4, v11, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v16

    shr-int/lit8 v4, p9, 0x9

    and-int/lit8 v4, v4, 0xe

    const v11, 0x30d80

    or-int v18, v4, v11

    const/16 v19, 0x10

    const/4 v15, 0x0

    move-object/from16 v17, v0

    move-object v12, v2

    move-object v14, v3

    move-object v13, v5

    move v11, v6

    invoke-static/range {v11 .. v19}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_c

    :cond_16
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_17
    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_c
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_18

    new-instance v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/d;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/d;-><init>(Landroidx/compose/ui/Modifier;JJZLcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;FII)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method
