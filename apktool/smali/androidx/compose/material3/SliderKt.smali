.class public abstract Landroidx/compose/material3/SliderKt;
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


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:J

.field public static final d:F

.field public static final e:F

.field public static final f:Landroidx/compose/ui/layout/VerticalAlignmentLine;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroidx/compose/material3/tokens/SliderTokens;->n:F

    sput v0, Landroidx/compose/material3/SliderKt;->a:F

    sget v0, Landroidx/compose/material3/tokens/SliderTokens;->l:F

    sput v0, Landroidx/compose/material3/SliderKt;->b:F

    sget v1, Landroidx/compose/material3/tokens/SliderTokens;->j:F

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpKt;->a(FF)J

    move-result-wide v2

    sput-wide v2, Landroidx/compose/material3/SliderKt;->c:J

    invoke-static {v1, v0}, Landroidx/compose/ui/unit/DpKt;->a(FF)J

    sget v0, Landroidx/compose/material3/tokens/SliderTokens;->a:F

    sput v0, Landroidx/compose/material3/SliderKt;->d:F

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Landroidx/compose/material3/SliderKt;->e:F

    new-instance v0, Landroidx/compose/ui/layout/VerticalAlignmentLine;

    sget-object v1, Landroidx/compose/material3/SliderKt$CornerSizeAlignmentLine$1;->b:Landroidx/compose/material3/SliderKt$CornerSizeAlignmentLine$1;

    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/VerticalAlignmentLine;-><init>(Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/material3/SliderKt;->f:Landroidx/compose/ui/layout/VerticalAlignmentLine;

    return-void
.end method

.method public static final a(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v5, p4

    move-object/from16 v10, p9

    move/from16 v11, p11

    if-eqz v0, :cond_0

    const-string v3, "Slider"

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v13, v0

    const v0, 0x3ac3ab6f

    move-object/from16 v3, p10

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v3, v11, 0x6

    const/4 v4, 0x2

    if-nez v3, :cond_2

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    or-int/2addr v3, v11

    goto :goto_1

    :cond_2
    move v3, v11

    :goto_1
    and-int/lit8 v7, v11, 0x30

    if-nez v7, :cond_4

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x20

    goto :goto_2

    :cond_3
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v3, v7

    :cond_4
    and-int/lit16 v7, v11, 0x180

    if-nez v7, :cond_6

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x100

    goto :goto_3

    :cond_5
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v3, v7

    :cond_6
    or-int/lit16 v3, v3, 0xc00

    and-int/lit16 v7, v11, 0x6000

    if-nez v7, :cond_8

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x4000

    goto :goto_4

    :cond_7
    const/16 v7, 0x2000

    :goto_4
    or-int/2addr v3, v7

    :cond_8
    const/high16 v7, 0x30000

    and-int/2addr v7, v11

    if-nez v7, :cond_9

    const/high16 v7, 0x10000

    or-int/2addr v3, v7

    :cond_9
    const/high16 v7, 0x180000

    and-int/2addr v7, v11

    if-nez v7, :cond_b

    move-object/from16 v7, p6

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/high16 v8, 0x100000

    goto :goto_5

    :cond_a
    const/high16 v8, 0x80000

    :goto_5
    or-int/2addr v3, v8

    goto :goto_6

    :cond_b
    move-object/from16 v7, p6

    :goto_6
    const/high16 v8, 0xc00000

    or-int/2addr v3, v8

    const/high16 v8, 0x6000000

    and-int/2addr v8, v11

    if-nez v8, :cond_d

    move-object/from16 v8, p7

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/high16 v9, 0x4000000

    goto :goto_7

    :cond_c
    const/high16 v9, 0x2000000

    :goto_7
    or-int/2addr v3, v9

    goto :goto_8

    :cond_d
    move-object/from16 v8, p7

    :goto_8
    const/high16 v9, 0x30000000

    and-int/2addr v9, v11

    if-nez v9, :cond_f

    move-object/from16 v9, p8

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/high16 v12, 0x20000000

    goto :goto_9

    :cond_e
    const/high16 v12, 0x10000000

    :goto_9
    or-int/2addr v3, v12

    goto :goto_a

    :cond_f
    move-object/from16 v9, p8

    :goto_a
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v12, 0x4

    goto :goto_b

    :cond_10
    move v12, v4

    :goto_b
    const v14, 0x12492493

    and-int/2addr v14, v3

    const v15, 0x12492492

    const/16 v16, 0x1

    if-ne v14, v15, :cond_12

    and-int/lit8 v14, v12, 0x3

    if-eq v14, v4, :cond_11

    goto :goto_c

    :cond_11
    const/4 v4, 0x0

    goto :goto_d

    :cond_12
    :goto_c
    move/from16 v4, v16

    :goto_d
    and-int/lit8 v14, v3, 0x1

    invoke-virtual {v0, v14, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v4, v11, 0x1

    const v14, -0x70001

    if-eqz v4, :cond_14

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_e

    :cond_13
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/2addr v3, v14

    move/from16 v14, p3

    move-object/from16 v4, p5

    goto :goto_f

    :cond_14
    :goto_e
    sget-object v4, Landroidx/compose/material3/SliderDefaults;->a:Landroidx/compose/material3/SliderDefaults;

    invoke-static {v0}, Landroidx/compose/material3/SliderDefaults;->d(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/SliderColors;

    move-result-object v4

    and-int/2addr v3, v14

    move/from16 v14, v16

    :goto_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v15, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v15, 0x1c00000

    and-int/2addr v15, v3

    const/high16 v6, 0x800000

    if-ne v15, v6, :cond_15

    move/from16 v6, v16

    goto :goto_10

    :cond_15
    const/4 v6, 0x0

    :goto_10
    and-int/lit8 v15, v12, 0xe

    xor-int/lit8 v15, v15, 0x6

    move/from16 p3, v3

    const/4 v3, 0x4

    if-le v15, v3, :cond_16

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_18

    :cond_16
    and-int/lit8 v12, v12, 0x6

    if-ne v12, v3, :cond_17

    goto :goto_11

    :cond_17
    const/16 v16, 0x0

    :cond_18
    :goto_11
    or-int v3, v6, v16

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_19

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v3, :cond_1a

    :cond_19
    new-instance v6, Landroidx/compose/material3/SliderState;

    const/4 v3, 0x0

    invoke-direct {v6, v1, v3, v5, v10}, Landroidx/compose/material3/SliderState;-><init>(FILkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;)V

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object v12, v6

    check-cast v12, Landroidx/compose/material3/SliderState;

    iput-object v5, v12, Landroidx/compose/material3/SliderState;->b:Lkotlin/jvm/functions/Function0;

    iput-object v2, v12, Landroidx/compose/material3/SliderState;->e:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12, v1}, Landroidx/compose/material3/SliderState;->e(F)V

    shr-int/lit8 v3, p3, 0x3

    and-int/lit16 v3, v3, 0x3f0

    shr-int/lit8 v6, p3, 0x6

    const v15, 0xe000

    and-int/2addr v6, v15

    or-int/2addr v3, v6

    shr-int/lit8 v6, p3, 0x9

    const/high16 v15, 0x70000

    and-int/2addr v15, v6

    or-int/2addr v3, v15

    const/high16 v15, 0x380000

    and-int/2addr v6, v15

    or-int v20, v3, v6

    const/16 v21, 0x8

    const/4 v15, 0x0

    move-object/from16 v19, v0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    invoke-static/range {v12 .. v21}, Landroidx/compose/material3/SliderKt;->b(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v6, v4

    move v4, v14

    goto :goto_12

    :cond_1b
    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v4, p3

    move-object/from16 v6, p5

    :goto_12
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_1c

    new-instance v0, Lz00;

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v3, v13

    invoke-direct/range {v0 .. v11}, Lz00;-><init>(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/ranges/ClosedFloatingPointRange;I)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method

.method public static final b(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v8, p8

    const-string v2, "Slider"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, 0x186dff48

    move-object/from16 v4, p7

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    and-int/lit8 v3, v8, 0x6

    if-nez v3, :cond_2

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v8

    goto :goto_1

    :cond_2
    move v3, v8

    :goto_1
    and-int/lit8 v4, p9, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v8, 0x30

    if-nez v5, :cond_5

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_5
    :goto_3
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v8, 0x180

    if-nez v7, :cond_6

    move/from16 v7, p2

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v3, v9

    :goto_5
    and-int/lit16 v9, v8, 0xc00

    if-nez v9, :cond_9

    or-int/lit16 v3, v3, 0x400

    :cond_9
    and-int/lit8 v9, p9, 0x10

    if-eqz v9, :cond_b

    or-int/lit16 v3, v3, 0x6000

    :cond_a
    move-object/from16 v10, p4

    goto :goto_7

    :cond_b
    and-int/lit16 v10, v8, 0x6000

    if-nez v10, :cond_a

    move-object/from16 v10, p4

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/16 v11, 0x4000

    goto :goto_6

    :cond_c
    const/16 v11, 0x2000

    :goto_6
    or-int/2addr v3, v11

    :goto_7
    and-int/lit8 v11, p9, 0x20

    const/high16 v12, 0x30000

    if-eqz v11, :cond_e

    or-int/2addr v3, v12

    :cond_d
    move-object/from16 v12, p5

    goto :goto_9

    :cond_e
    and-int/2addr v12, v8

    if-nez v12, :cond_d

    move-object/from16 v12, p5

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const/high16 v13, 0x20000

    goto :goto_8

    :cond_f
    const/high16 v13, 0x10000

    :goto_8
    or-int/2addr v3, v13

    :goto_9
    and-int/lit8 v13, p9, 0x40

    const/high16 v14, 0x180000

    if-eqz v13, :cond_11

    or-int/2addr v3, v14

    :cond_10
    move-object/from16 v14, p6

    goto :goto_b

    :cond_11
    and-int/2addr v14, v8

    if-nez v14, :cond_10

    move-object/from16 v14, p6

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    const/high16 v15, 0x100000

    goto :goto_a

    :cond_12
    const/high16 v15, 0x80000

    :goto_a
    or-int/2addr v3, v15

    :goto_b
    const v15, 0x92493

    and-int/2addr v15, v3

    move-object/from16 p1, v0

    const v0, 0x92492

    const/16 v16, 0x1

    if-eq v15, v0, :cond_13

    move/from16 v0, v16

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    :goto_c
    and-int/lit8 v15, v3, 0x1

    invoke-virtual {v6, v15, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit16 v0, v3, -0x1c01

    move-object/from16 v9, p3

    move v2, v7

    move-object v3, v10

    move-object v4, v12

    move-object v5, v14

    move-object/from16 v7, p1

    goto :goto_10

    :cond_15
    :goto_d
    if-eqz v4, :cond_16

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :cond_16
    move-object/from16 v0, p1

    :goto_e
    if-eqz v5, :cond_17

    move/from16 v7, v16

    :cond_17
    sget-object v2, Landroidx/compose/material3/SliderDefaults;->a:Landroidx/compose/material3/SliderDefaults;

    invoke-static {v6}, Landroidx/compose/material3/SliderDefaults;->d(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/SliderColors;

    move-result-object v2

    and-int/lit16 v3, v3, -0x1c01

    if-eqz v9, :cond_19

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v5, :cond_18

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v10, v4

    :cond_19
    if-eqz v11, :cond_1a

    new-instance v4, Landroidx/compose/material3/SliderKt$Slider$10;

    invoke-direct {v4, v10, v2, v7}, Landroidx/compose/material3/SliderKt$Slider$10;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/SliderColors;Z)V

    const v5, -0x7d399b88

    invoke-static {v5, v4, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    move-object v12, v4

    :cond_1a
    if-eqz v13, :cond_1b

    new-instance v4, Landroidx/compose/material3/SliderKt$Slider$11;

    invoke-direct {v4, v7, v2}, Landroidx/compose/material3/SliderKt$Slider$11;-><init>(ZLandroidx/compose/material3/SliderColors;)V

    const v5, -0x4d7635d

    invoke-static {v5, v4, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    move-object v9, v2

    move-object v5, v4

    move v2, v7

    move-object v4, v12

    :goto_f
    move-object v7, v0

    move v0, v3

    move-object v3, v10

    goto :goto_10

    :cond_1b
    move-object v9, v2

    move v2, v7

    move-object v4, v12

    move-object v5, v14

    goto :goto_f

    :goto_10
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget v10, v1, Landroidx/compose/material3/SliderState;->a:I

    if-ltz v10, :cond_1c

    shr-int/lit8 v10, v0, 0x3

    and-int/lit8 v11, v10, 0xe

    shl-int/lit8 v12, v0, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v11, v12

    and-int/lit16 v0, v0, 0x380

    or-int/2addr v0, v11

    and-int/lit16 v11, v10, 0x1c00

    or-int/2addr v0, v11

    const v11, 0xe000

    and-int/2addr v11, v10

    or-int/2addr v0, v11

    const/high16 v11, 0x70000

    and-int/2addr v10, v11

    or-int/2addr v0, v10

    move-object/from16 v17, v7

    move v7, v0

    move-object/from16 v0, v17

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/SliderKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    move-object v7, v5

    move-object v5, v3

    move v3, v2

    move-object v2, v0

    move-object v0, v6

    move-object v6, v4

    move-object v4, v9

    goto :goto_11

    :cond_1c
    const-string v0, "steps should be >= 0"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1d
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object v0, v6

    move v3, v7

    move-object v5, v10

    move-object v6, v12

    move-object v7, v14

    :goto_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_1e

    new-instance v0, Lbg;

    const/4 v10, 0x5

    move-object/from16 v1, p0

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lbg;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;III)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p7

    const-string v12, "SliderImpl"

    if-eqz v0, :cond_0

    invoke-static {v0, v12}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v13, v0

    const v0, 0x358907a3

    move-object/from16 v2, p6

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    iget-object v15, v14, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v0, v11, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v11

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_1
    and-int/lit8 v2, v11, 0x30

    if-nez v2, :cond_4

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    goto :goto_2

    :cond_3
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v0, v2

    :cond_4
    and-int/lit16 v2, v11, 0x180

    if-nez v2, :cond_6

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x100

    goto :goto_3

    :cond_5
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v0, v2

    :cond_6
    and-int/lit16 v2, v11, 0xc00

    if-nez v2, :cond_8

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x800

    goto :goto_4

    :cond_7
    const/16 v2, 0x400

    :goto_4
    or-int/2addr v0, v2

    :cond_8
    and-int/lit16 v2, v11, 0x6000

    if-nez v2, :cond_a

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x4000

    goto :goto_5

    :cond_9
    const/16 v2, 0x2000

    :goto_5
    or-int/2addr v0, v2

    :cond_a
    const/high16 v2, 0x30000

    and-int/2addr v2, v11

    if-nez v2, :cond_c

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/high16 v2, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v2, 0x10000

    :goto_6
    or-int/2addr v0, v2

    :cond_c
    move/from16 v16, v0

    const v0, 0x12493

    and-int v0, v16, v0

    const v2, 0x12492

    const/4 v3, 0x0

    if-eq v0, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    move v0, v3

    :goto_7
    and-int/lit8 v2, v16, 0x1

    invoke-virtual {v14, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v0, v2, :cond_e

    const/4 v0, 0x1

    goto :goto_8

    :cond_e
    move v0, v3

    :goto_8
    iput-boolean v0, v1, Landroidx/compose/material3/SliderState;->j:Z

    iget-object v2, v1, Landroidx/compose/material3/SliderState;->m:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v2, v5, :cond_10

    if-nez v0, :cond_f

    goto :goto_9

    :cond_f
    const/4 v7, 0x1

    goto :goto_a

    :cond_10
    :goto_9
    move v7, v3

    :goto_a
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_11

    new-instance v4, Landroidx/compose/material3/SliderKt$sliderTapModifier$1;

    invoke-direct {v4, v1}, Landroidx/compose/material3/SliderKt$sliderTapModifier$1;-><init>(Landroidx/compose/material3/SliderState;)V

    sget-object v5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a:Landroidx/compose/ui/input/pointer/PointerEvent;

    move-object v5, v0

    new-instance v0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    move-object v6, v5

    const/4 v5, 0x4

    move-object/from16 v17, v6

    const/4 v6, 0x0

    move/from16 v18, v3

    const/4 v3, 0x0

    move-object v11, v2

    move-object/from16 v8, v17

    move-object/from16 v2, p3

    move-object/from16 v17, v15

    move/from16 v15, v18

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_b

    :cond_11
    move-object v8, v0

    move-object v11, v2

    move-object/from16 v17, v15

    move v15, v3

    :goto_b
    iget-object v2, v1, Landroidx/compose/material3/SliderState;->m:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v3, v1, Landroidx/compose/material3/SliderState;->n:Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v8, 0x0

    if-nez v3, :cond_12

    if-ne v4, v6, :cond_13

    :cond_12
    new-instance v4, Landroidx/compose/material3/SliderKt$SliderImpl$drag$1$1;

    invoke-direct {v4, v1, v8}, Landroidx/compose/material3/SliderKt$SliderImpl$drag$1$1;-><init>(Landroidx/compose/material3/SliderState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v4, Lkotlin/jvm/functions/Function3;

    move-object v3, v8

    const/16 v8, 0x20

    move-object/from16 v18, v0

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    move-object v15, v3

    move-object/from16 v20, v6

    move-object/from16 v19, v18

    move/from16 v3, p2

    move-object v6, v4

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/gestures/DraggableKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v8

    move-object v0, v1

    move-object v1, v4

    move v5, v7

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v4, 0x3

    if-ne v11, v2, :cond_14

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroidx/compose/material3/SliderComponents;->THUMB:Landroidx/compose/material3/SliderComponents;

    invoke-static {v6, v7}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v6, v15, v4}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v6

    goto :goto_c

    :cond_14
    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroidx/compose/material3/SliderComponents;->THUMB:Landroidx/compose/material3/SliderComponents;

    invoke-static {v6, v7}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v6, v15, v4}, Landroidx/compose/foundation/layout/SizeKt;->x(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;I)Landroidx/compose/ui/Modifier;

    move-result-object v6

    :goto_c
    sget-object v7, Landroidx/compose/material3/InteractiveComponentSizeKt;->a:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    sget-object v7, Landroidx/compose/material3/MinimumInteractiveModifier;->b:Landroidx/compose/material3/MinimumInteractiveModifier;

    invoke-interface {v13, v7}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v22

    sget v7, Landroidx/compose/material3/SliderKt;->b:F

    sget v23, Landroidx/compose/material3/SliderKt;->a:F

    move/from16 v24, v23

    if-ne v11, v2, :cond_15

    goto :goto_d

    :cond_15
    move/from16 v23, v7

    :goto_d
    if-ne v11, v2, :cond_16

    move/from16 v24, v7

    :cond_16
    const/16 v26, 0x0

    const/16 v27, 0xc

    const/16 v25, 0x0

    invoke-static/range {v22 .. v27}, Landroidx/compose/foundation/layout/SizeKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    move-object/from16 v22, v15

    new-instance v15, Lka;

    invoke-direct {v15, v3, v0, v4}, Lka;-><init>(ZLjava/lang/Object;I)V

    const/4 v4, 0x0

    invoke-static {v7, v4, v15}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    iget-object v4, v0, Landroidx/compose/material3/SliderState;->c:Lkotlin/ranges/ClosedFloatingPointRange;

    if-ne v11, v2, :cond_17

    sget-object v2, Landroidx/compose/material3/internal/AccessibilityUtilKt;->d:Landroidx/compose/ui/Modifier;

    goto :goto_e

    :cond_17
    sget-object v2, Landroidx/compose/material3/internal/AccessibilityUtilKt;->c:Landroidx/compose/ui/Modifier;

    :goto_e
    invoke-interface {v7, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/material3/SliderState;->d()F

    move-result v7

    invoke-interface {v4}, Lkotlin/ranges/ClosedRange;->i()Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    invoke-interface {v4}, Lkotlin/ranges/ClosedRange;->f()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v11, v4}, Lkotlin/ranges/RangesKt;->h(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v4

    iget v11, v0, Landroidx/compose/material3/SliderState;->a:I

    new-instance v15, Lu60;

    invoke-direct {v15, v7, v4, v11}, Lu60;-><init>(FLkotlin/ranges/ClosedFloatingPointRange;I)V

    const/4 v11, 0x1

    invoke-static {v2, v11, v15}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v3, v1}, Landroidx/compose/foundation/FocusableKt;->b(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    iget v4, v0, Landroidx/compose/material3/SliderState;->a:I

    iget-object v3, v0, Landroidx/compose/material3/SliderState;->c:Lkotlin/ranges/ClosedFloatingPointRange;

    move-object v2, v6

    invoke-virtual {v0}, Landroidx/compose/material3/SliderState;->d()F

    move-result v6

    move-object v7, v2

    iget-object v2, v0, Landroidx/compose/material3/SliderState;->e:Lkotlin/jvm/functions/Function1;

    move-object/from16 v21, v7

    iget-object v7, v0, Landroidx/compose/material3/SliderState;->b:Lkotlin/jvm/functions/Function0;

    if-ltz v4, :cond_28

    new-instance v0, Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;

    move-object/from16 v1, v21

    move-object/from16 v21, v13

    move-object v13, v1

    move-object/from16 v11, p1

    move/from16 v1, p2

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;IZFLkotlin/jvm/functions/Function0;)V

    invoke-static {v15, v0}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v0, v8}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_18

    move-object/from16 v1, v20

    if-ne v2, v1, :cond_19

    goto :goto_f

    :cond_18
    move-object/from16 v1, v20

    :goto_f
    new-instance v2, Landroidx/compose/material3/SliderKt$SliderImpl$2$1;

    invoke-direct {v2, v11}, Landroidx/compose/material3/SliderKt$SliderImpl$2$1;-><init>(Landroidx/compose/material3/SliderState;)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v2, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->G()I

    move-result v3

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v14, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v17, :cond_27

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_1a

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_1a
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_10
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v2, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v4, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    iget-boolean v7, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v7, :cond_1b

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    :cond_1b
    invoke-static {v3, v14, v3, v4}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_1c
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v0, :cond_1d

    if-ne v7, v1, :cond_1e

    :cond_1d
    new-instance v7, Lq80;

    const/4 v0, 0x1

    invoke-direct {v7, v11, v0}, Lq80;-><init>(Landroidx/compose/material3/SliderState;I)V

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v7}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v15, 0x0

    invoke-static {v1, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->G()I

    move-result v8

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v14, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v17, :cond_26

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_1f

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    :cond_1f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_11
    invoke-static {v14, v7, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v13, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v7, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v7, :cond_20

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    :cond_20
    invoke-static {v8, v14, v8, v4}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_21
    invoke-static {v14, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v16, 0x3

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v7, v16, 0x9

    and-int/lit8 v7, v7, 0x70

    or-int/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v11, v14, v7}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroidx/compose/material3/SliderComponents;->TRACK:Landroidx/compose/material3/SliderComponents;

    invoke-static {v7, v8}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/4 v15, 0x0

    invoke-static {v1, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->G()I

    move-result v8

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v14, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-eqz v17, :cond_25

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_22

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_22
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_12
    invoke-static {v14, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v12, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v1, :cond_23

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    :cond_23
    invoke-static {v8, v14, v8, v4}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_24
    invoke-static {v14, v7, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v1, v16, 0xc

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v11, v14, v0}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_25
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v22

    :cond_26
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v22

    :cond_27
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v22

    :cond_28
    const-string v0, "steps should be >= 0"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_29
    move-object v11, v1

    move-object/from16 v21, v13

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_13
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_2a

    new-instance v0, Lp1;

    const/16 v8, 0xf

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p7

    move-object v5, v9

    move-object v6, v10

    move-object v2, v11

    move-object/from16 v1, v21

    invoke-direct/range {v0 .. v8}, Lp1;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Lkotlin/Function;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2a
    return-void
.end method

.method public static final d(F[FFF)F
    .locals 7

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p2, p3, v0}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    move-result v3

    sub-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    if-gt v2, v1, :cond_3

    :goto_0
    aget v4, p1, v2

    invoke-static {p2, p3, v4}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    move-result v5

    sub-float/2addr v5, p0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-lez v6, :cond_2

    move v0, v4

    move v3, v5

    :cond_2
    if-eq v2, v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p2, p3, p0}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    move-result p0

    :cond_4
    return p0
.end method
