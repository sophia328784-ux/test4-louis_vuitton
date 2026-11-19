.class public abstract Lcom/vuitton/android/presentation/common/editorial/components/editorialcard/EditorialCardBackgroundKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/presentation/model/common/AssetUiModel;ZZZZZLcom/vuitton/android/presentation/compose/LvExoPlayer;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 40

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v12, p12

    const-string v1, "EditorialCardBackground"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v7, 0x7b231b75

    move-object/from16 v11, p11

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    iget-object v11, v7, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v13, v12, 0x6

    if-nez v13, :cond_2

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x4

    goto :goto_0

    :cond_1
    const/4 v13, 0x2

    :goto_0
    or-int/2addr v13, v12

    goto :goto_1

    :cond_2
    move v13, v12

    :goto_1
    and-int/lit8 v14, v12, 0x30

    if-nez v14, :cond_4

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v14

    if-eqz v14, :cond_3

    const/16 v14, 0x20

    goto :goto_2

    :cond_3
    const/16 v14, 0x10

    :goto_2
    or-int/2addr v13, v14

    :cond_4
    and-int/lit16 v14, v12, 0x180

    if-nez v14, :cond_6

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/16 v14, 0x100

    goto :goto_3

    :cond_5
    const/16 v14, 0x80

    :goto_3
    or-int/2addr v13, v14

    :cond_6
    and-int/lit16 v14, v12, 0xc00

    if-nez v14, :cond_8

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_7

    const/16 v14, 0x800

    goto :goto_4

    :cond_7
    const/16 v14, 0x400

    :goto_4
    or-int/2addr v13, v14

    :cond_8
    and-int/lit16 v14, v12, 0x6000

    if-nez v14, :cond_a

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_9

    const/16 v14, 0x4000

    goto :goto_5

    :cond_9
    const/16 v14, 0x2000

    :goto_5
    or-int/2addr v13, v14

    :cond_a
    const/high16 v14, 0x30000

    and-int/2addr v14, v12

    if-nez v14, :cond_c

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_b

    const/high16 v14, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v14, 0x10000

    :goto_6
    or-int/2addr v13, v14

    :cond_c
    const/high16 v14, 0x180000

    and-int/2addr v14, v12

    if-nez v14, :cond_e

    move/from16 v14, p6

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v15

    if-eqz v15, :cond_d

    const/high16 v15, 0x100000

    goto :goto_7

    :cond_d
    const/high16 v15, 0x80000

    :goto_7
    or-int/2addr v13, v15

    goto :goto_8

    :cond_e
    move/from16 v14, p6

    :goto_8
    const/high16 v15, 0xc00000

    and-int/2addr v15, v12

    if-nez v15, :cond_10

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v15

    if-eqz v15, :cond_f

    const/high16 v15, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v15, 0x400000

    :goto_9
    or-int/2addr v13, v15

    :cond_10
    const/high16 v15, 0x6000000

    and-int/2addr v15, v12

    if-nez v15, :cond_12

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/high16 v15, 0x4000000

    goto :goto_a

    :cond_11
    const/high16 v15, 0x2000000

    :goto_a
    or-int/2addr v13, v15

    :cond_12
    const/high16 v15, 0x30000000

    and-int/2addr v15, v12

    if-nez v15, :cond_14

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    const/high16 v15, 0x20000000

    goto :goto_b

    :cond_13
    const/high16 v15, 0x10000000

    :goto_b
    or-int/2addr v13, v15

    :cond_14
    const v15, 0x12492493

    and-int/2addr v15, v13

    const v4, 0x12492492

    move-object/from16 v16, v11

    if-ne v15, v4, :cond_15

    const/4 v4, 0x0

    goto :goto_c

    :cond_15
    const/4 v4, 0x1

    :goto_c
    and-int/lit8 v15, v13, 0x1

    invoke-virtual {v7, v15, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_24

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v11, Landroidx/compose/ui/graphics/Color;->h:J

    sget-object v15, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v11, v12, v15}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v15, 0x0

    invoke-static {v12, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    move v15, v13

    iget-wide v13, v7, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v7, v11}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v39, v0

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move/from16 v18, v13

    if-eqz v16, :cond_23

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_16

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_d

    :cond_16
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_d
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v4, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v14, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v18, v4

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v14, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v14}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move/from16 v20, v15

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v11, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v11, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v9, p3, 0x1

    move-object/from16 v21, v1

    new-instance v1, Lbw;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lbw;-><init>(FI)V

    const/4 v3, 0x6

    invoke-static {v11, v9, v1, v7, v3}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v22

    const/high16 v1, 0x70000000

    and-int v1, v20, v1

    const/high16 v11, 0x20000000

    if-ne v1, v11, :cond_17

    const/4 v11, 0x1

    goto :goto_e

    :cond_17
    const/4 v11, 0x0

    :goto_e
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    move/from16 v23, v11

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v23, :cond_19

    if-ne v3, v11, :cond_18

    goto :goto_f

    :cond_18
    move-object/from16 v29, v11

    goto :goto_10

    :cond_19
    :goto_f
    new-instance v3, Lh1;

    move-object/from16 v29, v11

    const/16 v11, 0x1a

    invoke-direct {v3, v10, v11}, Lh1;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_10
    move-object/from16 v26, v3

    check-cast v26, Lkotlin/jvm/functions/Function0;

    const/16 v27, 0xf

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v27}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    new-instance v11, Lrq;

    const/16 v10, 0xb

    invoke-direct {v11, v10}, Lrq;-><init>(I)V

    shr-int/lit8 v10, v20, 0x9

    and-int/lit8 v10, v10, 0x70

    invoke-static {v3, v5, v11, v7, v10}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    new-instance v10, Lp4;

    const/4 v5, 0x1

    const/4 v11, 0x0

    invoke-direct {v10, v8, v5, v11}, Lp4;-><init>(ZIB)V

    move-object/from16 v5, v18

    shr-int/lit8 v17, v20, 0xc

    and-int/lit8 v8, v17, 0x70

    invoke-static {v3, v6, v10, v7, v8}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v12, v11}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    iget-wide v10, v7, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v7, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v16, :cond_22

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_1a

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    :cond_1a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_11
    invoke-static {v7, v8, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7, v11, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v7, v4, v7, v14}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v7, v3, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v3, p2

    if-eqz p2, :cond_1b

    iget-object v0, v3, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_1c

    const v0, -0x7c4654fd

    move-object/from16 v4, v21

    invoke-static {v7, v0, v4}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v4, 0x0

    invoke-static {v0, v4, v4, v1}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v13

    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    iget-object v0, v3, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v14, v0, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v24, 0x180

    const/16 v25, 0x7f8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v7

    invoke-static/range {v13 .. v25}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v0, v23

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    :goto_13
    const/4 v4, 0x1

    goto/16 :goto_18

    :cond_1c
    move-object v0, v7

    move-object/from16 v4, v21

    if-eqz v3, :cond_1d

    iget-object v13, v3, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    goto :goto_14

    :cond_1d
    const/4 v13, 0x0

    :goto_14
    if-eqz v13, :cond_21

    if-eqz p8, :cond_21

    const v5, -0x7c41776b

    invoke-static {v0, v5, v4}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    new-instance v7, Lbw;

    const/4 v4, 0x1

    invoke-direct {v7, v2, v4}, Lbw;-><init>(FI)V

    const/4 v8, 0x6

    invoke-static {v5, v9, v7, v0, v8}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v13

    iget-object v5, v3, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iget-object v15, v5, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    move-object/from16 v9, p8

    iget-object v14, v9, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->a:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v5, v5, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->d:Ljava/lang/String;

    sget-object v7, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v7, v20

    sget-object v20, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    const/high16 v11, 0x20000000

    if-ne v1, v11, :cond_1e

    const/4 v1, 0x1

    goto :goto_15

    :cond_1e
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_20

    move-object/from16 v1, v29

    if-ne v8, v1, :cond_1f

    goto :goto_16

    :cond_1f
    move-object/from16 v10, p9

    goto :goto_17

    :cond_20
    :goto_16
    new-instance v8, Ly2;

    const/16 v1, 0x9

    move-object/from16 v10, p9

    invoke-direct {v8, v10, v1}, Ly2;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_17
    move-object/from16 v31, v8

    check-cast v31, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v1, v7, 0xf

    and-int/lit8 v1, v1, 0x70

    or-int/lit16 v1, v1, 0x6000

    const/16 v37, 0x0

    const v38, 0x1bb718

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x4

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/high16 v35, 0xc30000

    move/from16 v24, p6

    move-object/from16 v34, v0

    move/from16 v36, v1

    move-object/from16 v19, v5

    invoke-static/range {v13 .. v38}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt;->b(Landroidx/compose/ui/Modifier;Landroidx/media3/exoplayer/ExoPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/String;Landroidx/compose/ui/layout/ContentScale;ZZZZLjava/lang/Boolean;ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;IIII)V

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_13

    :cond_21
    move-object/from16 v9, p8

    move-object/from16 v10, p9

    const/4 v11, 0x0

    const v1, -0x7c3829bf

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_13

    :goto_18
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    move-object/from16 v11, p10

    invoke-virtual {v11, v5, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :cond_22
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v19, 0x0

    throw v19

    :cond_23
    const/16 v19, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v19

    :cond_24
    move-object/from16 v11, p10

    move-object/from16 v39, v0

    move-object v0, v7

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_19
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_25

    new-instance v0, Lcw;

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v12, p12

    move-object/from16 v1, v39

    invoke-direct/range {v0 .. v12}, Lcw;-><init>(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/presentation/model/common/AssetUiModel;ZZZZZLcom/vuitton/android/presentation/compose/LvExoPlayer;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_25
    return-void
.end method
