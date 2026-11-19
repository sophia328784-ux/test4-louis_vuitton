.class public abstract Lcom/vuitton/android/presentation/compose/components/LVTagFilterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/compose/components/LVTagFilterKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/TagFilterType;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p8

    move/from16 v10, p10

    move/from16 v11, p11

    const-string v1, "LVTagFilter"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0xa731235

    move-object/from16 v5, p9

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v6, v10, 0x6

    goto :goto_1

    :cond_1
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v10

    :goto_1
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x20

    goto :goto_2

    :cond_3
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v6, v8

    and-int/lit8 v8, v11, 0x4

    if-eqz v8, :cond_5

    or-int/lit16 v6, v6, 0x180

    :cond_4
    move-object/from16 v9, p2

    goto :goto_4

    :cond_5
    and-int/lit16 v9, v10, 0x180

    if-nez v9, :cond_4

    move-object/from16 v9, p2

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/16 v14, 0x100

    goto :goto_3

    :cond_6
    const/16 v14, 0x80

    :goto_3
    or-int/2addr v6, v14

    :goto_4
    and-int/lit16 v14, v10, 0xc00

    if-nez v14, :cond_8

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v14

    if-eqz v14, :cond_7

    const/16 v14, 0x800

    goto :goto_5

    :cond_7
    const/16 v14, 0x400

    :goto_5
    or-int/2addr v6, v14

    :cond_8
    and-int/lit8 v14, v11, 0x10

    if-eqz v14, :cond_9

    or-int/lit16 v6, v6, 0x6000

    move-object/from16 v15, p4

    goto :goto_7

    :cond_9
    move-object/from16 v15, p4

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x4000

    goto :goto_6

    :cond_a
    const/16 v16, 0x2000

    :goto_6
    or-int v6, v6, v16

    :goto_7
    and-int/lit8 v16, v11, 0x20

    if-eqz v16, :cond_b

    const/high16 v17, 0x30000

    or-int v6, v6, v17

    move/from16 v5, p5

    goto :goto_9

    :cond_b
    move/from16 v5, p5

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-eqz v17, :cond_c

    const/high16 v17, 0x20000

    goto :goto_8

    :cond_c
    const/high16 v17, 0x10000

    :goto_8
    or-int v6, v6, v17

    :goto_9
    and-int/lit8 v17, v11, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_d

    or-int v6, v6, v18

    goto :goto_d

    :cond_d
    and-int v18, v10, v18

    if-nez v18, :cond_10

    if-nez p6, :cond_e

    const/16 v18, -0x1

    :goto_a
    move/from16 v13, v18

    goto :goto_b

    :cond_e
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    goto :goto_a

    :goto_b
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v13

    if-eqz v13, :cond_f

    const/high16 v13, 0x100000

    goto :goto_c

    :cond_f
    const/high16 v13, 0x80000

    :goto_c
    or-int/2addr v6, v13

    :cond_10
    :goto_d
    and-int/lit16 v13, v11, 0x80

    const/high16 v18, 0xc00000

    if-eqz v13, :cond_12

    or-int v6, v6, v18

    :cond_11
    move-object/from16 v18, v0

    move/from16 v0, p7

    goto :goto_f

    :cond_12
    and-int v18, v10, v18

    if-nez v18, :cond_11

    move-object/from16 v18, v0

    move/from16 v0, p7

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v20

    if-eqz v20, :cond_13

    const/high16 v20, 0x800000

    goto :goto_e

    :cond_13
    const/high16 v20, 0x400000

    :goto_e
    or-int v6, v6, v20

    :goto_f
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_14
    const/high16 v20, 0x2000000

    :goto_10
    or-int v6, v6, v20

    const v20, 0x2492493

    and-int v9, v6, v20

    const v0, 0x2492492

    move/from16 v20, v14

    const/4 v14, 0x1

    if-eq v9, v0, :cond_15

    move v0, v14

    goto :goto_11

    :cond_15
    const/4 v0, 0x0

    :goto_11
    and-int/lit8 v9, v6, 0x1

    invoke-virtual {v12, v9, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_40

    if-eqz v3, :cond_16

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :cond_16
    move-object/from16 v0, v18

    :goto_12
    if-eqz v8, :cond_17

    const-string v3, ""

    goto :goto_13

    :cond_17
    move-object/from16 v3, p2

    :goto_13
    move v9, v13

    if-eqz v20, :cond_18

    const/4 v13, 0x0

    goto :goto_14

    :cond_18
    move-object/from16 v13, p4

    :goto_14
    if-eqz v16, :cond_19

    move/from16 v25, v14

    goto :goto_15

    :cond_19
    move/from16 v25, v5

    :goto_15
    if-eqz v17, :cond_1a

    sget-object v5, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_16

    :cond_1a
    move-object/from16 v5, p6

    :goto_16
    if-eqz v9, :cond_1b

    move/from16 v26, v14

    goto :goto_17

    :cond_1b
    move/from16 v26, p7

    :goto_17
    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    sget-object v16, Lcom/vuitton/android/presentation/compose/components/LVTagFilterKt$WhenMappings;->b:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v8, v16, v17

    const/4 v15, 0x3

    if-eq v8, v14, :cond_20

    const/4 v14, 0x2

    if-eq v8, v14, :cond_20

    if-eq v8, v15, :cond_1d

    const/4 v14, 0x4

    if-ne v8, v14, :cond_1c

    goto :goto_18

    :cond_1c
    const v0, 0x39f789a7

    const/4 v1, 0x0

    invoke-static {v12, v0, v1}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_1d
    :goto_18
    const v8, 0x4fe88cd

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v8, Lcom/vuitton/android/presentation/compose/components/LVTagFilterKt$WhenMappings;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v8, v8, v14

    const/4 v14, 0x1

    if-eq v8, v14, :cond_1f

    const/4 v14, 0x2

    if-ne v8, v14, :cond_1e

    const v8, 0x39f7c661

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v10, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->y:J

    const/4 v8, 0x0

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :cond_1e
    const/4 v8, 0x0

    const v0, 0x39f7b1d5

    invoke-static {v12, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_1f
    const/4 v8, 0x0

    const v10, 0x39f7bc42

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->o:J

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_19
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v14, 0x2

    goto :goto_1b

    :cond_20
    const v8, 0x4fa95ca

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v8, Lcom/vuitton/android/presentation/compose/components/LVTagFilterKt$WhenMappings;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v8, v8, v10

    const/4 v14, 0x1

    if-eq v8, v14, :cond_22

    const/4 v14, 0x2

    if-ne v8, v14, :cond_21

    const v8, 0x39f7a567

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v10, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->s:J

    const/4 v8, 0x0

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :cond_21
    const/4 v8, 0x0

    const v0, 0x39f79138

    invoke-static {v12, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_22
    const/4 v8, 0x0

    const/4 v14, 0x2

    const v10, 0x39f79b9f

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1a
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1b
    sget-object v8, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    if-eq v5, v8, :cond_23

    sget-object v14, Lcom/vuitton/android/presentation/compose/components/TagFilterType;->ACTIVE_DELETABLE:Lcom/vuitton/android/presentation/compose/components/TagFilterType;

    if-eq v4, v14, :cond_23

    sget-object v14, Lcom/vuitton/android/presentation/compose/components/TagFilterType;->ACTIVE:Lcom/vuitton/android/presentation/compose/components/TagFilterType;

    if-ne v4, v14, :cond_24

    :cond_23
    move-object/from16 p4, v13

    goto :goto_1c

    :cond_24
    sget-object v14, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    if-ne v5, v14, :cond_25

    sget-object v14, Lcom/vuitton/android/presentation/compose/components/TagFilterType;->DISABLED:Lcom/vuitton/android/presentation/compose/components/TagFilterType;

    if-ne v4, v14, :cond_25

    const v14, 0x39f7f4a9

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v14

    iget-object v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object/from16 p4, v13

    iget-wide v13, v14, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->i:J

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1d

    :cond_25
    move-object/from16 p4, v13

    const/4 v15, 0x0

    const v13, 0x39f7fa00

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v13, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v13, Landroidx/compose/ui/graphics/Color;->h:J

    goto :goto_1d

    :goto_1c
    const v13, 0x39f7e446

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1d
    if-eq v5, v8, :cond_26

    sget-object v15, Lcom/vuitton/android/presentation/compose/components/TagFilterType;->ACTIVE_DELETABLE:Lcom/vuitton/android/presentation/compose/components/TagFilterType;

    if-eq v4, v15, :cond_26

    sget-object v15, Lcom/vuitton/android/presentation/compose/components/TagFilterType;->ACTIVE:Lcom/vuitton/android/presentation/compose/components/TagFilterType;

    if-ne v4, v15, :cond_27

    :cond_26
    move-object/from16 v18, v3

    const/4 v15, 0x0

    goto :goto_1e

    :cond_27
    const v15, 0x39f81da9

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v15

    iget-object v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object/from16 v18, v3

    iget-wide v2, v15, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1f

    :goto_1e
    const v2, 0x39f815c3

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1f
    const v15, 0x7f140367

    invoke-static {v12, v15}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 p6, v2

    const v2, 0x7f140322

    invoke-static {v12, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->t:F

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object/from16 v27, v0

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVShape;->e:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v3, v0}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v3, Lcom/vuitton/android/presentation/compose/components/TagFilterType;->DISABLED:Lcom/vuitton/android/presentation/compose/components/TagFilterType;

    move-object/from16 v22, v5

    if-ne v4, v3, :cond_28

    const/4 v5, 0x1

    :goto_20
    move-object/from16 v23, v8

    goto :goto_21

    :cond_28
    const/4 v5, 0x0

    goto :goto_20

    :goto_21
    new-instance v8, Ln50;

    move-object/from16 v28, v1

    const/4 v1, 0x3

    invoke-direct {v8, v1}, Ln50;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v0, v5, v8, v12, v1}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v13, v14, v1}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->c:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVShape;->e:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v1, v10, v11, v5}, Landroidx/compose/foundation/BorderKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v29

    if-eq v4, v3, :cond_29

    const/16 v30, 0x1

    goto :goto_22

    :cond_29
    const/16 v30, 0x0

    :goto_22
    const/high16 v0, 0xe000000

    and-int/2addr v0, v6

    const/high16 v1, 0x4000000

    if-ne v0, v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_23

    :cond_2a
    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_2b

    if-ne v3, v10, :cond_2c

    :cond_2b
    new-instance v3, Lf;

    const/4 v14, 0x4

    invoke-direct {v3, v7, v9, v14}, Lf;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/hapticfeedback/HapticFeedback;I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2c
    move-object/from16 v33, v3

    check-cast v33, Lkotlin/jvm/functions/Function0;

    const/16 v34, 0x1e

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v29 .. v34}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    and-int/lit16 v3, v6, 0x1c00

    const/16 v5, 0x800

    if-ne v3, v5, :cond_2d

    const/4 v3, 0x1

    goto :goto_24

    :cond_2d
    const/4 v3, 0x0

    :goto_24
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    const/high16 v5, 0x4000000

    if-ne v0, v5, :cond_2e

    const/4 v8, 0x1

    goto :goto_25

    :cond_2e
    const/4 v8, 0x0

    :goto_25
    or-int/2addr v3, v8

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_30

    if-ne v8, v10, :cond_2f

    goto :goto_26

    :cond_2f
    move-wide/from16 v13, p6

    move v15, v5

    move v11, v6

    move-object/from16 v2, v22

    goto :goto_27

    :cond_30
    :goto_26
    new-instance v3, Ld1;

    move-object v8, v9

    const/16 v9, 0x9

    move-wide/from16 v13, p6

    move v11, v6

    move-object v6, v15

    move v15, v5

    move-object v5, v2

    move-object/from16 v2, v22

    invoke-direct/range {v3 .. v9}, Ld1;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v8, v3

    :goto_27
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x1

    invoke-static {v1, v3, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v6, 0x36

    invoke-static {v3, v5, v12, v6}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v3

    iget-wide v5, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v12, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v9, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v9, :cond_3f

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_31

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_28

    :cond_31
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_28
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v3, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v6, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v3, v28

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_32

    invoke-static/range {p4 .. p4}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_32

    const v5, 0x698e8f19

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    const/4 v8, 0x0

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_29

    :cond_32
    const/4 v8, 0x0

    if-nez v26, :cond_33

    const v5, 0x698e9858

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->a:F

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_29

    :cond_33
    const v5, 0x698ea07a

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_29
    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v12, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    if-eqz p4, :cond_35

    invoke-static/range {p4 .. p4}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_34

    const v0, -0x37b8f4c6

    invoke-static {v12, v0, v3}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v28

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v32, 0x0

    const/16 v33, 0xb

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v31, v0

    invoke-static/range {v28 .. v33}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->q:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, 0x7f08035c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v23, 0x0

    const/16 v24, 0x7ec

    move-wide v9, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, v18

    const/16 v18, 0x0

    const/4 v5, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v35, v9

    move v10, v8

    move-wide/from16 v8, v35

    move-object/from16 v13, p4

    move-object/from16 v22, v12

    move-object v12, v0

    move v0, v5

    const/4 v5, 0x3

    invoke-static/range {v12 .. v24}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v12, v22

    move-object/from16 v22, v13

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_2f

    :cond_34
    :goto_2a
    move-object/from16 v22, p4

    move/from16 v17, v8

    move-wide v8, v13

    move-object/from16 v1, v18

    const/4 v5, 0x3

    const/16 v19, 0x2

    goto :goto_2b

    :cond_35
    const/4 v6, 0x1

    goto :goto_2a

    :goto_2b
    if-nez v26, :cond_3b

    const v13, -0x37b2b3cb

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v13, Lcom/vuitton/android/presentation/compose/components/TagFilterType;->ACTIVE_DELETABLE:Lcom/vuitton/android/presentation/compose/components/TagFilterType;

    if-ne v4, v13, :cond_36

    move v14, v6

    goto :goto_2c

    :cond_36
    move/from16 v14, v17

    :goto_2c
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v13, v16, v13

    if-ne v13, v5, :cond_37

    goto :goto_2d

    :cond_37
    move-object/from16 v23, v2

    :goto_2d
    if-ne v0, v15, :cond_38

    move v0, v6

    goto :goto_2e

    :cond_38
    move/from16 v0, v17

    :goto_2e
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v0, :cond_39

    if-ne v13, v10, :cond_3a

    :cond_39
    new-instance v13, Ly2;

    const/16 v0, 0x11

    invoke-direct {v13, v7, v0}, Ly2;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3a
    move-object/from16 v16, v13

    check-cast v16, Lkotlin/jvm/functions/Function1;

    const/16 v18, 0x0

    move/from16 v0, v19

    const/16 v19, 0x3

    move/from16 v15, v17

    move-object/from16 v17, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v10, v15

    move-object/from16 v15, v23

    invoke-static/range {v12 .. v19}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt;->a(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v12, v17

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2f

    :cond_3b
    move/from16 v10, v17

    move/from16 v0, v19

    const v13, -0x37adeacf

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2f
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14, v13, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v15

    const/16 v5, 0xc8

    const/4 v13, 0x6

    invoke-static {v5, v10, v14, v13}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v5

    invoke-static {v5, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v16

    new-instance v0, Le80;

    move-object/from16 v5, p1

    invoke-direct {v0, v1, v5, v8, v9}, Le80;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const v8, 0x823a179

    invoke-static {v8, v0, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v18

    shr-int/lit8 v0, v11, 0xc

    and-int/lit8 v0, v0, 0x70

    const v8, 0x186c06

    or-int v20, v8, v0

    const/16 v21, 0x12

    move-object/from16 v17, v12

    sget-object v12, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/4 v14, 0x0

    move-object/from16 v19, v17

    const/16 v17, 0x0

    move/from16 v13, v25

    invoke-static/range {v12 .. v21}, Landroidx/compose/animation/AnimatedVisibilityKt;->d(Landroidx/compose/foundation/layout/RowScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move v0, v13

    move-object/from16 v12, v19

    sget-object v8, Lcom/vuitton/android/presentation/compose/components/TagFilterType;->ACTIVE_DELETABLE:Lcom/vuitton/android/presentation/compose/components/TagFilterType;

    if-ne v4, v8, :cond_3c

    if-eqz v26, :cond_3c

    const v9, -0x37a4f71c

    const-string v11, "QAF_ActiveFilterCrossItem_image"

    invoke-static {v12, v9, v3, v11}, Ln00;->d(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v14, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v17, 0x0

    const/16 v18, 0xe

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget v11, Lcom/vuitton/android/designkit/ui/theme/IconSize;->b:F

    invoke-static {v9, v11}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->A:I

    invoke-static {v9, v12, v10}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v9

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->d:F

    invoke-static {v11, v6, v7}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v15

    const/16 v18, 0x38

    const/16 v19, 0x0

    const/4 v13, 0x0

    move-object/from16 v17, v12

    move-object v12, v9

    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    move-object/from16 v12, v17

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_30

    :cond_3c
    const v6, -0x379e0dcf

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_30
    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    if-eqz v22, :cond_3d

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v3

    const/4 v14, 0x1

    if-ne v3, v14, :cond_3d

    goto :goto_31

    :cond_3d
    if-ne v4, v8, :cond_3e

    if-eqz v26, :cond_3e

    :goto_31
    const v3, 0x698faa7a

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_32

    :cond_3e
    const v3, 0x698fb2fa

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_32
    invoke-static {v6, v3}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v12, v3}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const/4 v6, 0x1

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move v6, v0

    move-object v3, v1

    move-object v7, v2

    move-object/from16 v5, v22

    move/from16 v8, v26

    move-object/from16 v1, v27

    goto :goto_33

    :cond_3f
    const/4 v14, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v14

    :cond_40
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move/from16 v8, p7

    move v6, v5

    move-object/from16 v1, v18

    move-object/from16 v5, p4

    :goto_33
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_41

    new-instance v0, Lf80;

    move-object/from16 v2, p1

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lf80;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/TagFilterType;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_41
    return-void
.end method
