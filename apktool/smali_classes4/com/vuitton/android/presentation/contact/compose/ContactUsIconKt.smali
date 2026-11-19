.class public abstract Lcom/vuitton/android/presentation/contact/compose/ContactUsIconKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p7

    const-string v2, "ContactUsIcon"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x63787e22

    move-object/from16 v4, p6

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    and-int/lit8 v3, p8, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v4, v7, 0x6

    goto :goto_1

    :cond_1
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v7

    :goto_1
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x20

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    move-object/from16 v5, p2

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v4, v8

    move-object/from16 v8, p3

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x800

    goto :goto_4

    :cond_5
    const/16 v10, 0x400

    :goto_4
    or-int/2addr v4, v10

    and-int/lit8 v10, p8, 0x10

    if-eqz v10, :cond_7

    or-int/lit16 v4, v4, 0x6000

    :cond_6
    move/from16 v12, p4

    goto :goto_6

    :cond_7
    and-int/lit16 v12, v7, 0x6000

    if-nez v12, :cond_6

    move/from16 v12, p4

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x4000

    goto :goto_5

    :cond_8
    const/16 v13, 0x2000

    :goto_5
    or-int/2addr v4, v13

    :goto_6
    and-int/lit8 v13, p8, 0x20

    const/high16 v15, 0x30000

    if-eqz v13, :cond_a

    or-int/2addr v4, v15

    :cond_9
    move-object/from16 v15, p5

    goto :goto_8

    :cond_a
    and-int/2addr v15, v7

    if-nez v15, :cond_9

    move-object/from16 v15, p5

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/high16 v16, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v16, 0x10000

    :goto_7
    or-int v4, v4, v16

    :goto_8
    const v16, 0x12493

    and-int v9, v4, v16

    const v11, 0x12492

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eq v9, v11, :cond_c

    move/from16 v9, v17

    goto :goto_9

    :cond_c
    move/from16 v9, v16

    :goto_9
    and-int/lit8 v11, v4, 0x1

    invoke-virtual {v14, v11, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_16

    if-eqz v3, :cond_d

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_d
    move-object v9, v0

    if-eqz v10, :cond_e

    move/from16 v10, v16

    goto :goto_a

    :cond_e
    move v10, v12

    :goto_a
    if-eqz v13, :cond_f

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_b

    :cond_f
    move-object v11, v15

    :goto_b
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    if-eqz v11, :cond_10

    invoke-static {v9, v11}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v12, v9

    move-object v9, v0

    goto :goto_c

    :cond_10
    move-object v12, v9

    :goto_c
    and-int/lit8 v0, v4, 0x70

    if-eq v0, v6, :cond_11

    move/from16 v0, v16

    goto :goto_d

    :cond_11
    move/from16 v0, v17

    :goto_d
    and-int/lit16 v2, v4, 0x1c00

    const/16 v6, 0x800

    if-ne v2, v6, :cond_12

    move/from16 v2, v17

    goto :goto_e

    :cond_12
    move/from16 v2, v16

    :goto_e
    or-int/2addr v0, v2

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    and-int/lit16 v2, v4, 0x380

    const/16 v4, 0x100

    if-ne v2, v4, :cond_13

    move/from16 v16, v17

    :cond_13
    or-int v0, v0, v16

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_14

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v0, :cond_15

    :cond_14
    new-instance v0, Lr0;

    const/16 v5, 0x9

    move-object/from16 v4, p2

    move-object v2, v8

    invoke-direct/range {v0 .. v5}, Lr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :cond_15
    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function0;

    new-instance v0, Lz3;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v10, v2}, Lz3;-><init>(Ljava/lang/Object;ZI)V

    const v2, 0x73f120c4

    invoke-static {v2, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    const/high16 v15, 0x180000

    const/16 v16, 0x3c

    move v0, v10

    const/4 v10, 0x0

    move-object v2, v11

    const/4 v11, 0x0

    move-object v3, v12

    const/4 v12, 0x0

    invoke-static/range {v8 .. v16}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move v5, v0

    move-object v6, v2

    move-object v0, v3

    goto :goto_f

    :cond_16
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move v5, v12

    move-object v6, v15

    :goto_f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_17

    move-object v1, v0

    new-instance v0, Lrp;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lrp;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method
