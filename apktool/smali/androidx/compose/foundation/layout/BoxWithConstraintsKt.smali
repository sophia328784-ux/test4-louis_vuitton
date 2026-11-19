.class public abstract Landroidx/compose/foundation/layout/BoxWithConstraintsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "foundation-layout"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    move/from16 v5, p5

    const-string v1, "BoxWithConstraints"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, 0x16a877ea

    move-object/from16 v3, p4

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v6, v5, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v6, v5, 0x6

    if-nez v6, :cond_3

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v5

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    and-int/lit8 v7, p6, 0x2

    if-eqz v7, :cond_5

    or-int/lit8 v6, v6, 0x30

    :cond_4
    move-object/from16 v8, p1

    goto :goto_3

    :cond_5
    and-int/lit8 v8, v5, 0x30

    if-nez v8, :cond_4

    move-object/from16 v8, p1

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x20

    goto :goto_2

    :cond_6
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v6, v9

    :goto_3
    and-int/lit8 v9, p6, 0x4

    if-eqz v9, :cond_8

    or-int/lit16 v6, v6, 0x180

    :cond_7
    move/from16 v10, p2

    goto :goto_5

    :cond_8
    and-int/lit16 v10, v5, 0x180

    if-nez v10, :cond_7

    move/from16 v10, p2

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v11, 0x100

    goto :goto_4

    :cond_9
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v6, v11

    :goto_5
    and-int/lit16 v11, v5, 0xc00

    const/16 v12, 0x800

    if-nez v11, :cond_b

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    move v11, v12

    goto :goto_6

    :cond_a
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v6, v11

    :cond_b
    and-int/lit16 v11, v6, 0x493

    const/16 v13, 0x492

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v11, v13, :cond_c

    move v11, v15

    goto :goto_7

    :cond_c
    move v11, v14

    :goto_7
    and-int/lit8 v13, v6, 0x1

    invoke-virtual {v2, v13, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_13

    if-eqz v3, :cond_d

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_d
    if-eqz v7, :cond_e

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    goto :goto_8

    :cond_e
    move-object v1, v8

    :goto_8
    if-eqz v9, :cond_f

    move v10, v14

    :cond_f
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v1, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    and-int/lit16 v7, v6, 0x1c00

    if-ne v7, v12, :cond_10

    goto :goto_9

    :cond_10
    move v15, v14

    :goto_9
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v7, v15

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_11

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v7, :cond_12

    :cond_11
    new-instance v8, Landroidx/compose/foundation/layout/c;

    invoke-direct {v8, v3, v4}, Landroidx/compose/foundation/layout/c;-><init>(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v8, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v3, v6, 0xe

    invoke-static {v0, v8, v2, v3, v14}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_a
    move v3, v10

    goto :goto_b

    :cond_13
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v8

    goto :goto_a

    :goto_b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_14

    move-object v2, v1

    move-object v1, v0

    new-instance v0, Loh;

    const/4 v7, 0x0

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Loh;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;ZLkotlin/Function;III)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method
