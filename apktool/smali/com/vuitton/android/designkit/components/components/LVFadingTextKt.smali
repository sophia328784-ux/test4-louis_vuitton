.class public abstract Lcom/vuitton/android/designkit/components/components/LVFadingTextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "displayedText",
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
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/style/TextAlign;Landroidx/compose/runtime/Composer;II)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    if-eqz v0, :cond_0

    const-string v1, "LVFadingText-XEu76tw"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x1e91a7fb

    move-object/from16 v3, p6

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int v3, p7, v3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v3, v4

    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x100

    goto :goto_2

    :cond_3
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v3, v6

    move-wide/from16 v6, p3

    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x800

    goto :goto_3

    :cond_4
    const/16 v8, 0x400

    :goto_3
    or-int/2addr v3, v8

    and-int/lit8 v8, p8, 0x10

    if-eqz v8, :cond_5

    or-int/lit16 v3, v3, 0x6000

    move-object/from16 v9, p5

    goto :goto_5

    :cond_5
    move-object/from16 v9, p5

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x4000

    goto :goto_4

    :cond_6
    const/16 v10, 0x2000

    :goto_4
    or-int/2addr v3, v10

    :goto_5
    const v10, 0x12493

    and-int/2addr v10, v3

    const v11, 0x12492

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v10, v11, :cond_7

    move v10, v13

    goto :goto_6

    :cond_7
    move v10, v12

    :goto_6
    and-int/lit8 v11, v3, 0x1

    invoke-virtual {v0, v11, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x0

    if-eqz v8, :cond_8

    move v8, v13

    move-object v13, v10

    goto :goto_7

    :cond_8
    move v8, v13

    move-object v13, v9

    :goto_7
    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v11, :cond_9

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v9, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v11, :cond_a

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14}, Landroidx/compose/animation/core/AnimatableKt;->a(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v14, Landroidx/compose/animation/core/Animatable;

    and-int/lit8 v15, v3, 0x70

    if-ne v15, v5, :cond_b

    move v12, v8

    :cond_b
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v5, v12

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_c

    if-ne v8, v11, :cond_d

    :cond_c
    new-instance v8, Lcom/vuitton/android/designkit/components/components/LVFadingTextKt$LVFadingText$1$1;

    invoke-direct {v8, v2, v14, v9, v10}, Lcom/vuitton/android/designkit/components/components/LVFadingTextKt$LVFadingText$1$1;-><init>(Ljava/lang/String;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v8, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v5, v3, 0x3

    invoke-static {v0, v2, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14}, Landroidx/compose/animation/core/Animatable;->d()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    invoke-static {v1, v9}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    and-int/lit16 v5, v5, 0x380

    shr-int/lit8 v10, v3, 0xc

    and-int/lit8 v10, v10, 0xe

    shl-int/lit8 v3, v3, 0xf

    const/high16 v11, 0x1c00000

    and-int/2addr v3, v11

    or-int v24, v10, v3

    const v25, 0x1fbf8

    move-object v3, v8

    const-wide/16 v7, 0x0

    move-object v4, v9

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, p2

    move-object/from16 v22, v0

    move/from16 v23, v5

    move-wide/from16 v5, p3

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object v6, v13

    goto :goto_8

    :cond_e
    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v6, v9

    :goto_8
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_f

    new-instance v0, Lvr;

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lvr;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/style/TextAlign;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method
