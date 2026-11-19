.class public abstract Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailPlayerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u00a8\u0006\u0003\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "containerWidthPx",
        "titleNaturalWidthPx",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;JLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    const-string v1, "TrackDetailPlayer"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x2aa3403e

    move-object/from16 v4, p14

    invoke-static {v13, v14, v4, v3}, La;->c(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int v4, p15, v4

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_1

    :cond_2
    const/16 v8, 0x10

    :goto_1
    or-int/2addr v4, v8

    move-wide/from16 v11, p2

    invoke-virtual {v3, v11, v12}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v8

    const/16 v15, 0x80

    const/16 v16, 0x100

    if-eqz v8, :cond_3

    move/from16 v8, v16

    goto :goto_2

    :cond_3
    move v8, v15

    :goto_2
    or-int/2addr v4, v8

    move-object/from16 v8, p4

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x800

    goto :goto_3

    :cond_4
    const/16 v17, 0x400

    :goto_3
    or-int v4, v4, v17

    move-object/from16 v5, p5

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x4000

    goto :goto_4

    :cond_5
    const/16 v17, 0x2000

    :goto_4
    or-int v4, v4, v17

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_6

    const/high16 v9, 0x20000

    goto :goto_5

    :cond_6
    const/high16 v9, 0x10000

    :goto_5
    or-int/2addr v4, v9

    move-object/from16 v9, p7

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/high16 v17, 0x100000

    goto :goto_6

    :cond_7
    const/high16 v17, 0x80000

    :goto_6
    or-int v4, v4, v17

    move-object/from16 v10, p8

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/high16 v18, 0x800000

    goto :goto_7

    :cond_8
    const/high16 v18, 0x400000

    :goto_7
    or-int v4, v4, v18

    move-object/from16 v6, p9

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/high16 v18, 0x4000000

    goto :goto_8

    :cond_9
    const/high16 v18, 0x2000000

    :goto_8
    or-int v4, v4, v18

    move/from16 v18, v4

    move-object/from16 v4, p10

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/high16 v19, 0x20000000

    goto :goto_9

    :cond_a
    const/high16 v19, 0x10000000

    :goto_9
    or-int v4, v18, v19

    move-object/from16 v5, p11

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x4

    goto :goto_a

    :cond_b
    const/16 v18, 0x2

    :goto_a
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    const/16 v17, 0x20

    goto :goto_b

    :cond_c
    const/16 v17, 0x10

    :goto_b
    or-int v17, v18, v17

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    move/from16 v15, v16

    :cond_d
    or-int v15, v17, v15

    const v16, 0x12492493

    and-int v5, v4, v16

    const v6, 0x12492492

    const/16 p0, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_f

    and-int/lit16 v5, v15, 0x93

    const/16 v6, 0x92

    if-eq v5, v6, :cond_e

    goto :goto_c

    :cond_e
    move v5, v8

    goto :goto_d

    :cond_f
    :goto_c
    move/from16 v5, p0

    :goto_d
    and-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_17

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->f:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    invoke-static {v5, v3}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideExtKt;->a(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    move-result-object v5

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v16, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v6, v9, v3, v8}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v6

    iget-wide v8, v3, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    move/from16 v16, v8

    invoke-static {v3, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v27, v0

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v10, v3, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v10, :cond_16

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v3, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_10

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_10
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_e
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v6, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v9, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v0, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v8, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-wide v8, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->a:J

    move-wide/from16 v17, v8

    iget-wide v8, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->b:J

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;->Transcript:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    if-ne v7, v0, :cond_11

    move/from16 v21, p0

    goto :goto_f

    :cond_11
    const/16 v21, 0x0

    :goto_f
    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->e:Ljava/util/List;

    if-eqz v0, :cond_13

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    move/from16 v6, p0

    if-ne v0, v6, :cond_12

    const v0, -0x6240273e

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt;->a(Landroidx/compose/runtime/Composer;)Z

    move-result v0

    xor-int/2addr v0, v6

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v22, v0

    goto :goto_11

    :cond_12
    const/4 v10, 0x0

    goto :goto_10

    :cond_13
    const/4 v10, 0x0

    move/from16 v6, p0

    :goto_10
    const v0, 0x1a3b4453

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v22, v10

    :goto_11
    shr-int/lit8 v0, v4, 0x9

    and-int/lit8 v0, v0, 0x7e

    const/high16 v16, 0x380000

    and-int v16, v4, v16

    or-int v25, v0, v16

    move-object/from16 v16, p5

    move-object/from16 v23, p7

    move-object/from16 v24, v3

    move-wide/from16 v19, v8

    move v0, v15

    move-object/from16 v15, p4

    invoke-static/range {v15 .. v25}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailPlayerKt;->b(Ljava/lang/String;Ljava/lang/String;JJZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v23, v24

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {v23 .. v23}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v3, v1, v8, v9}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v8

    iget-wide v12, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->d:J

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->c:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->PLAYING:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    if-ne v1, v3, :cond_14

    move v14, v6

    goto :goto_12

    :cond_14
    move v14, v10

    :goto_12
    sget-object v1, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;->ListeningQueue:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    if-ne v7, v1, :cond_15

    move v15, v6

    goto :goto_13

    :cond_15
    move v15, v10

    :goto_13
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->e:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    and-int/lit16 v3, v4, 0x380

    shr-int/lit8 v9, v4, 0x3

    const/high16 v10, 0x1c00000

    and-int/2addr v10, v9

    or-int/2addr v3, v10

    const/high16 v10, 0xe000000

    and-int/2addr v9, v10

    or-int/2addr v3, v9

    shl-int/lit8 v9, v0, 0x1b

    const/high16 v10, 0x70000000

    and-int/2addr v9, v10

    or-int v24, v3, v9

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v3, v4, 0xf

    and-int/lit16 v3, v3, 0x380

    or-int v25, v0, v3

    const/16 v26, 0x0

    move-wide/from16 v10, p2

    move-object/from16 v22, p8

    move-object/from16 v17, p9

    move-object/from16 v18, p10

    move-object/from16 v19, p11

    move-object/from16 v20, p12

    move-object/from16 v21, p13

    move-object/from16 v16, v1

    move-object v9, v5

    invoke-static/range {v8 .. v26}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;JJZZLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_16
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_17
    move-object/from16 v27, v0

    move-object v0, v3

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_14
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_18

    move-object v1, v0

    new-instance v0, Lj41;

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p15

    move-object/from16 v28, v1

    move-object/from16 v1, v27

    invoke-direct/range {v0 .. v15}, Lj41;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;JLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    move-object/from16 v1, v28

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;JJZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 40

    move-wide/from16 v2, p2

    move/from16 v0, p6

    move/from16 v1, p7

    move-object/from16 v4, p8

    const v5, 0x703f6fb

    move-object/from16 v6, p9

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    iget-object v5, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v6, p10, 0x6

    if-nez v6, :cond_1

    move-object/from16 v6, p0

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int v7, p10, v7

    goto :goto_1

    :cond_1
    move-object/from16 v6, p0

    move/from16 v7, p10

    :goto_1
    and-int/lit8 v8, p10, 0x30

    if-nez v8, :cond_3

    move-object/from16 v8, p1

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x20

    goto :goto_2

    :cond_2
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v7, v10

    goto :goto_3

    :cond_3
    move-object/from16 v8, p1

    :goto_3
    invoke-virtual {v12, v2, v3}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x100

    goto :goto_4

    :cond_4
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v7, v10

    move-wide/from16 v10, p4

    invoke-virtual {v12, v10, v11}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v13

    if-eqz v13, :cond_5

    const/16 v13, 0x800

    goto :goto_5

    :cond_5
    const/16 v13, 0x400

    :goto_5
    or-int/2addr v7, v13

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x4000

    goto :goto_6

    :cond_6
    const/16 v13, 0x2000

    :goto_6
    or-int/2addr v7, v13

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    if-eqz v13, :cond_7

    const/high16 v13, 0x20000

    goto :goto_7

    :cond_7
    const/high16 v13, 0x10000

    :goto_7
    or-int/2addr v7, v13

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/high16 v13, 0x100000

    goto :goto_8

    :cond_8
    const/high16 v13, 0x80000

    :goto_8
    or-int/2addr v7, v13

    const v13, 0x92493

    and-int/2addr v13, v7

    const v15, 0x92492

    move-object/from16 p9, v5

    const/4 v5, 0x0

    if-eq v13, v15, :cond_9

    const/4 v13, 0x1

    goto :goto_9

    :cond_9
    move v13, v5

    :goto_9
    and-int/lit8 v15, v7, 0x1

    invoke-virtual {v12, v15, v13}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v13

    if-eqz v13, :cond_19

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v13, "TrackDetailTitle-Y0xEhic"

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v13, v15}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v14

    iget v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v20, 0x0

    const/16 v21, 0x8

    move/from16 v18, v4

    move/from16 v17, v9

    move/from16 v19, v14

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v14, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v9, v14, v12, v5}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v9

    iget-wide v5, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v12, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz p9, :cond_18

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_a

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_a
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_a
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v9, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v6, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v4, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v15

    iget v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v35, 0x0

    const/16 v36, 0xb

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v31, v4

    move/from16 v34, v15

    invoke-static/range {v31 .. v36}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v15, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {v15, v4, v0, v1}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v2, 0x0

    invoke-static {v1, v0, v12, v2}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v0

    iget-wide v1, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v12, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz p9, :cond_17

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v4, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v4, :cond_b

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_b
    invoke-static {v12, v0, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12, v2, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1, v12, v6, v12, v5}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "audioGuide_trackDetailLabel_text"

    invoke-static {v12, v3, v10, v13, v0}, Ln00;->f(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    sget-object v2, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v19, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    and-int/lit8 v2, v7, 0xe

    shr-int/lit8 v3, v7, 0x3

    and-int/lit16 v4, v3, 0x380

    or-int v26, v2, v4

    const/16 v27, 0x6180

    const v28, 0x1aff8

    move-object v4, v10

    move-object v2, v11

    const-wide/16 v10, 0x0

    move-object/from16 v25, v12

    const/4 v12, 0x0

    move-object/from16 v20, v13

    move-object/from16 v18, v14

    const-wide/16 v13, 0x0

    move-object/from16 v21, v15

    const/4 v15, 0x0

    const/16 v24, 0x0

    const/16 v16, 0x0

    move-object/from16 v31, v18

    const/high16 v32, 0x3f800000    # 1.0f

    const-wide/16 v17, 0x0

    move-object/from16 v33, v20

    const/16 v20, 0x0

    move-object/from16 v34, v21

    const/16 v21, 0x1

    const/16 v35, 0x10

    const/16 v22, 0x0

    const/high16 v36, 0x100000

    const/16 v23, 0x0

    move-object/from16 v24, v1

    move/from16 v32, v7

    move-object/from16 v1, v31

    move-object/from16 v37, v34

    move-object v7, v0

    move/from16 v31, v3

    move-object v3, v6

    move-object/from16 v0, v33

    move-object/from16 v6, p0

    move-object/from16 v33, v4

    move-object v4, v9

    move-wide/from16 v8, p4

    invoke-static/range {v6 .. v28}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v12, v25

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v7, :cond_c

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_c

    :cond_c
    const/16 v30, 0x0

    :goto_c
    check-cast v6, Landroidx/compose/runtime/MutableIntState;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v7, :cond_d

    invoke-static/range {v30 .. v30}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v8, Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v8}, Landroidx/compose/runtime/IntState;->f()I

    move-result v9

    invoke-interface {v6}, Landroidx/compose/runtime/IntState;->f()I

    move-result v10

    const/4 v11, 0x1

    if-gt v11, v10, :cond_e

    if-ge v10, v9, :cond_e

    move v9, v11

    goto :goto_d

    :cond_e
    const/4 v9, 0x0

    :goto_d
    new-instance v13, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v13, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v15, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    const/16 v17, 0x0

    const/16 v18, 0xd

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v10, v13}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v7, :cond_f

    new-instance v13, Lq1;

    const/16 v14, 0xf

    invoke-direct {v13, v6, v14}, Lq1;-><init>(Landroidx/compose/runtime/MutableIntState;I)V

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v13}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    new-instance v10, Le31;

    const/16 v13, 0x8

    invoke-direct {v10, v13}, Le31;-><init>(I)V

    const/4 v13, 0x0

    invoke-static {v6, v9, v10, v12, v13}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v9, v13}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    iget-wide v14, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v12, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    if-eqz p9, :cond_16

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_10

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_10
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_e
    invoke-static {v12, v9, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12, v14, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v12, v3, v12, v5}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v4, v33

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v12, v6, v4, v0, v1}, Ln00;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/16 v2, 0x3f

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroidx/compose/foundation/BasicMarqueeKt;->a(Landroidx/compose/ui/Modifier;Lsc;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v2, "audioGuide_trackDetailTitle_text"

    invoke-static {v1, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->d:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v7, :cond_11

    new-instance v3, Lq1;

    const/16 v4, 0x10

    invoke-direct {v3, v8, v4}, Lq1;-><init>(Landroidx/compose/runtime/MutableIntState;I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object/from16 v17, v3

    check-cast v17, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v3, v31, 0xe

    move/from16 v4, v32

    and-int/lit16 v5, v4, 0x380

    or-int v20, v3, v5

    const v21, 0x186000

    const v22, 0xbff8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v7

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v29, v11

    move-object/from16 v25, v12

    const-wide/16 v11, 0x0

    move/from16 v30, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v38, v0

    move-object/from16 v18, v2

    move-object/from16 v39, v3

    move-object/from16 v19, v25

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    invoke-static/range {v0 .. v22}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-wide v0, v2

    move-object/from16 v12, v19

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-eqz p7, :cond_15

    const v3, 0x4174930f

    move-object/from16 v4, v38

    invoke-static {v12, v3, v4}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Vertical;

    move-object/from16 v5, v37

    invoke-virtual {v5, v3, v4}, Landroidx/compose/foundation/layout/RowScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v10, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v11, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const-string v4, "audioGuide_trackDetailTranscript_button"

    invoke-static {v3, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/high16 v3, 0x380000

    and-int v3, v32, v3

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_12

    move v4, v2

    goto :goto_f

    :cond_12
    const/4 v4, 0x0

    :goto_f
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v4, :cond_14

    move-object/from16 v4, v39

    if-ne v3, v4, :cond_13

    goto :goto_10

    :cond_13
    move-object/from16 v5, p8

    goto :goto_11

    :cond_14
    :goto_10
    new-instance v3, Lw11;

    const/4 v4, 0x6

    move-object/from16 v5, p8

    invoke-direct {v3, v5, v4}, Lw11;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_11
    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function0;

    new-instance v3, Lk41;

    move/from16 v4, p6

    invoke-direct {v3, v0, v1, v4}, Lk41;-><init>(JZ)V

    const v8, 0x50befd7e

    invoke-static {v8, v3, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    const/high16 v13, 0x180000

    const/16 v14, 0x3c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v14}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_15
    move/from16 v4, p6

    move-object/from16 v5, p8

    const/4 v13, 0x0

    const v3, 0x4182466b

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_16
    const/4 v3, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_17
    const/4 v3, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_18
    const/4 v3, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_19
    move-object/from16 v5, p8

    move v4, v0

    move-wide v0, v2

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_13
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_1a

    new-instance v0, Ll41;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v8, p7

    move/from16 v10, p10

    move v7, v4

    move-object v9, v5

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v10}, Ll41;-><init>(Ljava/lang/String;Ljava/lang/String;JJZZLkotlin/jvm/functions/Function0;I)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1a
    return-void
.end method
