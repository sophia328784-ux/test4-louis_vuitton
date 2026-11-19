.class public abstract Lcom/vuitton/android/designkit/components/components/LVAnimatedDigitsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "currentPosition",
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
.method public static final a(Landroidx/compose/ui/Modifier;IIZLandroidx/compose/ui/text/TextStyle;JLandroidx/compose/runtime/Composer;II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v8, p8

    const-string v1, "LVAnimatedDigits-V-9fs2A"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7641be2d

    move-object/from16 v3, p7

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, p9, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v4, v8, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v8, 0x6

    if-nez v4, :cond_3

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v8

    goto :goto_1

    :cond_3
    move v4, v8

    :goto_1
    and-int/lit8 v5, v8, 0x30

    if-nez v5, :cond_5

    move/from16 v5, p1

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    goto :goto_3

    :cond_5
    move/from16 v5, p1

    :goto_3
    and-int/lit16 v6, v8, 0x180

    if-nez v6, :cond_7

    move/from16 v6, p2

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v4, v7

    goto :goto_5

    :cond_7
    move/from16 v6, p2

    :goto_5
    and-int/lit8 v7, p9, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v4, v4, 0xc00

    :cond_8
    move/from16 v9, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v9, v8, 0xc00

    if-nez v9, :cond_8

    move/from16 v9, p3

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_6

    :cond_a
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v4, v10

    :goto_7
    and-int/lit16 v10, v8, 0x6000

    if-nez v10, :cond_c

    move-object/from16 v10, p4

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x4000

    goto :goto_8

    :cond_b
    const/16 v11, 0x2000

    :goto_8
    or-int/2addr v4, v11

    goto :goto_9

    :cond_c
    move-object/from16 v10, p4

    :goto_9
    const/high16 v11, 0x30000

    and-int/2addr v11, v8

    if-nez v11, :cond_e

    move-wide/from16 v11, p5

    invoke-virtual {v2, v11, v12}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v13

    if-eqz v13, :cond_d

    const/high16 v13, 0x20000

    goto :goto_a

    :cond_d
    const/high16 v13, 0x10000

    :goto_a
    or-int/2addr v4, v13

    goto :goto_b

    :cond_e
    move-wide/from16 v11, p5

    :goto_b
    const v13, 0x12493

    and-int/2addr v13, v4

    const v14, 0x12492

    const/4 v15, 0x1

    if-eq v13, v14, :cond_f

    move v13, v15

    goto :goto_c

    :cond_f
    const/4 v13, 0x0

    :goto_c
    and-int/2addr v4, v15

    invoke-virtual {v2, v4, v13}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_13

    if-eqz v3, :cond_10

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_10
    if-eqz v7, :cond_11

    const/4 v9, 0x0

    :cond_11
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v3, :cond_12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v3, "%0"

    const-string v4, "d"

    invoke-static {v13, v3, v4}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    new-instance v11, La50;

    move-wide/from16 v17, p5

    move-object v12, v0

    move v15, v9

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v18}, La50;-><init>(Landroidx/compose/ui/Modifier;ILjava/lang/String;ZLandroidx/compose/ui/text/TextStyle;J)V

    const v0, 0x5dc2e677

    invoke-static {v0, v11, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Lcom/vuitton/android/designkit/components/LeftToRightLayoutKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    move-object v1, v12

    move v4, v15

    goto :goto_d

    :cond_13
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    move v4, v9

    :goto_d
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_14

    new-instance v0, Lb50;

    move/from16 v9, p9

    move v2, v5

    move v3, v6

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v9}, Lb50;-><init>(Landroidx/compose/ui/Modifier;IIZLandroidx/compose/ui/text/TextStyle;JII)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method

.method public static final b(CZLandroidx/compose/ui/text/TextStyle;JLandroidx/compose/runtime/Composer;I)V
    .locals 16

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    const v0, -0x578e5a0b

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->k0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Character;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    move/from16 v1, p0

    if-ne v1, v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_0
    move/from16 v1, p0

    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    move v0, v7

    :goto_0
    const/4 v8, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    move v0, v8

    :goto_1
    or-int v0, p6, v0

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    const/16 v10, 0x20

    if-eqz v9, :cond_3

    move v9, v10

    goto :goto_2

    :cond_3
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v0, v9

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x100

    goto :goto_3

    :cond_4
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v0, v9

    invoke-virtual {v13, v4, v5}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x800

    goto :goto_4

    :cond_5
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v0, v9

    and-int/lit16 v9, v0, 0x493

    const/16 v11, 0x492

    if-eq v9, v11, :cond_6

    move v9, v7

    goto :goto_5

    :cond_6
    move v9, v6

    :goto_5
    and-int/lit8 v11, v0, 0x1

    invoke-virtual {v13, v11, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_a

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move v9, v6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    and-int/lit8 v11, v0, 0x70

    if-ne v11, v10, :cond_7

    move v9, v7

    :cond_7
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v9, :cond_8

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v9, :cond_9

    :cond_8
    new-instance v7, Lx4;

    invoke-direct {v7, v2, v8}, Lx4;-><init>(ZI)V

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v8, v7

    check-cast v8, Lkotlin/jvm/functions/Function1;

    new-instance v7, Lc50;

    invoke-direct {v7, v4, v5, v3}, Lc50;-><init>(JLandroidx/compose/ui/text/TextStyle;)V

    const v9, 0x38a3ba4

    invoke-static {v9, v7, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    and-int/lit8 v0, v0, 0xe

    const v7, 0x186000

    or-int v14, v0, v7

    const/16 v15, 0x2a

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v10, "Digit animation"

    const/4 v11, 0x0

    invoke-static/range {v6 .. v15}, Landroidx/compose/animation/AnimatedContentKt;->b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    goto :goto_6

    :cond_a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_b

    new-instance v0, Ld50;

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Ld50;-><init>(CZLandroidx/compose/ui/text/TextStyle;JI)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method
