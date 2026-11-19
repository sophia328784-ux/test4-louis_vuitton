.class public abstract Lcom/vuitton/android/designkit/ui/theme/atoms/LVBottomRoundOverlayKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
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
.method public static final a(IIJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V
    .locals 17

    move-object/from16 v0, p5

    const-string v1, "LVBottomRoundOverlay-iJQMabo"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x78c45040

    move-object/from16 v3, p4

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v4, p0, 0x6

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    or-int v4, p0, v4

    :goto_1
    and-int/lit8 v5, p1, 0x2

    const/16 v6, 0x20

    move-wide/from16 v7, p2

    if-nez v5, :cond_3

    invoke-virtual {v2, v7, v8}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    and-int/lit8 v5, v4, 0x13

    const/16 v9, 0x12

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v5, v9, :cond_4

    move v5, v11

    goto :goto_3

    :cond_4
    move v5, v10

    :goto_3
    and-int/lit8 v9, v4, 0x1

    invoke-virtual {v2, v9, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v5, p0, 0x1

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_8

    :goto_4
    and-int/lit8 v4, v4, -0x71

    goto :goto_6

    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_7
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_8

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    goto :goto_4

    :cond_8
    :goto_6
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->h:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v5, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v12, Landroidx/compose/ui/graphics/Color;->h:J

    sget-object v5, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v3, v12, v13, v5}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v5

    and-int/lit8 v9, v4, 0x70

    xor-int/lit8 v9, v9, 0x30

    if-le v9, v6, :cond_9

    invoke-virtual {v2, v7, v8}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_9
    and-int/lit8 v4, v4, 0x30

    if-ne v4, v6, :cond_b

    :cond_a
    move v4, v11

    goto :goto_7

    :cond_b
    move v4, v10

    :goto_7
    or-int/2addr v4, v5

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_c

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v4, :cond_d

    :cond_c
    new-instance v5, Lav;

    invoke-direct {v5, v7, v8, v11, v1}, Lav;-><init>(JIF)V

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v5, v2, v10}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    :goto_8
    move-object v12, v0

    move-wide v13, v7

    goto :goto_9

    :cond_e
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_8

    :goto_9
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v11, Lg50;

    move/from16 v15, p0

    move/from16 v16, p1

    invoke-direct/range {v11 .. v16}, Lg50;-><init>(Landroidx/compose/ui/Modifier;JII)V

    iput-object v11, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method
