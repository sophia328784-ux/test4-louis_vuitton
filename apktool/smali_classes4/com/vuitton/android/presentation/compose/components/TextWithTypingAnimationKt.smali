.class public abstract Lcom/vuitton/android/presentation/compose/components/TextWithTypingAnimationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "hasAnimated",
        "",
        "substringText",
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
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLjava/text/BreakIterator;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p10

    if-eqz v0, :cond_0

    const-string v1, "TextWithTypingAnimation-8r3B23s"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v11, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x427cfb6b

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int v0, p12, v0

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    move-object/from16 v13, p2

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x100

    goto :goto_2

    :cond_3
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    move-wide/from16 v14, p3

    invoke-virtual {v12, v14, v15}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x800

    goto :goto_3

    :cond_4
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    const v1, 0x1b2000

    or-int/2addr v0, v1

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v1, 0x800000

    goto :goto_4

    :cond_5
    const/high16 v1, 0x400000

    :goto_4
    or-int/2addr v0, v1

    const v1, 0x492493

    and-int/2addr v1, v0

    const v5, 0x492492

    const/4 v6, 0x0

    if-eq v1, v5, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    move v1, v6

    :goto_5
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {v12, v5, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v1, p12, 0x1

    const v5, -0xe001

    if-eqz v1, :cond_8

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/2addr v0, v5

    move-object/from16 v1, p5

    move-wide/from16 v9, p6

    move-wide/from16 v16, p8

    :goto_6
    move/from16 v18, v0

    goto :goto_8

    :cond_8
    :goto_7
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/2addr v0, v5

    const-wide/16 v9, 0xfa

    const-wide/16 v16, 0x19

    goto :goto_6

    :goto_8
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v3, :cond_9

    new-instance v5, Ll31;

    invoke-direct {v5, v6}, Ll31;-><init>(I)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/16 v6, 0x30

    invoke-static {v0, v5, v12, v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/MutableState;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    and-int/lit8 v8, v18, 0x70

    if-ne v8, v2, :cond_a

    const/16 v20, 0x1

    goto :goto_9

    :cond_a
    const/16 v20, 0x0

    :goto_9
    or-int v6, v6, v20

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v6, :cond_c

    if-ne v2, v3, :cond_b

    goto :goto_a

    :cond_b
    const/4 v6, 0x1

    goto :goto_b

    :cond_c
    :goto_a
    new-instance v2, Lrw;

    const/4 v6, 0x1

    invoke-direct {v2, v4, v0, v6}, Lrw;-><init>(Ljava/lang/String;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_b
    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    invoke-static {v5, v2, v12, v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/high16 v21, 0x1c00000

    if-nez v5, :cond_11

    const v5, 0x4e5583a1    # 8.9554336E8f

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    or-int v5, v5, v22

    const/16 v6, 0x20

    if-ne v8, v6, :cond_d

    const/4 v6, 0x1

    goto :goto_c

    :cond_d
    const/4 v6, 0x0

    :goto_c
    or-int/2addr v5, v6

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    and-int v6, v18, v21

    const/high16 v8, 0x800000

    if-ne v6, v8, :cond_e

    const/4 v8, 0x1

    goto :goto_d

    :cond_e
    const/4 v8, 0x0

    :goto_d
    or-int/2addr v5, v8

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_f

    if-ne v6, v3, :cond_10

    :cond_f
    move-object v3, v1

    move-object v8, v2

    move-wide v1, v9

    move-object v9, v0

    goto :goto_e

    :cond_10
    move-object/from16 v23, v1

    move-object v8, v2

    move-object v1, v4

    move-object v2, v7

    move-wide/from16 v24, v9

    move-object/from16 v20, v11

    move-wide/from16 v26, v16

    const/4 v11, 0x0

    goto :goto_f

    :goto_e
    new-instance v0, Lcom/vuitton/android/presentation/compose/components/TextWithTypingAnimationKt$TextWithTypingAnimation$2$1;

    const/4 v10, 0x0

    move-object/from16 v20, v11

    move-wide/from16 v5, v16

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/android/presentation/compose/components/TextWithTypingAnimationKt$TextWithTypingAnimation$2$1;-><init>(JLjava/text/BreakIterator;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-wide/from16 v24, v1

    move-object/from16 v23, v3

    move-object v1, v4

    move-wide/from16 v26, v5

    move-object v2, v7

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v6, v0

    :goto_f
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v1, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_11

    :cond_11
    move-object/from16 v23, v1

    move-object v8, v2

    move-object v1, v4

    move-object v2, v7

    move-wide/from16 v24, v9

    move-object/from16 v20, v11

    move-wide/from16 v26, v16

    move v11, v6

    const v0, 0x4e622a0a    # 9.4860147E8f

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int v0, v18, v21

    const/high16 v4, 0x800000

    if-ne v0, v4, :cond_12

    const/4 v6, 0x1

    goto :goto_10

    :cond_12
    move v6, v11

    :goto_10
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_13

    if-ne v0, v3, :cond_14

    :cond_13
    new-instance v0, Lcom/vuitton/android/presentation/compose/components/TextWithTypingAnimationKt$TextWithTypingAnimation$3$1;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/vuitton/android/presentation/compose/components/TextWithTypingAnimationKt$TextWithTypingAnimation$3$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v1, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/android/presentation/compose/StringExtKt;->b(Ljava/lang/String;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    shl-int/lit8 v3, v18, 0x3

    and-int/lit8 v3, v3, 0x70

    shr-int/lit8 v4, v18, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v3, v4

    shl-int/lit8 v4, v18, 0x12

    const/high16 v5, 0xe000000

    and-int v21, v4, v5

    const v22, 0x3fff8

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v19, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, p2

    move-object v1, v0

    move-object/from16 v2, v20

    move/from16 v20, v3

    move-wide/from16 v3, p3

    invoke-static/range {v1 .. v22}, Landroidx/compose/material3/TextKt;->d(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v20, v2

    move-object/from16 v6, v23

    move-wide/from16 v7, v24

    move-wide/from16 v9, v26

    goto :goto_12

    :cond_15
    move-object/from16 v20, v11

    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    :goto_12
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_16

    new-instance v0, Lta;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v11, p10

    move/from16 v12, p12

    move-object/from16 v1, v20

    invoke-direct/range {v0 .. v12}, Lta;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLjava/text/BreakIterator;JJLkotlin/jvm/functions/Function0;I)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method
