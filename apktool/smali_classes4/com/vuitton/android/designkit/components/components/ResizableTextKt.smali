.class public abstract Lcom/vuitton/android/designkit/components/components/ResizableTextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "textLayoutResult",
        "components"
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
.method public static final a(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/runtime/Composer;II)V
    .locals 35

    move-object/from16 v0, p1

    move-wide/from16 v3, p2

    move/from16 v10, p10

    if-eqz v0, :cond_0

    const-string v1, "ResizableText-8-C820o"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x5c7af48b

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v10, 0x6

    move-object/from16 v11, p0

    if-nez v1, :cond_2

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

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
    and-int/lit8 v5, v10, 0x30

    if-nez v5, :cond_4

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    :cond_4
    and-int/lit16 v5, v10, 0x180

    if-nez v5, :cond_6

    invoke-virtual {v0, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x100

    goto :goto_3

    :cond_5
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v1, v5

    :cond_6
    and-int/lit16 v5, v10, 0xc00

    if-nez v5, :cond_8

    move/from16 v5, p4

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x800

    goto :goto_4

    :cond_7
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v1, v6

    goto :goto_5

    :cond_8
    move/from16 v5, p4

    :goto_5
    and-int/lit16 v6, v10, 0x6000

    if-nez v6, :cond_a

    move/from16 v6, p5

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v7, 0x4000

    goto :goto_6

    :cond_9
    const/16 v7, 0x2000

    :goto_6
    or-int/2addr v1, v7

    goto :goto_7

    :cond_a
    move/from16 v6, p5

    :goto_7
    const/high16 v7, 0x30000

    or-int/2addr v1, v7

    const/high16 v7, 0x180000

    and-int v8, v10, v7

    if-nez v8, :cond_c

    move-object/from16 v8, p7

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/high16 v9, 0x100000

    goto :goto_8

    :cond_b
    const/high16 v9, 0x80000

    :goto_8
    or-int/2addr v1, v9

    goto :goto_9

    :cond_c
    move-object/from16 v8, p7

    :goto_9
    move/from16 v9, p11

    and-int/lit16 v12, v9, 0x80

    const/high16 v13, 0xc00000

    if-eqz v12, :cond_e

    or-int/2addr v1, v13

    :cond_d
    move-object/from16 v13, p8

    goto :goto_b

    :cond_e
    and-int/2addr v13, v10

    if-nez v13, :cond_d

    move-object/from16 v13, p8

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    const/high16 v14, 0x800000

    goto :goto_a

    :cond_f
    const/high16 v14, 0x400000

    :goto_a
    or-int/2addr v1, v14

    :goto_b
    const v14, 0x492493

    and-int/2addr v14, v1

    const v15, 0x492492

    move/from16 p1, v7

    const/4 v7, 0x0

    const/16 v16, 0x1

    if-eq v14, v15, :cond_10

    move/from16 v14, v16

    goto :goto_c

    :cond_10
    move v14, v7

    :goto_c
    and-int/lit8 v15, v1, 0x1

    invoke-virtual {v0, v15, v14}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v14, v10, 0x1

    if-eqz v14, :cond_12

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v14

    if-eqz v14, :cond_11

    goto :goto_d

    :cond_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v27, p6

    move-object v12, v13

    goto :goto_e

    :cond_12
    :goto_d
    if-eqz v12, :cond_13

    move/from16 v27, v16

    const/4 v12, 0x0

    goto :goto_e

    :cond_13
    move-object v12, v13

    move/from16 v27, v16

    :goto_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v13, 0x299026ee

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const-wide/16 v13, 0x10

    cmp-long v16, v3, v13

    if-eqz v16, :cond_14

    move-wide v13, v3

    goto :goto_10

    :cond_14
    move-wide/from16 p8, v13

    const v13, 0x299029f3

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8}, Landroidx/compose/ui/text/TextStyle;->b()J

    move-result-wide v13

    cmp-long v16, v13, p8

    if-eqz v16, :cond_15

    goto :goto_f

    :cond_15
    sget-object v13, Landroidx/compose/material3/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/graphics/Color;

    iget-wide v13, v13, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_f
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    const/16 v16, 0x0

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v15, :cond_16

    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v7, Landroidx/compose/runtime/MutableState;

    move/from16 v25, v1

    if-eqz v12, :cond_17

    iget v1, v12, Landroidx/compose/ui/text/style/TextAlign;->a:I

    move/from16 v21, v1

    goto :goto_11

    :cond_17
    sget-object v1, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v21, 0x0

    :goto_11
    const-wide/16 v22, 0x0

    const v24, 0xff7ffe

    move-object v1, v15

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v34, v8

    move-object v8, v1

    move-object v1, v12

    move-object/from16 v12, v34

    invoke-static/range {v12 .. v24}, Landroidx/compose/ui/text/TextStyle;->e(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;IJI)Landroidx/compose/ui/text/TextStyle;

    move-result-object v29

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v8, :cond_18

    new-instance v12, Llc;

    const/4 v13, 0x3

    invoke-direct {v12, v13, v7}, Llc;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v12, Lkotlin/jvm/functions/Function3;

    invoke-static {v2, v12}, Landroidx/compose/ui/layout/LayoutModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v8, :cond_19

    new-instance v13, Lc30;

    const/16 v8, 0x1d

    invoke-direct {v13, v8, v7}, Lc30;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object/from16 v28, v13

    check-cast v28, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v31, v25, 0xe

    shr-int/lit8 v7, v25, 0x3

    and-int/lit16 v7, v7, 0x380

    or-int v7, v7, p1

    const v8, 0xe000

    and-int v8, v25, v8

    or-int/2addr v7, v8

    const/high16 v8, 0x70000

    and-int v8, v25, v8

    or-int v32, v7, v8

    const/16 v33, 0x2ffc

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v30, v0

    move/from16 v24, v5

    move/from16 v26, v6

    invoke-static/range {v11 .. v33}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object v9, v1

    move/from16 v7, v27

    goto :goto_12

    :cond_1a
    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v7, p6

    move-object v9, v13

    :goto_12
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_1b

    new-instance v0, Let0;

    move-object/from16 v1, p0

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Let0;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/style/TextAlign;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method
