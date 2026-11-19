.class public abstract Lcom/vuitton/android/presentation/screen/account/lvpass/components/TopBarQRCodeKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "TopBarQRCode-3IgeMak"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x6cef3b6b

    move-object/from16 v3, p4

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    or-int/lit8 v2, p5, 0x6

    and-int/lit8 v3, p6, 0x2

    if-nez v3, :cond_1

    move-wide/from16 v3, p1

    invoke-virtual {v9, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_0

    :cond_1
    move-wide/from16 v3, p1

    :cond_2
    const/16 v5, 0x10

    :goto_0
    or-int/2addr v2, v5

    move-object/from16 v14, p3

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x100

    goto :goto_1

    :cond_3
    const/16 v5, 0x80

    :goto_1
    or-int/2addr v2, v5

    and-int/lit16 v5, v2, 0x93

    const/16 v6, 0x92

    if-eq v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    and-int/lit8 v6, v2, 0x1

    invoke-virtual {v9, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_7

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_6

    :goto_3
    and-int/lit8 v2, v2, -0x71

    :cond_6
    move/from16 v17, v2

    move-object v2, v0

    move-wide v0, v3

    move/from16 v3, v17

    goto :goto_5

    :cond_7
    :goto_4
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_6

    sget-object v1, Landroidx/compose/material3/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v1, Landroidx/compose/ui/graphics/Color;->a:J

    goto :goto_3

    :goto_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v4, "feed_lvPass_button"

    invoke-static {v2, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    new-instance v5, Lg;

    const/4 v6, 0x4

    invoke-direct {v5, v0, v1, v6}, Lg;-><init>(JI)V

    const v6, -0x2d00877

    invoke-static {v6, v5, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    shr-int/lit8 v3, v3, 0x6

    and-int/lit8 v3, v3, 0xe

    const/high16 v5, 0x180000

    or-int v10, v3, v5

    const/16 v11, 0x3c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v14

    invoke-static/range {v3 .. v11}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-wide v12, v0

    move-object v11, v2

    goto :goto_6

    :cond_8
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v11, v0

    move-wide v12, v3

    :goto_6
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v10, Lwr;

    move-object/from16 v14, p3

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-direct/range {v10 .. v16}, Lwr;-><init>(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function0;II)V

    iput-object v10, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method
