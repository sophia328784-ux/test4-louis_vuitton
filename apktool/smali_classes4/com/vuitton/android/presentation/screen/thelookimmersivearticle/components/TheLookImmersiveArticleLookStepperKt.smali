.class public abstract Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleLookStepperKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;IILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 42

    move-object/from16 v0, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    const-string v1, "TheLookImmersiveArticleStepper-qM_MBqc"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x52f5d37e

    move-object/from16 v3, p11

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    iget-object v3, v2, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    move-object/from16 v12, p1

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/16 v13, 0x20

    goto :goto_0

    :cond_1
    const/16 v13, 0x10

    :goto_0
    or-int v13, p12, v13

    move-object/from16 v14, p2

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v15, 0x100

    goto :goto_1

    :cond_2
    const/16 v15, 0x80

    :goto_1
    or-int/2addr v13, v15

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v15

    if-eqz v15, :cond_3

    const/16 v15, 0x800

    goto :goto_2

    :cond_3
    const/16 v15, 0x400

    :goto_2
    or-int/2addr v13, v15

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 p0, v3

    if-eqz v15, :cond_4

    const/16 v15, 0x4000

    goto :goto_3

    :cond_4
    const/16 v15, 0x2000

    :goto_3
    or-int/2addr v13, v15

    if-nez v6, :cond_5

    const/4 v15, -0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    :goto_4
    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v15

    if-eqz v15, :cond_6

    const/high16 v15, 0x20000

    goto :goto_5

    :cond_6
    const/high16 v15, 0x10000

    :goto_5
    or-int/2addr v13, v15

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v15

    if-eqz v15, :cond_7

    const/high16 v15, 0x100000

    goto :goto_6

    :cond_7
    const/high16 v15, 0x80000

    :goto_6
    or-int/2addr v13, v15

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v15

    if-eqz v15, :cond_8

    const/high16 v15, 0x800000

    goto :goto_7

    :cond_8
    const/high16 v15, 0x400000

    :goto_7
    or-int/2addr v13, v15

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/high16 v15, 0x4000000

    goto :goto_8

    :cond_9
    const/high16 v15, 0x2000000

    :goto_8
    or-int/2addr v13, v15

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/high16 v15, 0x20000000

    goto :goto_9

    :cond_a
    const/high16 v15, 0x10000000

    :goto_9
    or-int v35, v13, v15

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x4

    goto :goto_a

    :cond_b
    const/4 v13, 0x2

    :goto_a
    const v16, 0x12492493

    and-int v3, v35, v16

    const/16 v18, 0x3

    const v15, 0x12492492

    if-ne v3, v15, :cond_d

    and-int/lit8 v3, v13, 0x3

    const/4 v13, 0x2

    if-eq v3, v13, :cond_c

    goto :goto_b

    :cond_c
    const/4 v3, 0x0

    goto :goto_c

    :cond_d
    :goto_b
    const/4 v3, 0x1

    :goto_c
    and-int/lit8 v13, v35, 0x1

    invoke-virtual {v2, v13, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_21

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/graphics/Brush;->a:Landroidx/compose/ui/graphics/Brush$Companion;

    sget-object v13, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v12, Landroidx/compose/ui/graphics/Color;->h:J

    new-instance v15, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v15, v12, v13}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-static {v4, v12, v13}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v12

    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v12, v13}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    filled-new-array {v15, v4}, [Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v12, 0x0

    const/16 v13, 0xe

    invoke-static {v3, v4, v12, v12, v13}, Landroidx/compose/ui/graphics/Brush$Companion;->b(Landroidx/compose/ui/graphics/Brush$Companion;Ljava/util/List;FFI)Landroidx/compose/ui/graphics/LinearGradient;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/LinearGradient;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->C:F

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v15

    iget v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    move/from16 v16, v13

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v13

    iget v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->u:F

    invoke-static {v3, v12, v4, v15, v13}, Landroidx/compose/foundation/layout/PaddingKt;->l(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    const/16 v13, 0x36

    invoke-static {v12, v4, v2, v13}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v4

    iget-wide v13, v2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v2, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_20

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_e

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_d

    :cond_e
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_d
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v4, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v14, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v13, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v13}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v3, v8}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v8, 0x3f4ccccd    # 0.8f

    sget-object v11, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    move-object/from16 v21, v12

    const/4 v12, 0x1

    invoke-virtual {v11, v3, v8, v12}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object/from16 v37, v11

    const/16 v11, 0x36

    invoke-static {v8, v12, v2, v11}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v8

    iget-wide v11, v2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v2, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz p0, :cond_1f

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v38, v0

    iget-boolean v0, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_f

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_f
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_e
    invoke-static {v2, v8, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v12, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v2, v14, v2, v13}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v2, v3, v7, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v11, 0x0

    invoke-static {v3, v8, v2, v11}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v3

    iget-wide v11, v2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v2, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz p0, :cond_1e

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v39, v8

    iget-boolean v8, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_10

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_f

    :cond_10
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_f
    invoke-static {v2, v3, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v12, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v2, v14, v2, v13}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v2, v0, v7, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    move/from16 v3, v18

    const/4 v8, 0x0

    invoke-static {v0, v8, v3}, Landroidx/compose/foundation/layout/SizeKt;->x(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->e:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    shr-int/lit8 v18, v35, 0x3

    and-int/lit8 v16, v18, 0xe

    or-int/lit8 v32, v16, 0x30

    const/16 v33, 0x0

    const v34, 0x1fff8

    const/16 v18, 0x36

    const-wide/16 v16, 0x0

    move/from16 v22, v18

    const/16 v18, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v25, v21

    const/16 v21, 0x0

    move/from16 v26, v22

    const/16 v22, 0x0

    move/from16 v27, v23

    move/from16 v28, v24

    const-wide/16 v23, 0x0

    move-object/from16 v29, v25

    const/16 v25, 0x0

    move/from16 v30, v26

    const/16 v26, 0x0

    move/from16 v31, v27

    const/16 v27, 0x0

    move/from16 v40, v28

    const/16 v28, 0x0

    move-object/from16 v41, v29

    const/16 v29, 0x0

    move-object/from16 v31, v2

    move-object/from16 v30, v8

    move-object v8, v14

    move-object v3, v15

    move-object/from16 v2, v41

    move-wide v14, v11

    move-object v11, v13

    move-object/from16 v12, p1

    move-object v13, v0

    move/from16 v0, v40

    invoke-static/range {v12 .. v34}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v12, v31

    sget-object v13, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v13, v14, :cond_11

    const v13, 0x3d627c58

    invoke-static {v12, v13, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v14

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v13

    iget v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->f:F

    const/16 v18, 0x0

    const/16 v19, 0xb

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v13

    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    const/4 v14, 0x3

    const/4 v15, 0x0

    goto :goto_11

    :cond_11
    const v13, 0x3d642e96

    invoke-static {v12, v13, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v14

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v13

    iget v15, v13, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->f:F

    const/16 v18, 0x0

    const/16 v19, 0xe

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :goto_11
    invoke-static {v13, v15, v14}, Landroidx/compose/foundation/layout/SizeKt;->x(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;I)Landroidx/compose/ui/Modifier;

    move-result-object v13

    add-int/lit8 v14, p6, 0x1

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v15

    iget-object v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->e:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object/from16 v31, v12

    move-object/from16 v16, v13

    iget-wide v12, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    const/16 v20, 0x30

    const/16 v21, 0x8

    move-wide/from16 v17, v12

    const/4 v13, 0x2

    move-object/from16 v12, v16

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v19, v31

    invoke-static/range {v12 .. v21}, Lcom/vuitton/android/designkit/components/components/LVAnimatedDigitsKt;->a(Landroidx/compose/ui/Modifier;IIZLandroidx/compose/ui/text/TextStyle;JLandroidx/compose/runtime/Composer;II)V

    move-object/from16 v12, v19

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-eqz p3, :cond_12

    move-object/from16 v13, p2

    goto :goto_12

    :cond_12
    const-string v14, ""

    move-object v13, v14

    :goto_12
    sget-object v15, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    const/high16 v0, 0xe000000

    and-int v0, v35, v0

    const/high16 v14, 0x4000000

    if-ne v0, v14, :cond_13

    const/4 v0, 0x1

    goto :goto_13

    :cond_13
    const/4 v0, 0x0

    :goto_13
    const v14, 0xe000

    and-int v14, v35, v14

    move/from16 v16, v0

    const/16 v0, 0x4000

    if-ne v14, v0, :cond_14

    const/4 v0, 0x1

    goto :goto_14

    :cond_14
    const/4 v0, 0x0

    :goto_14
    or-int v0, v16, v0

    const/high16 v14, 0x70000

    and-int v14, v35, v14

    move/from16 p11, v0

    const/high16 v0, 0x20000

    if-ne v14, v0, :cond_15

    const/4 v0, 0x1

    goto :goto_15

    :cond_15
    const/4 v0, 0x0

    :goto_15
    or-int v0, p11, v0

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v0, :cond_16

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v14, v0, :cond_17

    :cond_16
    new-instance v14, Lsm0;

    const/16 v0, 0x14

    invoke-direct {v14, v9, v5, v6, v0}, Lsm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v17, v14

    check-cast v17, Lkotlin/jvm/functions/Function0;

    const/16 v19, 0xc00

    const/16 v20, 0x15

    move-object/from16 v31, v12

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v18, v31

    invoke-static/range {v12 .. v20}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v12, v18

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v13, v38

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v14

    const v15, 0x3e4ccccd    # 0.2f

    move-object/from16 v5, v37

    invoke-virtual {v5, v14, v15, v0}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v5

    move-object/from16 v0, v39

    const/16 v15, 0x36

    invoke-static {v2, v0, v12, v15}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v0

    iget-wide v14, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v12, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz p0, :cond_1d

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_18

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_16

    :cond_18
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_16
    invoke-static {v12, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12, v14, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v12, v8, v12, v11}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v12, v5, v7, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->o:F

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-lez p6, :cond_19

    const/4 v15, 0x1

    goto :goto_17

    :cond_19
    const/4 v15, 0x0

    :goto_17
    new-instance v2, Lv31;

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v11, p10

    const/4 v3, 0x0

    invoke-direct {v2, v7, v8, v11, v3}, Lv31;-><init>(IILkotlin/jvm/functions/Function1;I)V

    invoke-static {v0, v15, v2, v12, v3}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->H:I

    invoke-static {v0, v12, v3}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    const v2, 0x7f140359

    invoke-static {v12, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    if-lez v7, :cond_1a

    const v4, -0x6694120f

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_18
    move-wide v15, v4

    goto :goto_19

    :cond_1a
    const v4, -0x66929a4e

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->n:J

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_18

    :goto_19
    const/16 v18, 0x8

    const/16 v19, 0x0

    move-object/from16 v17, v12

    move-object/from16 v38, v13

    move-object v12, v0

    move-object v13, v2

    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    move-object/from16 v12, v17

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->o:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    add-int/lit8 v1, v8, -0x1

    if-ge v7, v1, :cond_1b

    const/4 v15, 0x1

    goto :goto_1a

    :cond_1b
    const/4 v15, 0x0

    :goto_1a
    new-instance v2, Lv31;

    move-object/from16 v10, p9

    const/4 v3, 0x1

    invoke-direct {v2, v7, v8, v10, v3}, Lv31;-><init>(IILkotlin/jvm/functions/Function1;I)V

    const/4 v3, 0x0

    invoke-static {v0, v15, v2, v12, v3}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I:I

    invoke-static {v0, v12, v3}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    const v2, 0x7f140342

    invoke-static {v12, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    if-ge v7, v1, :cond_1c

    const v1, -0x6686766f

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1b
    move-wide v15, v1

    goto :goto_1c

    :cond_1c
    const v1, -0x6684feae

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->n:J

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1b

    :goto_1c
    const/16 v18, 0x8

    const/16 v19, 0x0

    move-object/from16 v17, v12

    move-object v12, v0

    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    move-object/from16 v12, v17

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1d

    :cond_1d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v36, 0x0

    throw v36

    :cond_1e
    const/16 v36, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v36

    :cond_1f
    const/16 v36, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v36

    :cond_20
    const/16 v36, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v36

    :cond_21
    move-object/from16 v38, v0

    move-object v12, v2

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_22

    new-instance v0, Lb0;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v12, p12

    move-object/from16 v1, v38

    invoke-direct/range {v0 .. v12}, Lb0;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;IILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_22
    return-void
.end method
