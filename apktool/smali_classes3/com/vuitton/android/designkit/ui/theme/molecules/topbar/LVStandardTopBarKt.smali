.class public abstract Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt$WhenMappings;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;III)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v12, p12

    move/from16 v14, p14

    const-string v1, "LVStandardTopBar"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x623a111

    move-object/from16 v3, p11

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v6, v12, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v6, v12, 0x6

    if-nez v6, :cond_3

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v12

    goto :goto_1

    :cond_3
    move v6, v12

    :goto_1
    and-int/lit8 v7, v14, 0x2

    const/4 v8, -0x1

    if-eqz v7, :cond_4

    or-int/lit8 v6, v6, 0x30

    goto :goto_4

    :cond_4
    and-int/lit8 v11, v12, 0x30

    if-nez v11, :cond_7

    if-nez p1, :cond_5

    move v11, v8

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    :goto_2
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x20

    goto :goto_3

    :cond_6
    const/16 v11, 0x10

    :goto_3
    or-int/2addr v6, v11

    :cond_7
    :goto_4
    and-int/lit8 v11, v14, 0x4

    if-eqz v11, :cond_9

    or-int/lit16 v6, v6, 0x180

    :cond_8
    move/from16 v13, p2

    goto :goto_6

    :cond_9
    and-int/lit16 v13, v12, 0x180

    if-nez v13, :cond_8

    move/from16 v13, p2

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x100

    goto :goto_5

    :cond_a
    const/16 v15, 0x80

    :goto_5
    or-int/2addr v6, v15

    :goto_6
    and-int/lit16 v15, v12, 0xc00

    if-nez v15, :cond_c

    move-object/from16 v15, p3

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x800

    goto :goto_7

    :cond_b
    const/16 v16, 0x400

    :goto_7
    or-int v6, v6, v16

    goto :goto_8

    :cond_c
    move-object/from16 v15, p3

    :goto_8
    and-int/lit8 v16, v14, 0x10

    if-eqz v16, :cond_e

    or-int/lit16 v6, v6, 0x6000

    :cond_d
    move-object/from16 v4, p4

    goto :goto_a

    :cond_e
    and-int/lit16 v4, v12, 0x6000

    if-nez v4, :cond_d

    move-object/from16 v4, p4

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    const/16 v17, 0x4000

    goto :goto_9

    :cond_f
    const/16 v17, 0x2000

    :goto_9
    or-int v6, v6, v17

    :goto_a
    and-int/lit8 v17, v14, 0x20

    const/high16 v18, 0x30000

    if-eqz v17, :cond_10

    or-int v6, v6, v18

    goto :goto_d

    :cond_10
    and-int v18, v12, v18

    if-nez v18, :cond_13

    if-nez p5, :cond_11

    goto :goto_b

    :cond_11
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    :goto_b
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_12

    const/high16 v8, 0x20000

    goto :goto_c

    :cond_12
    const/high16 v8, 0x10000

    :goto_c
    or-int/2addr v6, v8

    :cond_13
    :goto_d
    and-int/lit8 v8, v14, 0x40

    const/high16 v18, 0x180000

    if-eqz v8, :cond_14

    or-int v6, v6, v18

    move-object/from16 v9, p6

    goto :goto_f

    :cond_14
    and-int v18, v12, v18

    move-object/from16 v9, p6

    if-nez v18, :cond_16

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    const/high16 v18, 0x100000

    goto :goto_e

    :cond_15
    const/high16 v18, 0x80000

    :goto_e
    or-int v6, v6, v18

    :cond_16
    :goto_f
    and-int/lit16 v10, v14, 0x80

    const/high16 v19, 0xc00000

    if-eqz v10, :cond_17

    or-int v6, v6, v19

    move-object/from16 v5, p7

    goto :goto_11

    :cond_17
    and-int v19, v12, v19

    move-object/from16 v5, p7

    if-nez v19, :cond_19

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    const/high16 v20, 0x800000

    goto :goto_10

    :cond_18
    const/high16 v20, 0x400000

    :goto_10
    or-int v6, v6, v20

    :cond_19
    :goto_11
    const/high16 v20, 0x6000000

    and-int v20, v12, v20

    if-nez v20, :cond_1c

    move-object/from16 v20, v0

    and-int/lit16 v0, v14, 0x100

    if-nez v0, :cond_1a

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    const/high16 v21, 0x4000000

    goto :goto_12

    :cond_1a
    move-object/from16 v0, p8

    :cond_1b
    const/high16 v21, 0x2000000

    :goto_12
    or-int v6, v6, v21

    goto :goto_13

    :cond_1c
    move-object/from16 v20, v0

    move-object/from16 v0, p8

    :goto_13
    const/high16 v21, 0x30000000

    or-int v6, v6, v21

    and-int/lit16 v0, v14, 0x400

    if-eqz v0, :cond_1d

    or-int/lit8 v21, p13, 0x6

    move/from16 v22, v21

    move/from16 v21, v0

    move-object/from16 v0, p9

    goto :goto_15

    :cond_1d
    and-int/lit8 v21, p13, 0x6

    if-nez v21, :cond_1f

    move/from16 v21, v0

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    const/16 v22, 0x4

    goto :goto_14

    :cond_1e
    const/16 v22, 0x2

    :goto_14
    or-int v22, p13, v22

    goto :goto_15

    :cond_1f
    move/from16 v21, v0

    move-object/from16 v0, p9

    move/from16 v22, p13

    :goto_15
    and-int/lit16 v0, v14, 0x800

    if-eqz v0, :cond_21

    or-int/lit8 v22, v22, 0x30

    :cond_20
    move/from16 v23, v0

    move-object/from16 v0, p10

    goto :goto_17

    :cond_21
    and-int/lit8 v23, p13, 0x30

    if-nez v23, :cond_20

    move/from16 v23, v0

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_22

    const/16 v18, 0x20

    goto :goto_16

    :cond_22
    const/16 v18, 0x10

    :goto_16
    or-int v22, v22, v18

    :goto_17
    const v18, 0x12492493

    and-int v0, v6, v18

    move/from16 p0, v3

    const v3, 0x12492492

    const/4 v4, 0x1

    if-ne v0, v3, :cond_24

    and-int/lit8 v0, v22, 0x13

    const/16 v3, 0x12

    if-eq v0, v3, :cond_23

    goto :goto_18

    :cond_23
    const/4 v0, 0x0

    goto :goto_19

    :cond_24
    :goto_18
    move v0, v4

    :goto_19
    and-int/lit8 v3, v6, 0x1

    invoke-virtual {v2, v3, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_26

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_1a

    :cond_25
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v29, p1

    move-object/from16 v22, p4

    move-object/from16 v27, p5

    move-object/from16 v24, p9

    move-object/from16 v26, p10

    move-object/from16 v28, v5

    move-object/from16 v25, v9

    move-object/from16 v0, v20

    move-object/from16 v20, p8

    goto/16 :goto_22

    :cond_26
    :goto_1a
    if-eqz p0, :cond_27

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    :cond_27
    move-object/from16 v0, v20

    :goto_1b
    if-eqz v7, :cond_28

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_1c

    :cond_28
    move-object/from16 v1, p1

    :goto_1c
    if-eqz v11, :cond_29

    const/4 v13, 0x0

    :cond_29
    const/4 v3, 0x0

    if-eqz v16, :cond_2a

    move-object v6, v3

    goto :goto_1d

    :cond_2a
    move-object/from16 v6, p4

    :goto_1d
    if-eqz v17, :cond_2b

    sget-object v7, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;->BACK:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;

    goto :goto_1e

    :cond_2b
    move-object/from16 v7, p5

    :goto_1e
    if-eqz v8, :cond_2c

    move-object v9, v3

    :cond_2c
    if-eqz v10, :cond_2d

    sget-object v5, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/ComposableSingletons$LVStandardTopBarKt;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/ComposableSingletons$LVStandardTopBarKt;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/ComposableSingletons$LVStandardTopBarKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    :cond_2d
    and-int/lit16 v8, v14, 0x100

    if-eqz v8, :cond_2e

    invoke-static {v2}, Landroidx/compose/material3/TopAppBarDefaults;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v8

    goto :goto_1f

    :cond_2e
    move-object/from16 v8, p8

    :goto_1f
    if-eqz v21, :cond_2f

    move-object v10, v3

    goto :goto_20

    :cond_2f
    move-object/from16 v10, p9

    :goto_20
    if-eqz v23, :cond_30

    move-object/from16 v29, v1

    move-object/from16 v26, v3

    :goto_21
    move-object/from16 v28, v5

    move-object/from16 v22, v6

    move-object/from16 v27, v7

    move-object/from16 v20, v8

    move-object/from16 v25, v9

    move-object/from16 v24, v10

    goto :goto_22

    :cond_30
    move-object/from16 v26, p10

    move-object/from16 v29, v1

    goto :goto_21

    :goto_22
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt$WhenMappings;->a:[I

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v4, :cond_32

    const/4 v3, 0x2

    if-ne v1, v3, :cond_31

    const v1, -0x4a89738

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v3, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->f:J

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->n:J

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/RippleKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/RippleConfiguration;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;-><init>(JJJLandroidx/compose/material3/RippleConfiguration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_23

    :cond_31
    const/4 v1, 0x0

    const v0, -0x4a8c6cd

    invoke-static {v2, v0, v1}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_32
    const v1, -0x4a8c229

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v3, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/RippleKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/RippleConfiguration;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;-><init>(JJJLandroidx/compose/material3/RippleConfiguration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_23
    if-eqz v13, :cond_33

    sget-object v1, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v4, Landroidx/compose/ui/graphics/Color;->h:J

    :goto_24
    move-wide/from16 v17, v4

    goto :goto_25

    :cond_33
    iget-wide v4, v3, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;->a:J

    goto :goto_24

    :goto_25
    sget-object v1, Landroidx/compose/material3/RippleKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    iget-object v4, v3, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;->d:Landroidx/compose/material3/RippleConfiguration;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    new-instance v16, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;

    move-object/from16 v19, v0

    move-object/from16 v23, v3

    move-object/from16 v21, v15

    invoke-direct/range {v16 .. v29}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;-><init>(JLandroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function4;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;)V

    move-object/from16 v0, v16

    const v3, 0x3556022f

    invoke-static {v3, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v3, 0x38

    invoke-static {v1, v0, v2, v3}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v1, v19

    move-object/from16 v9, v20

    move-object/from16 v5, v22

    move-object/from16 v10, v24

    move-object/from16 v7, v25

    move-object/from16 v11, v26

    move-object/from16 v6, v27

    move-object/from16 v8, v28

    :goto_26
    move v3, v13

    goto :goto_27

    :cond_34
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v29, p1

    move-object/from16 v6, p5

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object v8, v5

    move-object v7, v9

    move-object/from16 v1, v20

    move-object/from16 v5, p4

    move-object/from16 v9, p8

    goto :goto_26

    :goto_27
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_35

    new-instance v0, Lwc;

    move-object/from16 v4, p3

    move/from16 v13, p13

    move-object/from16 v2, v29

    invoke-direct/range {v0 .. v14}, Lwc;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_35
    return-void
.end method
