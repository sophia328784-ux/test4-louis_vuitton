.class public abstract Landroidx/compose/material3/CardKt;
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


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 23

    move-object/from16 v0, p0

    if-eqz v0, :cond_0

    const-string v1, "Card"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    const v0, 0x510b47de

    move-object/from16 v2, p5

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int v0, p6, v0

    and-int/lit8 v2, p7, 0x2

    if-nez v2, :cond_2

    move-object/from16 v2, p1

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_1

    :cond_2
    move-object/from16 v2, p1

    :cond_3
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    or-int/lit16 v0, v0, 0x6480

    const v3, 0x12493

    and-int/2addr v3, v0

    const v4, 0x12492

    const/4 v5, 0x0

    if-eq v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    and-int/lit8 v4, v0, 0x1

    invoke-virtual {v10, v4, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_7

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v3, p7, 0x2

    if-eqz v3, :cond_6

    and-int/lit8 v0, v0, -0x71

    :cond_6
    and-int/lit16 v0, v0, -0x1f81

    move-object/from16 v13, p3

    move v3, v0

    move-object/from16 v0, p2

    goto :goto_5

    :cond_7
    :goto_3
    and-int/lit8 v3, p7, 0x2

    if-eqz v3, :cond_8

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/material3/tokens/FilledCardTokens;->b:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v2, v10}, Landroidx/compose/material3/ShapesKt;->a(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    and-int/lit8 v0, v0, -0x71

    :cond_8
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v10}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    iget-object v4, v3, Landroidx/compose/material3/ColorScheme;->Y:Landroidx/compose/material3/CardColors;

    if-nez v4, :cond_9

    new-instance v11, Landroidx/compose/material3/CardColors;

    sget-object v4, Landroidx/compose/material3/tokens/FilledCardTokens;->a:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v12

    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroidx/compose/material3/ColorSchemeKt;->a(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide v14

    sget-object v6, Landroidx/compose/material3/tokens/FilledCardTokens;->c:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v6}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v6

    sget v8, Landroidx/compose/material3/tokens/FilledCardTokens;->d:F

    invoke-static {v8, v6, v7}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v6

    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->f(JJ)J

    move-result-wide v16

    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroidx/compose/material3/ColorSchemeKt;->a(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide v6

    const v4, 0x3ec28f5c    # 0.38f

    invoke-static {v4, v6, v7}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v18

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v20}, Landroidx/compose/material3/CardColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v11, v3, Landroidx/compose/material3/ColorScheme;->Y:Landroidx/compose/material3/CardColors;

    goto :goto_4

    :cond_9
    move-object v11, v4

    :goto_4
    sget v16, Landroidx/compose/material3/tokens/FilledCardTokens;->f:F

    sget v17, Landroidx/compose/material3/tokens/FilledCardTokens;->e:F

    new-instance v12, Landroidx/compose/material3/CardElevation;

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v19}, Landroidx/compose/material3/CardElevation;-><init>(FFFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    and-int/lit16 v0, v0, -0x1f81

    move v3, v0

    move-object v0, v11

    move-object v13, v12

    :goto_5
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move v6, v3

    iget-wide v3, v0, Landroidx/compose/material3/CardColors;->a:J

    iget-wide v7, v0, Landroidx/compose/material3/CardColors;->b:J

    iget v9, v13, Landroidx/compose/material3/CardElevation;->a:F

    const v11, -0x691c96f5

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v11, 0x9ffae2b

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v12, :cond_a

    new-instance v11, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v11, v9}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v11}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v11, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/unit/Dp;

    iget v5, v5, Landroidx/compose/ui/unit/Dp;->b:F

    new-instance v9, Landroidx/compose/material3/CardKt$Card$1;

    move-object/from16 v14, p4

    invoke-direct {v9, v14}, Landroidx/compose/material3/CardKt$Card$1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v11, -0x5c9c6dd

    invoke-static {v11, v9, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    and-int/lit8 v11, v6, 0xe

    const/high16 v12, 0xc00000

    or-int/2addr v11, v12

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v6, v11

    const/high16 v11, 0x180000

    or-int/2addr v11, v6

    const/16 v12, 0x10

    move-wide/from16 v21, v7

    move v8, v5

    move-wide/from16 v5, v21

    const/4 v7, 0x0

    invoke-static/range {v1 .. v12}, Landroidx/compose/material3/SurfaceKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object v4, v0

    move-object v5, v13

    :goto_6
    move-object v3, v2

    goto :goto_7

    :cond_b
    move-object/from16 v14, p4

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    goto :goto_6

    :goto_7
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_c

    move-object v2, v1

    new-instance v1, Lb3;

    move/from16 v7, p6

    move/from16 v8, p7

    move-object v6, v14

    invoke-direct/range {v1 .. v8}, Lb3;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method
