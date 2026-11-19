.class public abstract Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "system"
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
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLandroidx/compose/runtime/Composer;II)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v5, p5

    const-string v1, "LVCapsulePageControl"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0xb662850

    move-object/from16 v4, p4

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    iget-object v3, v13, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v4, p6, 0x1

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    or-int/lit8 v7, v5, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v7, v5, 0x6

    if-nez v7, :cond_3

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x4

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_0
    or-int/2addr v7, v5

    goto :goto_1

    :cond_3
    move v7, v5

    :goto_1
    and-int/lit8 v8, v5, 0x30

    if-nez v8, :cond_5

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x20

    goto :goto_2

    :cond_4
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v7, v8

    :cond_5
    and-int/lit8 v8, p6, 0x4

    if-eqz v8, :cond_6

    or-int/lit16 v7, v7, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v5, 0x180

    if-nez v9, :cond_9

    if-nez p2, :cond_7

    const/4 v9, -0x1

    goto :goto_3

    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    :goto_3
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v7, v9

    :cond_9
    :goto_5
    and-int/lit8 v9, p6, 0x8

    if-eqz v9, :cond_b

    or-int/lit16 v7, v7, 0xc00

    :cond_a
    move/from16 v10, p3

    :goto_6
    move v15, v7

    goto :goto_8

    :cond_b
    and-int/lit16 v10, v5, 0xc00

    if-nez v10, :cond_a

    move/from16 v10, p3

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v11

    if-eqz v11, :cond_c

    const/16 v11, 0x800

    goto :goto_7

    :cond_c
    const/16 v11, 0x400

    :goto_7
    or-int/2addr v7, v11

    goto :goto_6

    :goto_8
    and-int/lit16 v7, v15, 0x493

    const/16 v11, 0x492

    const/4 v12, 0x0

    const/4 v14, 0x1

    if-eq v7, v11, :cond_d

    move v7, v14

    goto :goto_9

    :cond_d
    move v7, v12

    :goto_9
    and-int/lit8 v11, v15, 0x1

    invoke-virtual {v13, v11, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_1f

    if-eqz v4, :cond_e

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_e
    if-eqz v8, :cond_f

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_a

    :cond_f
    move-object/from16 v4, p2

    :goto_a
    if-eqz v9, :cond_10

    move/from16 v16, v12

    goto :goto_b

    :cond_10
    move/from16 v16, v10

    :goto_b
    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt$WhenMappings;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v7, v8

    if-eq v8, v14, :cond_12

    if-ne v8, v6, :cond_11

    const v8, 0x3582d9e4

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_c
    move-wide v10, v8

    goto :goto_d

    :cond_11
    const v0, 0x3582c62d

    invoke-static {v13, v0, v12}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_12
    const v8, 0x3582d01e

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :goto_d
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v14, :cond_14

    if-ne v7, v6, :cond_13

    const v6, 0x3582f9af

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->y:J

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->d:F

    invoke-static {v8, v6, v7}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v6

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_e
    move-wide v8, v6

    goto :goto_f

    :cond_13
    const v0, 0x3582e17d

    invoke-static {v13, v0, v12}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_14
    const v6, 0x3582ec2f

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->d:F

    invoke-static {v8, v6, v7}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v6

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :goto_f
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result v6

    if-le v6, v14, :cond_1e

    const v6, 0x7ade1d10

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v6, v12}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    move/from16 p0, v15

    iget-wide v14, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v13, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v18, 0x0

    if-eqz v3, :cond_1d

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v19, v0

    iget-boolean v0, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_15

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_15
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_10
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v6, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v14, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v7, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v7}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v20, v3

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v15, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v16, :cond_19

    const v15, 0xbcc25df

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object/from16 v21, v4

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    const/16 v5, 0x30

    invoke-static {v1, v15, v13, v5}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v1

    move-wide/from16 p2, v8

    iget-wide v8, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v13, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v20, :cond_18

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_16

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    :cond_16
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_11
    invoke-static {v13, v1, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v13, v14, v13, v7}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v13, v4, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x55e6e196

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result v0

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v0, :cond_17

    shr-int/lit8 v1, p0, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-static {v2, v7, v13, v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt;->d(Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/runtime/Composer;I)Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;

    move-result-object v6

    const/4 v12, 0x1

    const/16 v14, 0x6000

    move-wide/from16 v8, p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v6 .. v14}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt;->b(Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;IJJZLandroidx/compose/runtime/Composer;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_17
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v13, v4, v5, v4}, Lpq0;->x(Landroidx/compose/runtime/GapComposer;ZZZ)V

    goto :goto_15

    :cond_18
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v18

    :cond_19
    move-object/from16 v21, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v15, 0xbd7a625

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v5, 0x30

    invoke-static {v1, v15, v13, v5}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v1

    move-wide/from16 p2, v8

    iget-wide v8, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v13, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v20, :cond_1c

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_1a

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_13

    :cond_1a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_13
    invoke-static {v13, v1, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v13, v14, v13, v7}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v13, v4, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x725285e2

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result v0

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v0, :cond_1b

    shr-int/lit8 v1, p0, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-static {v2, v7, v13, v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt;->d(Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/runtime/Composer;I)Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;

    move-result-object v6

    const/4 v12, 0x0

    const/16 v14, 0x6000

    move-wide/from16 v8, p2

    invoke-static/range {v6 .. v14}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt;->b(Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;IJJZLandroidx/compose/runtime/Composer;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_1b
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v13, v4, v5, v4}, Lpq0;->x(Landroidx/compose/runtime/GapComposer;ZZZ)V

    :goto_15
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_16

    :cond_1c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v18

    :cond_1d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v18

    :cond_1e
    move-object/from16 v19, v0

    move-object/from16 v21, v4

    move v4, v12

    const v0, 0x7af68b12

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_16
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move/from16 v4, v16

    move-object/from16 v1, v19

    move-object/from16 v3, v21

    goto :goto_17

    :cond_1f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v3, p2

    move-object v1, v0

    move v4, v10

    :goto_17
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_20

    new-instance v0, Loh;

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Loh;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZII)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method

.method public static final b(Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;IJJZLandroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v1, p0

    const v0, -0x663d2e3c

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x4

    if-eqz v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p8, v0

    move/from16 v2, p1

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    move-wide/from16 v6, p2

    invoke-virtual {v9, v6, v7}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v0, v3

    move-wide/from16 v12, p4

    invoke-virtual {v9, v12, v13}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    goto :goto_3

    :cond_3
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v0, v3

    and-int/lit16 v3, v0, 0x2493

    const/16 v14, 0x2492

    if-eq v3, v14, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    and-int/lit8 v14, v0, 0x1

    invoke-virtual {v9, v14, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_21

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v14, :cond_5

    invoke-static {v6, v7}, Landroidx/compose/animation/SingleValueAnimationKt;->a(J)Landroidx/compose/animation/core/Animatable;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v3, Landroidx/compose/animation/core/Animatable;

    iget-object v10, v1, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a:Landroidx/compose/foundation/pager/PagerState;

    const/16 v16, 0x1

    iget v15, v1, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->b:I

    iget-object v5, v1, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v10}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    and-int/lit8 v8, v0, 0xe

    if-ne v8, v11, :cond_6

    move/from16 v18, v16

    goto :goto_5

    :cond_6
    const/16 v18, 0x0

    :goto_5
    or-int v17, v17, v18

    and-int/lit8 v11, v0, 0x70

    if-ne v11, v4, :cond_7

    move/from16 v4, v16

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    or-int v4, v17, v4

    and-int/lit16 v11, v0, 0x1c00

    const/16 v1, 0x800

    if-ne v11, v1, :cond_8

    move/from16 v1, v16

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    or-int/2addr v1, v4

    and-int/lit16 v0, v0, 0x380

    const/16 v4, 0x100

    if-ne v0, v4, :cond_9

    move/from16 v0, v16

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_8
    or-int/2addr v0, v1

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_b

    if-ne v1, v14, :cond_a

    goto :goto_9

    :cond_a
    move-object v0, v1

    move-object v11, v5

    move v12, v8

    move-object/from16 v1, p0

    goto :goto_a

    :cond_b
    :goto_9
    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt$LVPagerDot$1$1;

    move v1, v8

    const/4 v8, 0x0

    move-object v11, v5

    move-wide v4, v12

    move v12, v1

    move-object v1, v3

    move v3, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt$LVPagerDot$1$1;-><init>(Landroidx/compose/animation/core/Animatable;Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;IJJLkotlin/coroutines/Continuation;)V

    move-object v3, v1

    move-object v1, v2

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_a
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v10, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->b()Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Invisible:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    if-eq v0, v2, :cond_20

    const v0, 0x566013b4

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    if-gt v0, v15, :cond_c

    if-gt v15, v2, :cond_c

    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->b()Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->c()F

    move-result v0

    sget-object v2, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    goto/16 :goto_d

    :cond_c
    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    invoke-static {v11, v0}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt;->c(Landroidx/compose/foundation/pager/PagerState;I)Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;->InBetween:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;

    if-eq v0, v2, :cond_d

    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->b()Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->c()F

    move-result v0

    goto/16 :goto_c

    :cond_d
    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    if-le v15, v0, :cond_e

    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->l()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_e

    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->b()Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->a()F

    move-result v0

    goto :goto_b

    :cond_e
    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    if-le v15, v0, :cond_f

    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->l()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_f

    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->b()Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->b()F

    move-result v0

    goto :goto_b

    :cond_f
    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    if-ge v15, v0, :cond_10

    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->l()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_10

    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->b()Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->a()F

    move-result v0

    goto :goto_b

    :cond_10
    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    if-ge v15, v0, :cond_11

    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->l()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_11

    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->b()Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->b()F

    move-result v0

    goto :goto_b

    :cond_11
    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->b()Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->c()F

    move-result v0

    :goto_b
    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v2

    sub-int/2addr v2, v15

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->b()Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->c()F

    move-result v5

    sget-object v6, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a()F

    move-result v6

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v5, v0, v2}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    move-result v0

    :goto_c
    sget-object v2, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    :goto_d
    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-gt v2, v15, :cond_12

    if-gt v15, v5, :cond_12

    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->a()F

    move-result v2

    invoke-static {v2, v4, v6}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v2

    sub-float/2addr v2, v6

    const/high16 v5, -0x40800000    # -1.0f

    div-float/2addr v2, v5

    const/high16 v5, 0x41600000    # 14.0f

    mul-float/2addr v2, v5

    const/high16 v5, 0x40c00000    # 6.0f

    add-float/2addr v2, v5

    goto :goto_e

    :cond_12
    move v2, v0

    :goto_e
    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v7, "LVPagerDot-eaDK9VM"

    invoke-direct {v5, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;->b()Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    move-result-object v10

    sget-object v11, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$WhenMappings;->b:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v11, v10

    move/from16 v11, v16

    if-eq v10, v11, :cond_16

    const/4 v11, 0x2

    if-eq v10, v11, :cond_15

    const/4 v11, 0x3

    if-eq v10, v11, :cond_14

    const/4 v11, 0x4

    if-eq v10, v11, :cond_16

    const/4 v6, 0x5

    if-ne v10, v6, :cond_13

    goto :goto_f

    :cond_13
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_14
    move v4, v6

    goto :goto_f

    :cond_15
    const/high16 v4, 0x40000000    # 2.0f

    :cond_16
    :goto_f
    add-float/2addr v8, v4

    invoke-static {v5, v8}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    iget-wide v10, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v9, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v11, v9, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v11, :cond_1f

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_17

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_17
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_10
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v5, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v8, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    if-eqz p6, :cond_1b

    const v5, -0x5e25878

    invoke-static {v9, v5, v7}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    const/4 v11, 0x4

    if-ne v12, v11, :cond_18

    const/4 v6, 0x1

    goto :goto_11

    :cond_18
    const/4 v6, 0x0

    :goto_11
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_19

    if-ne v7, v14, :cond_1a

    :cond_19
    new-instance v7, Ll50;

    const/4 v6, 0x0

    invoke-direct {v7, v1, v6}, Ll50;-><init>(Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;I)V

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v7}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5, v2}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v3}, Landroidx/compose/animation/core/Animatable;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->a:J

    sget-object v5, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v2, v3, v5}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v4, v0, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_1b
    const v5, -0x5dd17d8

    invoke-static {v9, v5, v7}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    const/4 v11, 0x4

    if-ne v12, v11, :cond_1c

    const/4 v6, 0x1

    goto :goto_12

    :cond_1c
    const/4 v6, 0x0

    :goto_12
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_1d

    if-ne v7, v14, :cond_1e

    :cond_1d
    new-instance v7, Ll50;

    const/4 v11, 0x1

    invoke-direct {v7, v1, v11}, Ll50;-><init>(Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;I)V

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v7}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5, v0}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v3}, Landroidx/compose/animation/core/Animatable;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->a:J

    sget-object v5, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v2, v3, v5}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v4, v0, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    invoke-static {v0, v9, v6}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_1f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_20
    const/4 v6, 0x0

    const v0, 0x56720dfe

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_21
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_14
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_22

    new-instance v0, Lm50;

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lm50;-><init>(Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;IJJZI)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_22
    return-void
.end method

.method public static final c(Landroidx/compose/foundation/pager/PagerState;I)Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;->First:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;->Second:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne p1, v1, :cond_2

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;->SecondToLast:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result p0

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_3

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;->Last:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;

    return-object p0

    :cond_3
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;->InBetween:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;

    return-object p0
.end method

.method public static final d(Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/runtime/Composer;I)Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v0, p3, 0xe

    xor-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    and-int/lit8 p3, p3, 0x6

    if-ne p3, v1, :cond_2

    :cond_1
    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p3, :cond_3

    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, p3, :cond_4

    :cond_3
    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;

    return-object v0
.end method
