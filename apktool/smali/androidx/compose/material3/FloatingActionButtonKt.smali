.class public abstract Landroidx/compose/material3/FloatingActionButtonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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
.field public static final a:F

.field public static final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/material3/tokens/ExtendedFabSmallTokens;->a:I

    sget-object v0, Landroidx/compose/material3/tokens/TypographyKeyTokens;->BodyLarge:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sget v0, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->a:I

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    sget v0, Landroidx/compose/material3/tokens/ExtendedFabLargeTokens;->a:I

    const/high16 v0, 0x41a00000    # 20.0f

    sput v0, Landroidx/compose/material3/FloatingActionButtonKt;->a:F

    const/high16 v0, 0x42a00000    # 80.0f

    sput v0, Landroidx/compose/material3/FloatingActionButtonKt;->b:F

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    move-object/from16 v0, p1

    const-string v1, "ExtendedFloatingActionButton-X-z6DiA"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, 0x3df6d14a

    move-object/from16 v3, p9

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    move-object/from16 v14, p0

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int v2, p10, v2

    const v3, 0x1924b0

    or-int/2addr v2, v3

    const v3, 0x492493

    and-int/2addr v3, v2

    const v4, 0x492492

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    and-int/lit8 v4, v2, 0x1

    invoke-virtual {v12, v4, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v3, p10, 0x1

    const v4, -0x7ff81

    if-eqz v3, :cond_4

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int v1, v2, v4

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    :goto_2
    move-object v4, v0

    goto :goto_4

    :cond_4
    :goto_3
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget v1, Landroidx/compose/material3/FloatingActionButtonDefaults;->a:I

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/material3/tokens/ExtendedFabPrimaryTokens;->a:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v1, v12}, Landroidx/compose/material3/ShapesKt;->a(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    sget-object v3, Landroidx/compose/material3/tokens/FabPrimaryContainerTokens;->a:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v12}, Landroidx/compose/material3/ColorSchemeKt;->d(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v5

    invoke-static {v5, v6, v12}, Landroidx/compose/material3/ColorSchemeKt;->b(JLandroidx/compose/runtime/Composer;)J

    move-result-wide v7

    const/16 v3, 0xf

    invoke-static {v3}, Landroidx/compose/material3/FloatingActionButtonDefaults;->a(I)Landroidx/compose/material3/FloatingActionButtonElevation;

    move-result-object v3

    and-int/2addr v2, v4

    move-object v10, v3

    move-wide v8, v7

    move-wide v6, v5

    move-object v5, v1

    move v1, v2

    goto :goto_2

    :goto_4
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Landroidx/compose/material3/FloatingActionButtonKt$ExtendedFloatingActionButton$1;

    move-object/from16 v2, p8

    invoke-direct {v0, v2}, Landroidx/compose/material3/FloatingActionButtonKt$ExtendedFloatingActionButton$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    const v3, -0x498c6034

    invoke-static {v3, v0, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    and-int/lit8 v0, v1, 0xe

    const v1, 0xd80030

    or-int v13, v0, v1

    const/4 v14, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v14}, Landroidx/compose/material3/FloatingActionButtonKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object v15, v4

    move-object/from16 v16, v5

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-object/from16 v21, v10

    goto :goto_5

    :cond_5
    move-object/from16 v2, p8

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v16, p2

    move-wide/from16 v17, p3

    move-wide/from16 v19, p5

    move-object/from16 v21, p7

    move-object v15, v0

    :goto_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v13, Lkz;

    move-object/from16 v14, p0

    move/from16 v23, p10

    move-object/from16 v22, v2

    invoke-direct/range {v13 .. v23}, Lkz;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Lkotlin/jvm/functions/Function3;I)V

    iput-object v13, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 26

    move-object/from16 v0, p1

    move/from16 v10, p10

    if-eqz v0, :cond_0

    const-string v1, "FloatingActionButton-X-z6DiA"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v15, v0

    const v0, 0x2c98a4e4

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v10, 0x6

    move-object/from16 v11, p0

    if-nez v1, :cond_2

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v10

    goto :goto_1

    :cond_2
    move v1, v10

    :goto_1
    and-int/lit8 v2, v10, 0x30

    if-nez v2, :cond_4

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    goto :goto_2

    :cond_3
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_4
    and-int/lit16 v2, v10, 0x180

    move-object/from16 v3, p2

    if-nez v2, :cond_6

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x100

    goto :goto_3

    :cond_5
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_6
    and-int/lit16 v2, v10, 0xc00

    move-wide/from16 v4, p3

    if-nez v2, :cond_8

    invoke-virtual {v0, v4, v5}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x800

    goto :goto_4

    :cond_7
    const/16 v2, 0x400

    :goto_4
    or-int/2addr v1, v2

    :cond_8
    and-int/lit16 v2, v10, 0x6000

    move-wide/from16 v6, p5

    if-nez v2, :cond_a

    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x4000

    goto :goto_5

    :cond_9
    const/16 v2, 0x2000

    :goto_5
    or-int/2addr v1, v2

    :cond_a
    const/high16 v2, 0x30000

    and-int/2addr v2, v10

    move-object/from16 v8, p7

    if-nez v2, :cond_c

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/high16 v2, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v2, 0x10000

    :goto_6
    or-int/2addr v1, v2

    :cond_c
    and-int/lit8 v2, p11, 0x40

    const/high16 v9, 0x180000

    if-eqz v2, :cond_d

    or-int/2addr v1, v9

    goto :goto_8

    :cond_d
    and-int v2, v10, v9

    if-nez v2, :cond_f

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/high16 v2, 0x100000

    goto :goto_7

    :cond_e
    const/high16 v2, 0x80000

    :goto_7
    or-int/2addr v1, v2

    :cond_f
    :goto_8
    const/high16 v2, 0xc00000

    and-int/2addr v2, v10

    move-object/from16 v9, p8

    if-nez v2, :cond_11

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/high16 v2, 0x800000

    goto :goto_9

    :cond_10
    const/high16 v2, 0x400000

    :goto_9
    or-int/2addr v1, v2

    :cond_11
    const v2, 0x492493

    and-int/2addr v2, v1

    const v12, 0x492492

    if-eq v2, v12, :cond_12

    const/4 v2, 0x1

    goto :goto_a

    :cond_12
    const/4 v2, 0x0

    :goto_a
    and-int/lit8 v12, v1, 0x1

    invoke-virtual {v0, v12, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_b

    :cond_13
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :cond_14
    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/material3/tokens/ExtendedFabPrimaryTokens;->b:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    invoke-static {v2, v0}, Landroidx/compose/material3/TypographyKt;->a(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v12

    sget v13, Landroidx/compose/material3/tokens/FabBaselineTokens;->b:F

    sget v14, Landroidx/compose/material3/tokens/FabBaselineTokens;->a:F

    and-int/lit8 v2, v1, 0xe

    or-int/lit16 v2, v2, 0xd80

    shl-int/lit8 v16, v1, 0x9

    const v17, 0xe000

    and-int v17, v16, v17

    or-int v2, v2, v17

    const/high16 v17, 0x70000

    and-int v17, v16, v17

    or-int v2, v2, v17

    const/high16 v17, 0x380000

    and-int v17, v16, v17

    or-int v2, v2, v17

    const/high16 v17, 0x1c00000

    and-int v17, v16, v17

    or-int v2, v2, v17

    const/high16 v17, 0xe000000

    and-int v17, v16, v17

    or-int v2, v2, v17

    const/high16 v17, 0x70000000

    and-int v16, v16, v17

    or-int v24, v2, v16

    shr-int/lit8 v1, v1, 0x15

    and-int/lit8 v25, v1, 0xe

    move-object/from16 v23, v0

    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    invoke-static/range {v11 .. v25}, Landroidx/compose/material3/FloatingActionButtonKt;->c(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/TextStyle;FFLandroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    goto :goto_c

    :cond_15
    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_c
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_16

    new-instance v0, Llz;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v11, p11

    move-object v2, v15

    invoke-direct/range {v0 .. v11}, Llz;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public static final c(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/TextStyle;FFLandroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 30

    move-object/from16 v0, p4

    move-object/from16 v11, p10

    move/from16 v13, p13

    if-eqz v0, :cond_0

    const-string v1, "FloatingActionButton-lF-WlFE"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v5, v0

    const v0, 0x740892c

    move-object/from16 v1, p12

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v13, 0x6

    if-nez v1, :cond_2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v13

    goto :goto_1

    :cond_2
    move-object/from16 v1, p0

    move v4, v13

    :goto_1
    and-int/lit8 v6, v13, 0x30

    if-nez v6, :cond_4

    move-object/from16 v6, p1

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x20

    goto :goto_2

    :cond_3
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    goto :goto_3

    :cond_4
    move-object/from16 v6, p1

    :goto_3
    and-int/lit16 v8, v13, 0x180

    if-nez v8, :cond_6

    move/from16 v8, p2

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x100

    goto :goto_4

    :cond_5
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v4, v9

    goto :goto_5

    :cond_6
    move/from16 v8, p2

    :goto_5
    and-int/lit16 v9, v13, 0xc00

    if-nez v9, :cond_8

    move/from16 v9, p3

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x800

    goto :goto_6

    :cond_7
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v4, v10

    goto :goto_7

    :cond_8
    move/from16 v9, p3

    :goto_7
    and-int/lit16 v10, v13, 0x6000

    if-nez v10, :cond_a

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x4000

    goto :goto_8

    :cond_9
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v4, v10

    :cond_a
    const/high16 v10, 0x30000

    and-int/2addr v10, v13

    if-nez v10, :cond_c

    move-object/from16 v10, p5

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/high16 v12, 0x20000

    goto :goto_9

    :cond_b
    const/high16 v12, 0x10000

    :goto_9
    or-int/2addr v4, v12

    goto :goto_a

    :cond_c
    move-object/from16 v10, p5

    :goto_a
    const/high16 v12, 0x180000

    and-int/2addr v12, v13

    move-wide/from16 v14, p6

    if-nez v12, :cond_e

    invoke-virtual {v0, v14, v15}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v12

    if-eqz v12, :cond_d

    const/high16 v12, 0x100000

    goto :goto_b

    :cond_d
    const/high16 v12, 0x80000

    :goto_b
    or-int/2addr v4, v12

    :cond_e
    const/high16 v12, 0xc00000

    and-int/2addr v12, v13

    move-wide/from16 v7, p8

    if-nez v12, :cond_10

    invoke-virtual {v0, v7, v8}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v12

    if-eqz v12, :cond_f

    const/high16 v12, 0x800000

    goto :goto_c

    :cond_f
    const/high16 v12, 0x400000

    :goto_c
    or-int/2addr v4, v12

    :cond_10
    const/high16 v12, 0x6000000

    and-int/2addr v12, v13

    if-nez v12, :cond_12

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    const/high16 v12, 0x4000000

    goto :goto_d

    :cond_11
    const/high16 v12, 0x2000000

    :goto_d
    or-int/2addr v4, v12

    :cond_12
    const/high16 v12, 0x30000000

    and-int/2addr v12, v13

    const/4 v2, 0x0

    if-nez v12, :cond_14

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    const/high16 v12, 0x20000000

    goto :goto_e

    :cond_13
    const/high16 v12, 0x10000000

    :goto_e
    or-int/2addr v4, v12

    :cond_14
    and-int/lit8 v12, p14, 0x6

    if-nez v12, :cond_16

    move-object/from16 v12, p11

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    const/16 v16, 0x4

    goto :goto_f

    :cond_15
    const/16 v16, 0x2

    :goto_f
    or-int v16, p14, v16

    goto :goto_10

    :cond_16
    move-object/from16 v12, p11

    move/from16 v16, p14

    :goto_10
    const v17, 0x12492493

    and-int v2, v4, v17

    const v3, 0x12492492

    const/4 v1, 0x0

    const/16 v18, 0x1

    if-ne v2, v3, :cond_18

    and-int/lit8 v2, v16, 0x3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_17

    goto :goto_11

    :cond_17
    move v2, v1

    goto :goto_12

    :cond_18
    :goto_11
    move/from16 v2, v18

    :goto_12
    and-int/lit8 v3, v4, 0x1

    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_13

    :cond_19
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :cond_1a
    :goto_13
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v2, -0x10dbb1f1

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v3, :cond_1b

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1c

    new-instance v1, Ldy;

    move/from16 v21, v4

    const/16 v4, 0x8

    invoke-direct {v1, v4}, Ldy;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_14

    :cond_1c
    move/from16 v21, v4

    :goto_14
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    invoke-static {v5, v4, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget v4, v11, Landroidx/compose/material3/FloatingActionButtonElevation;->a:F

    shr-int/lit8 v17, v21, 0x15

    and-int/lit8 v19, v17, 0x70

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    move-object/from16 v22, v1

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v20, :cond_1d

    if-ne v1, v3, :cond_1e

    :cond_1d
    new-instance v23, Landroidx/compose/material3/FloatingActionButtonElevationAnimatable;

    iget v1, v11, Landroidx/compose/material3/FloatingActionButtonElevation;->a:F

    move/from16 v24, v1

    iget v1, v11, Landroidx/compose/material3/FloatingActionButtonElevation;->b:F

    move/from16 v25, v1

    iget v1, v11, Landroidx/compose/material3/FloatingActionButtonElevation;->d:F

    move/from16 v26, v1

    iget v1, v11, Landroidx/compose/material3/FloatingActionButtonElevation;->c:F

    const/16 v28, 0x0

    move/from16 v27, v1

    invoke-direct/range {v23 .. v28}, Landroidx/compose/material3/FloatingActionButtonElevationAnimatable;-><init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v1, Landroidx/compose/material3/FloatingActionButtonElevationAnimatable;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v23, v4

    xor-int/lit8 v4, v19, 0x30

    move-object/from16 v29, v5

    const/16 v5, 0x20

    if-le v4, v5, :cond_1f

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    :cond_1f
    and-int/lit8 v4, v17, 0x30

    if-ne v4, v5, :cond_20

    goto :goto_15

    :cond_20
    const/16 v18, 0x0

    :cond_21
    :goto_15
    or-int v4, v20, v18

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_22

    if-ne v5, v3, :cond_23

    :cond_22
    new-instance v5, Landroidx/compose/material3/FloatingActionButtonElevation$animateElevation$1$1;

    const/4 v4, 0x0

    invoke-direct {v5, v1, v11, v4}, Landroidx/compose/material3/FloatingActionButtonElevation$animateElevation$1$1;-><init>(Landroidx/compose/material3/FloatingActionButtonElevationAnimatable;Landroidx/compose/material3/FloatingActionButtonElevation;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v11, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_24

    if-ne v5, v3, :cond_25

    :cond_24
    new-instance v5, Landroidx/compose/material3/FloatingActionButtonElevation$animateElevation$2$1;

    const/4 v4, 0x0

    invoke-direct {v5, v2, v1, v4}, Landroidx/compose/material3/FloatingActionButtonElevation$animateElevation$2$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/FloatingActionButtonElevationAnimatable;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, v1, Landroidx/compose/material3/FloatingActionButtonElevationAnimatable;->e:Landroidx/compose/animation/core/Animatable;

    iget-object v1, v1, Landroidx/compose/animation/core/Animatable;->c:Landroidx/compose/animation/core/AnimationState;

    iget-object v1, v1, Landroidx/compose/animation/core/AnimationState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Dp;

    iget v1, v1, Landroidx/compose/ui/unit/Dp;->b:F

    new-instance v14, Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3;

    move/from16 v18, p2

    move-object/from16 v17, v6

    move-wide v15, v7

    move/from16 v19, v9

    move-object/from16 v20, v12

    invoke-direct/range {v14 .. v20}, Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3;-><init>(JLandroidx/compose/ui/text/TextStyle;FFLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v3, -0x6a129809

    invoke-static {v3, v14, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v25

    and-int/lit8 v3, v21, 0xe

    shr-int/lit8 v4, v21, 0x6

    and-int/lit16 v5, v4, 0x1c00

    or-int/2addr v3, v5

    const v5, 0xe000

    and-int/2addr v5, v4

    or-int/2addr v3, v5

    const/high16 v5, 0x70000

    and-int/2addr v4, v5

    or-int v27, v3, v4

    const/16 v28, 0x104

    const/16 v16, 0x0

    move-object/from16 v14, p0

    move-wide/from16 v18, p6

    move-wide/from16 v20, p8

    move-object/from16 v26, v0

    move-object/from16 v24, v2

    move-object/from16 v17, v10

    move-object/from16 v15, v22

    move/from16 v22, v23

    move/from16 v23, v1

    invoke-static/range {v14 .. v28}, Landroidx/compose/material3/SurfaceKt;->c(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    goto :goto_16

    :cond_26
    move-object/from16 v26, v0

    move-object/from16 v29, v5

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_16
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_27

    new-instance v0, Lmz;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v12, p11

    move/from16 v14, p14

    move-object/from16 v5, v29

    invoke-direct/range {v0 .. v14}, Lmz;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/TextStyle;FFLandroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_27
    return-void
.end method
