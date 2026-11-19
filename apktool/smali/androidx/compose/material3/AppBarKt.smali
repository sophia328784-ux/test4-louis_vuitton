.class public abstract Landroidx/compose/material3/AppBarKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "touchExplorationServiceEnabled",
        "material3"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final b:F

.field public static final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    new-instance v0, Lg5;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lg5;-><init>(I)V

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->c(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/AppBarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v0, Lg5;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lg5;-><init>(I)V

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->c(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const/4 v1, 0x0

    const v2, 0x3e19999a    # 0.15f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v1, v3, v2}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Landroidx/compose/material3/AppBarKt;->b:F

    const/high16 v0, 0x41400000    # 12.0f

    sput v0, Landroidx/compose/material3/AppBarKt;->c:F

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    move-object/from16 v0, p1

    move/from16 v8, p8

    const-string v1, "CenterAlignedTopAppBar-GHTll3U"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x1203aca3

    move-object/from16 v3, p7

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v4, v8, 0x30

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_0

    :cond_2
    const/16 v4, 0x10

    :goto_0
    or-int/2addr v4, v8

    :goto_1
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_4

    or-int/lit16 v4, v4, 0xc00

    :cond_3
    move-object/from16 v6, p3

    goto :goto_3

    :cond_4
    and-int/lit16 v6, v8, 0xc00

    if-nez v6, :cond_3

    move-object/from16 v6, p3

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x800

    goto :goto_2

    :cond_5
    const/16 v7, 0x400

    :goto_2
    or-int/2addr v4, v7

    :goto_3
    const v7, 0x16000

    or-int/2addr v4, v7

    move-object/from16 v7, p6

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/high16 v9, 0x100000

    goto :goto_4

    :cond_6
    const/high16 v9, 0x80000

    :goto_4
    or-int/2addr v4, v9

    const/high16 v9, 0xc00000

    or-int/2addr v4, v9

    const v9, 0x492493

    and-int/2addr v9, v4

    const v10, 0x492492

    if-eq v9, v10, :cond_7

    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_5
    and-int/lit8 v10, v4, 0x1

    invoke-virtual {v2, v10, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v9, v8, 0x1

    const v10, -0x70001

    if-eqz v9, :cond_9

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int v1, v4, v10

    move-object/from16 v17, p5

    move v4, v1

    move/from16 v1, p4

    :goto_6
    move-object v9, v0

    move-object v15, v6

    goto :goto_8

    :cond_9
    :goto_7
    if-eqz v3, :cond_a

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_a
    if-eqz v5, :cond_b

    sget-object v1, Landroidx/compose/material3/ComposableSingletons$AppBarKt;->a:Landroidx/compose/material3/ComposableSingletons$AppBarKt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/material3/ComposableSingletons$AppBarKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v6, v1

    :cond_b
    sget v1, Landroidx/compose/material3/TopAppBarDefaults;->a:F

    invoke-static {v2}, Landroidx/compose/material3/TopAppBarDefaults;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v3

    and-int/2addr v4, v10

    move-object/from16 v17, v3

    goto :goto_6

    :goto_8
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/material3/tokens/AppBarSmallTokens;->b:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    invoke-static {v0, v2}, Landroidx/compose/material3/TypographyKt;->a(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v11

    sget-object v0, Landroidx/compose/ui/text/TextStyle;->d:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/text/TextStyle;->e:Landroidx/compose/ui/text/TextStyle;

    sget-object v0, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/unit/Dp;->e:F

    invoke-static {v1, v0}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v0

    if-nez v0, :cond_d

    sget v0, Landroidx/compose/ui/unit/Dp;->d:F

    invoke-static {v1, v0}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_9

    :cond_c
    move/from16 v16, v1

    goto :goto_a

    :cond_d
    :goto_9
    sget v0, Landroidx/compose/material3/TopAppBarDefaults;->a:F

    move/from16 v16, v0

    :goto_a
    shr-int/lit8 v0, v4, 0x3

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v3, v4, 0xc

    const v5, 0x1b6c30

    or-int/2addr v0, v5

    const/high16 v5, 0x1c00000

    and-int/2addr v3, v5

    or-int v20, v0, v3

    shr-int/lit8 v0, v4, 0x12

    and-int/lit8 v21, v0, 0x7e

    move-object/from16 v10, p0

    move-object/from16 v14, p2

    move-object/from16 v19, v2

    move-object/from16 v18, v7

    invoke-static/range {v9 .. v21}, Landroidx/compose/material3/AppBarKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;II)V

    move v5, v1

    move-object v2, v9

    move-object v4, v15

    move-object/from16 v6, v17

    goto :goto_b

    :cond_e
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v5, p4

    move-object v2, v0

    move-object v4, v6

    move-object/from16 v6, p5

    :goto_b
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_f

    new-instance v0, Lx6;

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lx6;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;III)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;II)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v11, p11

    if-eqz v0, :cond_0

    const-string v1, "SingleRowTopAppBar-wn8IZOc"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v13, v0

    const v0, -0x793953af

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v11, 0x6

    if-nez v1, :cond_2

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v11

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_1
    and-int/lit8 v4, v11, 0x30

    const/16 v6, 0x20

    move-object/from16 v14, p1

    if-nez v4, :cond_4

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v6

    goto :goto_2

    :cond_3
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_4
    and-int/lit16 v4, v11, 0x180

    move-object/from16 v15, p2

    if-nez v4, :cond_6

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x100

    goto :goto_3

    :cond_5
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v1, v4

    :cond_6
    and-int/lit16 v4, v11, 0xc00

    const/4 v7, 0x0

    if-nez v4, :cond_8

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x800

    goto :goto_4

    :cond_7
    const/16 v4, 0x400

    :goto_4
    or-int/2addr v1, v4

    :cond_8
    and-int/lit16 v4, v11, 0x6000

    if-nez v4, :cond_a

    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x4000

    goto :goto_5

    :cond_9
    const/16 v8, 0x2000

    :goto_5
    or-int/2addr v1, v8

    goto :goto_6

    :cond_a
    move-object/from16 v4, p3

    :goto_6
    const/high16 v8, 0x30000

    and-int/2addr v8, v11

    if-nez v8, :cond_c

    move-object/from16 v8, p4

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/high16 v9, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v9, 0x10000

    :goto_7
    or-int/2addr v1, v9

    goto :goto_8

    :cond_c
    move-object/from16 v8, p4

    :goto_8
    const/high16 v9, 0x180000

    and-int/2addr v9, v11

    if-nez v9, :cond_e

    move-object/from16 v9, p5

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/high16 v10, 0x100000

    goto :goto_9

    :cond_d
    const/high16 v10, 0x80000

    :goto_9
    or-int/2addr v1, v10

    goto :goto_a

    :cond_e
    move-object/from16 v9, p5

    :goto_a
    const/high16 v10, 0xc00000

    and-int/2addr v10, v11

    if-nez v10, :cond_10

    move-object/from16 v10, p6

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/high16 v12, 0x800000

    goto :goto_b

    :cond_f
    const/high16 v12, 0x400000

    :goto_b
    or-int/2addr v1, v12

    goto :goto_c

    :cond_10
    move-object/from16 v10, p6

    :goto_c
    const/high16 v12, 0x6000000

    and-int/2addr v12, v11

    if-nez v12, :cond_12

    move/from16 v12, p7

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x4000000

    goto :goto_d

    :cond_11
    const/high16 v16, 0x2000000

    :goto_d
    or-int v1, v1, v16

    goto :goto_e

    :cond_12
    move/from16 v12, p7

    :goto_e
    const/high16 v16, 0x30000000

    and-int v16, v11, v16

    move-object/from16 v2, p8

    if-nez v16, :cond_14

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x20000000

    goto :goto_f

    :cond_13
    const/high16 v16, 0x10000000

    :goto_f
    or-int v1, v1, v16

    :cond_14
    and-int/lit8 v16, p12, 0x6

    move-object/from16 v3, p9

    if-nez v16, :cond_16

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    const/16 v16, 0x4

    goto :goto_10

    :cond_15
    const/16 v16, 0x2

    :goto_10
    or-int v16, p12, v16

    goto :goto_11

    :cond_16
    move/from16 v16, p12

    :goto_11
    and-int/lit8 v17, p12, 0x30

    const/4 v5, 0x0

    if-nez v17, :cond_18

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    goto :goto_12

    :cond_17
    const/16 v6, 0x10

    :goto_12
    or-int v16, v16, v6

    :cond_18
    const v6, 0x12492493

    and-int/2addr v6, v1

    const v5, 0x12492492

    const/4 v7, 0x0

    const/16 v17, 0x1

    if-ne v6, v5, :cond_1a

    and-int/lit8 v5, v16, 0x13

    const/16 v6, 0x12

    if-eq v5, v6, :cond_19

    goto :goto_13

    :cond_19
    move v5, v7

    goto :goto_14

    :cond_1a
    :goto_13
    move/from16 v5, v17

    :goto_14
    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v12, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    const/16 v25, 0x0

    move/from16 v21, p7

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    const/16 v16, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v12 .. v25}, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Landroidx/compose/material3/AppBarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/SingleRowTopAppBarOverride;

    invoke-interface {v1, v12, v0, v7}, Landroidx/compose/material3/SingleRowTopAppBarOverride;->a(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;Landroidx/compose/runtime/Composer;I)V

    goto :goto_15

    :cond_1b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_15
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_1c

    new-instance v0, Ly6;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v12, p12

    move-object v1, v13

    invoke-direct/range {v0 .. v12}, Ly6;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;II)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method

.method public static final c(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    move-object/from16 v0, p1

    move/from16 v8, p8

    if-eqz v0, :cond_0

    const-string v1, "TopAppBar-GHTll3U"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v9, v0

    const v0, 0x6a5c1dd0

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v8, 0x6

    move-object/from16 v10, p0

    if-nez v1, :cond_2

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v8

    goto :goto_1

    :cond_2
    move v1, v8

    :goto_1
    and-int/lit8 v2, v8, 0x30

    if-nez v2, :cond_4

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    goto :goto_2

    :cond_3
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_4
    and-int/lit16 v2, v8, 0x180

    move-object/from16 v14, p2

    if-nez v2, :cond_6

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x100

    goto :goto_3

    :cond_5
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_6
    and-int/lit16 v2, v8, 0xc00

    move-object/from16 v15, p3

    if-nez v2, :cond_8

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x800

    goto :goto_4

    :cond_7
    const/16 v2, 0x400

    :goto_4
    or-int/2addr v1, v2

    :cond_8
    or-int/lit16 v1, v1, 0x6000

    const/high16 v2, 0x30000

    and-int/2addr v2, v8

    move-object/from16 v6, p5

    if-nez v2, :cond_a

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/high16 v2, 0x20000

    goto :goto_5

    :cond_9
    const/high16 v2, 0x10000

    :goto_5
    or-int/2addr v1, v2

    :cond_a
    const/high16 v2, 0x180000

    and-int/2addr v2, v8

    move-object/from16 v7, p6

    if-nez v2, :cond_c

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/high16 v2, 0x100000

    goto :goto_6

    :cond_b
    const/high16 v2, 0x80000

    :goto_6
    or-int/2addr v1, v2

    :cond_c
    move/from16 v2, p9

    and-int/lit16 v3, v2, 0x80

    const/high16 v4, 0xc00000

    if-eqz v3, :cond_d

    or-int/2addr v1, v4

    goto :goto_8

    :cond_d
    and-int v3, v8, v4

    if-nez v3, :cond_f

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/high16 v3, 0x800000

    goto :goto_7

    :cond_e
    const/high16 v3, 0x400000

    :goto_7
    or-int/2addr v1, v3

    :cond_f
    :goto_8
    const v3, 0x492493

    and-int/2addr v3, v1

    const v4, 0x492492

    if-eq v3, v4, :cond_10

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    and-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v3, v8, 0x1

    if-eqz v3, :cond_12

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v3, p4

    goto :goto_b

    :cond_12
    :goto_a
    sget v3, Landroidx/compose/material3/TopAppBarDefaults;->a:F

    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/material3/tokens/AppBarSmallTokens;->b:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    invoke-static {v4, v0}, Landroidx/compose/material3/TypographyKt;->a(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v11

    sget-object v4, Landroidx/compose/ui/text/TextStyle;->d:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/text/TextStyle;->e:Landroidx/compose/ui/text/TextStyle;

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v4, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/unit/Dp;->e:F

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v4

    if-nez v4, :cond_14

    sget v4, Landroidx/compose/ui/unit/Dp;->d:F

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_c

    :cond_13
    move/from16 v16, v3

    goto :goto_d

    :cond_14
    :goto_c
    sget v4, Landroidx/compose/material3/TopAppBarDefaults;->a:F

    move/from16 v16, v4

    :goto_d
    shr-int/lit8 v4, v1, 0x3

    and-int/lit8 v4, v4, 0xe

    const v5, 0x36c00

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x3

    and-int/lit8 v5, v5, 0x70

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0xc

    const/high16 v17, 0x380000

    and-int v17, v5, v17

    or-int v4, v4, v17

    const/high16 v17, 0x1c00000

    and-int v17, v5, v17

    or-int v4, v4, v17

    const/high16 v17, 0x70000000

    and-int v5, v5, v17

    or-int v20, v4, v5

    shr-int/lit8 v1, v1, 0x12

    and-int/lit8 v21, v1, 0x7e

    move-object/from16 v19, v0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-static/range {v9 .. v21}, Landroidx/compose/material3/AppBarKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;II)V

    move v5, v3

    goto :goto_e

    :cond_15
    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v5, p4

    :goto_e
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_16

    new-instance v0, Lx6;

    const/4 v10, 0x1

    move-object v1, v9

    move v9, v2

    move-object v2, v1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v10}, Lx6;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;III)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public static final d(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;FLandroidx/compose/runtime/Composer;I)V
    .locals 42

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v9, p8

    move-object/from16 v2, p15

    move-object/from16 v5, p16

    sget-object v16, Landroidx/compose/foundation/layout/Arrangement;->e:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    const-string v6, "TopAppBarLayout-lyUyIHI"

    if-eqz v0, :cond_0

    invoke-static {v0, v6}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v7, 0x788a5dc

    move-object/from16 v8, p19

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    iget-object v8, v7, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x4

    goto :goto_0

    :cond_1
    const/4 v11, 0x2

    :goto_0
    or-int v11, p20, v11

    move-object/from16 v15, p1

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/16 v14, 0x20

    goto :goto_1

    :cond_2
    const/16 v14, 0x10

    :goto_1
    or-int/2addr v11, v14

    invoke-virtual {v7, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v14

    const/16 v17, 0x80

    if-eqz v14, :cond_3

    const/16 v14, 0x100

    goto :goto_2

    :cond_3
    move/from16 v14, v17

    :goto_2
    or-int/2addr v11, v14

    move-wide/from16 v12, p4

    invoke-virtual {v7, v12, v13}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x800

    goto :goto_3

    :cond_4
    const/16 v18, 0x400

    :goto_3
    or-int v11, v11, v18

    move v13, v11

    move-wide/from16 v11, p6

    invoke-virtual {v7, v11, v12}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x4000

    goto :goto_4

    :cond_5
    const/16 v18, 0x2000

    :goto_4
    or-int v13, v13, v18

    invoke-virtual {v7, v9, v10}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v18

    const/high16 v19, 0x10000

    const/high16 v20, 0x20000

    if-eqz v18, :cond_6

    move/from16 v18, v20

    goto :goto_5

    :cond_6
    move/from16 v18, v19

    :goto_5
    or-int v13, v13, v18

    move-object/from16 v23, v8

    move-object/from16 v8, p10

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/high16 v18, 0x100000

    goto :goto_6

    :cond_7
    const/high16 v18, 0x80000

    :goto_6
    or-int v13, v13, v18

    move-object/from16 v8, p11

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    const/high16 v21, 0x400000

    if-eqz v18, :cond_8

    const/high16 v18, 0x800000

    goto :goto_7

    :cond_8
    move/from16 v18, v21

    :goto_7
    or-int v13, v13, v18

    move-object/from16 v14, p12

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    const/high16 v24, 0x4000000

    goto :goto_8

    :cond_9
    const/high16 v24, 0x2000000

    :goto_8
    or-int v13, v13, v24

    move-object/from16 v8, p13

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    const/high16 v24, 0x20000000

    goto :goto_9

    :cond_a
    const/high16 v24, 0x10000000

    :goto_9
    or-int v13, v13, v24

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    const/16 v17, 0x100

    :cond_b
    const v24, 0x186c36

    or-int v17, v24, v17

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    move/from16 v19, v20

    :cond_c
    or-int v17, v17, v19

    move/from16 v2, p18

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v19

    if-eqz v19, :cond_d

    const/high16 v21, 0x800000

    :cond_d
    or-int v2, v17, v21

    const v17, 0x12492493

    and-int v8, v13, v17

    const v11, 0x12492492

    if-ne v8, v11, :cond_f

    const v8, 0x492493

    and-int/2addr v8, v2

    const v11, 0x492492

    if-eq v8, v11, :cond_e

    goto :goto_a

    :cond_e
    const/4 v8, 0x0

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v8, 0x1

    :goto_b
    and-int/lit8 v11, v13, 0x1

    invoke-virtual {v7, v11, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_2c

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v8, v13, 0x70

    const/16 v11, 0x20

    if-eq v8, v11, :cond_10

    const/4 v8, 0x0

    goto :goto_c

    :cond_10
    const/4 v8, 0x1

    :goto_c
    and-int/lit16 v11, v2, 0x380

    const/16 v12, 0x100

    if-ne v11, v12, :cond_11

    const/4 v12, 0x1

    goto :goto_d

    :cond_11
    const/4 v12, 0x0

    :goto_d
    or-int/2addr v8, v12

    const/high16 v12, 0x1c00000

    and-int/2addr v12, v2

    move/from16 v21, v2

    const/high16 v2, 0x800000

    if-ne v12, v2, :cond_12

    const/4 v2, 0x1

    goto :goto_e

    :cond_12
    const/4 v2, 0x0

    :goto_e
    or-int/2addr v2, v8

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_13

    if-ne v8, v12, :cond_14

    :cond_13
    new-instance v14, Landroidx/compose/material3/TopAppBarMeasurePolicy;

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p15

    move/from16 v19, p18

    invoke-direct/range {v14 .. v20}, Landroidx/compose/material3/TopAppBarMeasurePolicy;-><init>(Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;IFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v8, v14

    :cond_14
    check-cast v8, Landroidx/compose/material3/TopAppBarMeasurePolicy;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->G()I

    move-result v14

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    move/from16 v16, v11

    invoke-static {v7, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v25, v0

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v26, 0x0

    if-eqz v23, :cond_2b

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    move/from16 v27, v13

    iget-boolean v13, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_15

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_f

    :cond_15
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_f
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v8, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v15, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    iget-boolean v9, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v9, :cond_16

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    :cond_16
    invoke-static {v14, v7, v14, v15}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_17
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v11, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v11, "navigationIcon"

    invoke-static {v10, v11}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v28

    const/16 v32, 0x0

    const/16 v33, 0xe

    sget v29, Landroidx/compose/material3/AppBarKt;->b:F

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-static/range {v28 .. v33}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    move/from16 v11, v29

    sget-object v14, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v2, 0x0

    invoke-static {v14, v2}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->G()I

    move-result v2

    move-object/from16 v28, v14

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v7, v10}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    if-eqz v23, :cond_2a

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v17, v12

    iget-boolean v12, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_18

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_18
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_10
    invoke-static {v7, v1, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7, v14, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v1, :cond_19

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_19
    invoke-static {v2, v7, v2, v15}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_1a
    invoke-static {v7, v10, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/material3/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {v3, v4, v1}, La;->d(JLandroidx/compose/runtime/DynamicProvidableCompositionLocal;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    shr-int/lit8 v10, v21, 0xc

    and-int/lit8 v10, v10, 0x70

    const/16 v12, 0x8

    or-int/2addr v10, v12

    invoke-static {v2, v5, v7, v10}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v12, 0x0

    const-string v14, "title"

    if-eqz p12, :cond_20

    const v2, -0x511af308

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v14}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v14, 0x2

    invoke-static {v2, v11, v12, v14}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v12, 0x1e6aa3ad

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v12, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v12, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v12}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v10, v17

    const/16 v18, 0x3

    if-ne v12, v10, :cond_1b

    new-instance v12, Ly2;

    move-object/from16 v10, p14

    invoke-direct {v12, v10, v14}, Ly2;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_11

    :cond_1b
    move-object/from16 v10, p14

    :goto_11
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v12}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    shr-int/lit8 v14, v16, 0x3

    and-int/lit8 v14, v14, 0x70

    move-object/from16 v3, p15

    invoke-static {v12, v3, v7, v14}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->G()I

    move-result v12

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v7, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz v23, :cond_1f

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v3, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v3, :cond_1c

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_1c
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_12
    invoke-static {v7, v4, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7, v14, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v3, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v3, :cond_1d

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_1d
    invoke-static {v12, v7, v12, v15}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_1e
    invoke-static {v7, v2, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v2, v27, 0x9

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v3, v27, 0x12

    and-int/lit8 v4, v3, 0x70

    or-int/2addr v2, v4

    shr-int/lit8 v4, v27, 0xc

    and-int/lit16 v12, v4, 0x380

    or-int v22, v2, v12

    move-wide/from16 v17, p4

    move-object/from16 v20, p10

    move-object/from16 v19, p11

    move-object/from16 v21, v7

    invoke-static/range {v17 .. v22}, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt;->a(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    and-int/lit8 v2, v4, 0xe

    shr-int/lit8 v4, v27, 0x18

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v2, v4

    and-int/lit16 v3, v3, 0x380

    or-int v16, v2, v3

    move-object/from16 v14, p12

    move/from16 v40, v11

    move-object v2, v13

    move-object v3, v15

    move-object/from16 v15, v21

    move-object/from16 v4, v28

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-wide/from16 v11, p6

    move-object/from16 v13, p13

    invoke-static/range {v11 .. v16}, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt;->a(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v12, v5

    move-object v11, v10

    move/from16 v7, v40

    goto/16 :goto_14

    :cond_1f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v26

    :cond_20
    move/from16 v40, v11

    move-object v3, v15

    move-object/from16 v10, v17

    move-object/from16 v4, v28

    const/4 v5, 0x0

    const/16 v18, 0x3

    move-object/from16 v11, p14

    move-object v15, v7

    move v7, v2

    move-object v2, v13

    const v13, -0x510b6613

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v13, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v13, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v14}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    move/from16 v7, v40

    const/4 v14, 0x2

    invoke-static {v13, v7, v12, v14}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v12

    const v13, 0x1e6b2c0d

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v13, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v13, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v13}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v10, :cond_21

    new-instance v13, Ly2;

    move/from16 v10, v18

    invoke-direct {v13, v11, v10}, Ly2;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->G()I

    move-result v13

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v15, v10}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    if-eqz v23, :cond_29

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v5, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_22

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_13

    :cond_22
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_13
    invoke-static {v15, v12, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v15, v14, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v5, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v5, :cond_23

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    :cond_23
    invoke-static {v13, v15, v13, v3}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_24
    invoke-static {v15, v10, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v5, v27, 0x9

    and-int/lit8 v5, v5, 0xe

    shr-int/lit8 v10, v27, 0x12

    and-int/lit8 v10, v10, 0x70

    or-int/2addr v5, v10

    shr-int/lit8 v10, v27, 0xc

    and-int/lit16 v10, v10, 0x380

    or-int v22, v5, v10

    move-wide/from16 v17, p4

    move-object/from16 v20, p10

    move-object/from16 v19, p11

    move-object/from16 v21, v15

    invoke-static/range {v17 .. v22}, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt;->a(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v12, 0x0

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_14
    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v6, "actionIcons"

    invoke-static {v5, v6}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v34

    const/16 v38, 0x0

    const/16 v39, 0xb

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v37, v7

    invoke-static/range {v34 .. v39}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v4, v12}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->G()I

    move-result v6

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v15, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v23, :cond_28

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_25

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_15

    :cond_25
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_15
    invoke-static {v15, v4, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v15, v7, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v0, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v0, :cond_26

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_26
    invoke-static {v6, v15, v6, v3}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_27
    invoke-static {v15, v5, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v9, p8

    invoke-direct {v0, v9, v10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/16 v1, 0x38

    move-object/from16 v2, p17

    invoke-static {v0, v2, v15, v1}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_16

    :cond_28
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v26

    :cond_29
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v26

    :cond_2a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v26

    :cond_2b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v26

    :cond_2c
    move-object/from16 v11, p14

    move-object/from16 v2, p17

    move-object/from16 v25, v0

    move-object v15, v7

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_16
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2d

    move-object v1, v0

    new-instance v0, Lz6;

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v19, p18

    move/from16 v20, p20

    move-object/from16 v41, v1

    move-object/from16 v18, v2

    move-object v15, v11

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v20}, Lz6;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;FI)V

    move-object/from16 v1, v41

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2d
    return-void
.end method

.method public static final e(Landroidx/compose/material3/TopAppBarState;FLandroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p4, Landroidx/compose/material3/AppBarKt$settleAppBar$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/compose/material3/AppBarKt$settleAppBar$1;

    iget v1, v0, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->f:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/compose/material3/AppBarKt$settleAppBar$1;

    invoke-direct {v0, p4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p4, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->e:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-ne v1, v4, :cond_1

    iget-object p0, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p0, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object p3, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->c:Landroidx/compose/animation/core/AnimationSpec;

    iget-object p1, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/material3/TopAppBarState;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p4, p0

    move-object p0, p1

    goto :goto_2

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->a()F

    move-result p4

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float p4, p4, v1

    if-ltz p4, :cond_9

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->a()F

    move-result p4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p4, p4, v1

    if-nez p4, :cond_4

    goto/16 :goto_7

    :cond_4
    new-instance p4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iput p1, p4, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    if-eqz p2, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v1, v7, v1

    if-lez v1, :cond_5

    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/16 v7, 0x1c

    invoke-static {v8, p1, v7}, Landroidx/compose/animation/core/AnimationStateKt;->a(FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object p1

    new-instance v7, Lv6;

    invoke-direct {v7, v1, p0, p4, v2}, Lv6;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/internal/Ref$FloatRef;I)V

    iput-object p0, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->b:Ljava/lang/Object;

    iput-object p3, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->c:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p4, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iput v5, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->f:I

    invoke-static {p1, p2, v2, v7, v6}, Landroidx/compose/animation/core/SuspendAnimationKt;->e(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_5

    :cond_5
    :goto_2
    if-eqz p3, :cond_8

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result p1

    cmpg-float p1, p1, v8

    if-gez p1, :cond_8

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result p1

    iget p2, p0, Landroidx/compose/material3/TopAppBarState;->a:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_8

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result p1

    const/16 p2, 0x1e

    invoke-static {p1, v8, p2}, Landroidx/compose/animation/core/AnimationStateKt;->a(FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->a()F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    move p1, v8

    :goto_3
    move p2, v2

    goto :goto_4

    :cond_6
    iget p1, p0, Landroidx/compose/material3/TopAppBarState;->a:F

    goto :goto_3

    :goto_4
    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v5, Lw6;

    invoke-direct {v5, p0, p2}, Lw6;-><init>(Landroidx/compose/material3/TopAppBarState;I)V

    iput-object p4, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->b:Ljava/lang/Object;

    iput-object v3, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->c:Landroidx/compose/animation/core/AnimationSpec;

    iput-object v3, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iput v4, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->f:I

    const/4 v4, 0x0

    const/4 v7, 0x4

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/core/SuspendAnimationKt;->g(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Float;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    :goto_5
    return-object v0

    :cond_7
    move-object p0, p4

    :goto_6
    move-object p4, p0

    :cond_8
    iget p0, p4, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    invoke-static {v8, p0}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    move-result-wide p0

    new-instance p2, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {p2, p0, p1}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    return-object p2

    :cond_9
    :goto_7
    sget-object p0, Landroidx/compose/ui/unit/Velocity;->b:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/compose/ui/unit/Velocity;

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    return-object p0
.end method
