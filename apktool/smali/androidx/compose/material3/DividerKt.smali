.class public abstract Landroidx/compose/material3/DividerKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v5, p5

    const-string v1, "HorizontalDivider-9IZ8Weo"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, 0x47a9d25

    move-object/from16 v3, p4

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v4, v5, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v5, 0x6

    if-nez v4, :cond_3

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v5

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    and-int/lit8 v6, p6, 0x2

    const/16 v7, 0x20

    if-eqz v6, :cond_5

    or-int/lit8 v4, v4, 0x30

    :cond_4
    move/from16 v8, p1

    goto :goto_3

    :cond_5
    and-int/lit8 v8, v5, 0x30

    if-nez v8, :cond_4

    move/from16 v8, p1

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v7

    goto :goto_2

    :cond_6
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v4, v9

    :goto_3
    and-int/lit16 v9, v5, 0x180

    const/16 v10, 0x100

    if-nez v9, :cond_8

    and-int/lit8 v9, p6, 0x4

    move-wide/from16 v11, p2

    if-nez v9, :cond_7

    invoke-virtual {v2, v11, v12}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v10

    goto :goto_4

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v4, v9

    goto :goto_5

    :cond_8
    move-wide/from16 v11, p2

    :goto_5
    and-int/lit16 v9, v4, 0x93

    const/16 v13, 0x92

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v9, v13, :cond_9

    move v9, v15

    goto :goto_6

    :cond_9
    move v9, v14

    :goto_6
    and-int/lit8 v13, v4, 0x1

    invoke-virtual {v2, v13, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v9, v5, 0x1

    if-eqz v9, :cond_c

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_b

    and-int/lit16 v4, v4, -0x381

    :cond_b
    move v1, v8

    goto :goto_9

    :cond_c
    :goto_7
    if-eqz v3, :cond_d

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_d
    if-eqz v6, :cond_e

    sget v1, Landroidx/compose/material3/DividerDefaults;->a:F

    goto :goto_8

    :cond_e
    move v1, v8

    :goto_8
    and-int/lit8 v3, p6, 0x4

    if-eqz v3, :cond_f

    sget v3, Landroidx/compose/material3/DividerDefaults;->a:F

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/material3/tokens/DividerTokens;->a:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v2}, Landroidx/compose/material3/ColorSchemeKt;->d(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v8

    and-int/lit16 v4, v4, -0x381

    move-wide v11, v8

    :cond_f
    :goto_9
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    and-int/lit8 v6, v4, 0x70

    if-ne v6, v7, :cond_10

    move v6, v15

    goto :goto_a

    :cond_10
    move v6, v14

    :goto_a
    and-int/lit16 v7, v4, 0x380

    xor-int/lit16 v7, v7, 0x180

    if-le v7, v10, :cond_11

    invoke-virtual {v2, v11, v12}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v7

    if-nez v7, :cond_13

    :cond_11
    and-int/lit16 v4, v4, 0x180

    if-ne v4, v10, :cond_12

    goto :goto_b

    :cond_12
    move v15, v14

    :cond_13
    :goto_b
    or-int v4, v6, v15

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_14

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v4, :cond_15

    :cond_14
    new-instance v6, Lav;

    invoke-direct {v6, v11, v12, v14, v1}, Lav;-><init>(JIF)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v6, v2, v14}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    :goto_c
    move-wide v3, v11

    goto :goto_d

    :cond_16
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    move v1, v8

    goto :goto_c

    :goto_d
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_17

    move v2, v1

    move-object v1, v0

    new-instance v0, Lbv;

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lbv;-><init>(Landroidx/compose/ui/Modifier;FJII)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method
