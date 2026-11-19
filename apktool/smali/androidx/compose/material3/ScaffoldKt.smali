.class public abstract Landroidx/compose/material3/ScaffoldKt;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x41800000    # 16.0f

    sput v0, Landroidx/compose/material3/ScaffoldKt;->a:F

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v13, p13

    move/from16 v14, p14

    const-string v1, "Scaffold-TvnljyQ"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x4835c278

    move-object/from16 v3, p12

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v4, v13, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v13, 0x6

    if-nez v4, :cond_3

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v13

    goto :goto_1

    :cond_3
    move v4, v13

    :goto_1
    and-int/lit8 v5, v14, 0x2

    if-eqz v5, :cond_5

    or-int/lit8 v4, v4, 0x30

    :cond_4
    move-object/from16 v6, p1

    goto :goto_3

    :cond_5
    and-int/lit8 v6, v13, 0x30

    if-nez v6, :cond_4

    move-object/from16 v6, p1

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x20

    goto :goto_2

    :cond_6
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    :goto_3
    and-int/lit8 v7, v14, 0x4

    if-eqz v7, :cond_8

    or-int/lit16 v4, v4, 0x180

    :cond_7
    move-object/from16 v8, p2

    goto :goto_5

    :cond_8
    and-int/lit16 v8, v13, 0x180

    if-nez v8, :cond_7

    move-object/from16 v8, p2

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x100

    goto :goto_4

    :cond_9
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v4, v9

    :goto_5
    and-int/lit8 v9, v14, 0x8

    if-eqz v9, :cond_b

    or-int/lit16 v4, v4, 0xc00

    :cond_a
    move-object/from16 v10, p3

    goto :goto_7

    :cond_b
    and-int/lit16 v10, v13, 0xc00

    if-nez v10, :cond_a

    move-object/from16 v10, p3

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/16 v11, 0x800

    goto :goto_6

    :cond_c
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v4, v11

    :goto_7
    and-int/lit8 v11, v14, 0x10

    if-eqz v11, :cond_e

    or-int/lit16 v4, v4, 0x6000

    :cond_d
    move-object/from16 v12, p4

    goto :goto_9

    :cond_e
    and-int/lit16 v12, v13, 0x6000

    if-nez v12, :cond_d

    move-object/from16 v12, p4

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    const/16 v15, 0x4000

    goto :goto_8

    :cond_f
    const/16 v15, 0x2000

    :goto_8
    or-int/2addr v4, v15

    :goto_9
    const/high16 v15, 0x30000

    or-int/2addr v4, v15

    const/high16 v15, 0x180000

    and-int/2addr v15, v13

    if-nez v15, :cond_11

    and-int/lit8 v15, v14, 0x40

    move/from16 p0, v3

    move/from16 p12, v4

    move-wide/from16 v3, p6

    if-nez v15, :cond_10

    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v15

    if-eqz v15, :cond_10

    const/high16 v15, 0x100000

    goto :goto_a

    :cond_10
    const/high16 v15, 0x80000

    :goto_a
    or-int v15, p12, v15

    goto :goto_b

    :cond_11
    move/from16 p0, v3

    move/from16 p12, v4

    move-wide/from16 v3, p6

    move/from16 v15, p12

    :goto_b
    const/high16 v16, 0xc00000

    and-int v17, v13, v16

    if-nez v17, :cond_13

    move-object/from16 v17, v0

    and-int/lit16 v0, v14, 0x80

    move-wide/from16 v3, p8

    if-nez v0, :cond_12

    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x800000

    goto :goto_c

    :cond_12
    const/high16 v0, 0x400000

    :goto_c
    or-int/2addr v15, v0

    goto :goto_d

    :cond_13
    move-wide/from16 v3, p8

    move-object/from16 v17, v0

    :goto_d
    const/high16 v0, 0x6000000

    and-int v18, v13, v0

    move/from16 p12, v0

    if-nez v18, :cond_16

    and-int/lit16 v0, v14, 0x100

    if-nez v0, :cond_14

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    const/high16 v19, 0x4000000

    goto :goto_e

    :cond_14
    move-object/from16 v0, p10

    :cond_15
    const/high16 v19, 0x2000000

    :goto_e
    or-int v15, v15, v19

    goto :goto_f

    :cond_16
    move-object/from16 v0, p10

    :goto_f
    const/high16 v19, 0x30000000

    and-int v19, v13, v19

    move-object/from16 v0, p11

    if-nez v19, :cond_18

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    const/high16 v19, 0x20000000

    goto :goto_10

    :cond_17
    const/high16 v19, 0x10000000

    :goto_10
    or-int v15, v15, v19

    :cond_18
    const v19, 0x12492493

    and-int v0, v15, v19

    const v3, 0x12492492

    const/16 v19, 0x1

    if-eq v0, v3, :cond_19

    move/from16 v0, v19

    goto :goto_11

    :cond_19
    const/4 v0, 0x0

    :goto_11
    and-int/lit8 v3, v15, 0x1

    invoke-virtual {v2, v3, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v13, 0x1

    const v3, -0xe000001

    const v20, -0x1c00001

    const v21, -0x380001

    if-eqz v0, :cond_1e

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_12

    :cond_1a
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_1b

    and-int v15, v15, v21

    :cond_1b
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_1c

    and-int v15, v15, v20

    :cond_1c
    and-int/lit16 v0, v14, 0x100

    if-eqz v0, :cond_1d

    and-int/2addr v15, v3

    :cond_1d
    move-object/from16 v3, p10

    move-object v1, v6

    move-object v5, v8

    move-object v6, v10

    move-object v7, v12

    move-object/from16 v0, v17

    move/from16 v11, v19

    const/4 v4, 0x0

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v19, p8

    goto/16 :goto_1b

    :cond_1e
    :goto_12
    if-eqz p0, :cond_1f

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :cond_1f
    move-object/from16 v0, v17

    :goto_13
    if-eqz v5, :cond_20

    sget-object v1, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->a:Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_14

    :cond_20
    move-object v1, v6

    :goto_14
    if-eqz v7, :cond_21

    sget-object v5, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->a:Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_15

    :cond_21
    move-object v5, v8

    :goto_15
    if-eqz v9, :cond_22

    sget-object v6, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->a:Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_16

    :cond_22
    move-object v6, v10

    :goto_16
    if-eqz v11, :cond_23

    sget-object v7, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->a:Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->e:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_17

    :cond_23
    move-object v7, v12

    :goto_17
    sget-object v8, Landroidx/compose/material3/FabPosition;->a:Landroidx/compose/material3/FabPosition$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v8, Landroidx/compose/material3/FabPosition;->b:I

    and-int/lit8 v9, v14, 0x40

    if-eqz v9, :cond_24

    invoke-static {v2}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v9

    iget-wide v9, v9, Landroidx/compose/material3/ColorScheme;->n:J

    and-int v15, v15, v21

    goto :goto_18

    :cond_24
    move-wide/from16 v9, p6

    :goto_18
    and-int/lit16 v11, v14, 0x80

    if-eqz v11, :cond_25

    invoke-static {v9, v10, v2}, Landroidx/compose/material3/ColorSchemeKt;->b(JLandroidx/compose/runtime/Composer;)J

    move-result-wide v11

    and-int v15, v15, v20

    goto :goto_19

    :cond_25
    move-wide/from16 v11, p8

    :goto_19
    move/from16 p0, v3

    and-int/lit16 v3, v14, 0x100

    if-eqz v3, :cond_26

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v3

    sget-object v17, Landroidx/compose/foundation/layout/WindowInsetsHolder;->y:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    move-result-object v4

    iget-object v4, v4, Landroidx/compose/foundation/layout/WindowInsetsHolder;->b:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/WindowInsetsKt;->i(Landroidx/compose/foundation/layout/AndroidWindowInsets;Landroidx/compose/foundation/layout/AndroidWindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v3

    and-int v15, v15, p0

    move-wide/from16 v27, v11

    move/from16 v11, v19

    move-wide/from16 v19, v27

    :goto_1a
    const/4 v4, 0x0

    goto :goto_1b

    :cond_26
    move-wide v3, v11

    move/from16 v11, v19

    move-wide/from16 v19, v3

    move-object/from16 v3, p10

    goto :goto_1a

    :goto_1b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v12, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v12, 0xe000000

    and-int/2addr v12, v15

    xor-int v12, v12, p12

    const/high16 v4, 0x4000000

    if-le v12, v4, :cond_27

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_28

    :cond_27
    and-int v11, v15, p12

    if-ne v11, v4, :cond_29

    :cond_28
    const/4 v4, 0x1

    goto :goto_1c

    :cond_29
    const/4 v4, 0x0

    :goto_1c
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 p3, v1

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_2a

    if-ne v11, v1, :cond_2b

    :cond_2a
    new-instance v11, Landroidx/compose/material3/internal/MutableWindowInsets;

    invoke-direct {v11, v3}, Landroidx/compose/material3/internal/MutableWindowInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;)V

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2b
    check-cast v11, Landroidx/compose/material3/internal/MutableWindowInsets;

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    move/from16 p2, v4

    const/high16 v4, 0x4000000

    if-le v12, v4, :cond_2c

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2d

    :cond_2c
    and-int v12, v15, p12

    if-ne v12, v4, :cond_2e

    :cond_2d
    const/4 v4, 0x1

    goto :goto_1d

    :cond_2e
    const/4 v4, 0x0

    :goto_1d
    or-int v4, p2, v4

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    move/from16 p0, v4

    const/16 v4, 0xc

    if-nez p0, :cond_2f

    if-ne v12, v1, :cond_30

    :cond_2f
    new-instance v12, Lrp0;

    invoke-direct {v12, v11, v3, v4}, Lrp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_30
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v12}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->c(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v12, Landroidx/compose/material3/ScaffoldKt$Scaffold$2;

    move-object/from16 p4, p11

    move-object/from16 p8, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p2, v8

    move-object/from16 p7, v11

    move-object/from16 p1, v12

    invoke-direct/range {p1 .. p8}, Landroidx/compose/material3/ScaffoldKt$Scaffold$2;-><init>(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/internal/MutableWindowInsets;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v11, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v12, p6

    move/from16 p0, v4

    const v4, 0x329906e3

    invoke-static {v4, v11, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v23

    shr-int/lit8 v4, v15, 0xc

    and-int/lit16 v11, v4, 0x380

    or-int v11, v11, v16

    and-int/lit16 v4, v4, 0x1c00

    or-int v25, v11, v4

    const/16 v26, 0x72

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v1

    move-object/from16 v24, v2

    move-wide/from16 v17, v9

    invoke-static/range {v15 .. v26}, Landroidx/compose/material3/SurfaceKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object v1, v0

    move-object v11, v3

    move-object v3, v5

    move-object v2, v6

    move-object v4, v7

    move v6, v8

    move-wide/from16 v7, v17

    move-wide/from16 v9, v19

    :goto_1e
    move-object v5, v12

    goto :goto_1f

    :cond_31
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v11, p10

    move-object v2, v6

    move-object v3, v8

    move-object v4, v10

    move-object/from16 v1, v17

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    goto :goto_1e

    :goto_1f
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_32

    new-instance v0, Lau0;

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v14}, Lau0;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;II)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_32
    return-void
.end method

.method public static final b(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    const v0, -0x10b4d90d

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    move/from16 v13, p0

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p8, v1

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0x20

    if-eqz v8, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    const/16 v8, 0x10

    :goto_1
    or-int/2addr v1, v8

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x100

    goto :goto_2

    :cond_2
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v1, v8

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    const/16 v11, 0x800

    if-eqz v8, :cond_3

    move v8, v11

    goto :goto_3

    :cond_3
    const/16 v8, 0x400

    :goto_3
    or-int/2addr v1, v8

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x4000

    goto :goto_4

    :cond_4
    const/16 v8, 0x2000

    :goto_4
    or-int/2addr v1, v8

    move-object/from16 v8, p5

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/high16 v14, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v14, 0x10000

    :goto_5
    or-int/2addr v1, v14

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/high16 v14, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v14, 0x80000

    :goto_6
    or-int/2addr v1, v14

    const v14, 0x92493

    and-int/2addr v14, v1

    const v15, 0x92492

    const/4 v6, 0x1

    if-eq v14, v15, :cond_7

    move v14, v6

    goto :goto_7

    :cond_7
    const/4 v14, 0x0

    :goto_7
    and-int/lit8 v15, v1, 0x1

    invoke-virtual {v0, v15, v14}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v14

    if-eqz v14, :cond_1c

    sget-object v14, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v14, v15, :cond_8

    new-instance v14, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

    invoke-direct {v14}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;-><init>()V

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v14, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

    and-int/lit8 v10, v1, 0x70

    if-ne v10, v9, :cond_9

    move v9, v6

    goto :goto_8

    :cond_9
    const/4 v9, 0x0

    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_a

    if-ne v10, v15, :cond_b

    :cond_a
    new-instance v9, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$topBarContent$1$1;

    invoke-direct {v9, v2}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$topBarContent$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v10, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v12, 0x24128b30

    invoke-direct {v10, v12, v6, v9}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v10, Lkotlin/jvm/functions/Function2;

    and-int/lit16 v9, v1, 0x1c00

    if-ne v9, v11, :cond_c

    move v9, v6

    goto :goto_9

    :cond_c
    const/4 v9, 0x0

    :goto_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v9, :cond_d

    if-ne v11, v15, :cond_e

    :cond_d
    new-instance v9, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$snackbarContent$1$1;

    invoke-direct {v9, v4}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$snackbarContent$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v11, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v12, 0x18f7e4f7

    invoke-direct {v11, v12, v6, v9}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v11, Lkotlin/jvm/functions/Function2;

    const v9, 0xe000

    and-int/2addr v9, v1

    const/16 v12, 0x4000

    if-ne v9, v12, :cond_f

    move v9, v6

    goto :goto_a

    :cond_f
    const/4 v9, 0x0

    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v9, :cond_10

    if-ne v12, v15, :cond_11

    :cond_10
    new-instance v9, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$fabContent$1$1;

    invoke-direct {v9, v5}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$fabContent$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v12, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, 0x142ea147

    invoke-direct {v12, v2, v6, v9}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v12, Lkotlin/jvm/functions/Function2;

    and-int/lit16 v2, v1, 0x380

    const/16 v9, 0x100

    if-ne v2, v9, :cond_12

    move v2, v6

    goto :goto_b

    :cond_12
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v2, :cond_14

    if-ne v9, v15, :cond_13

    goto :goto_c

    :cond_13
    move/from16 v17, v1

    goto :goto_d

    :cond_14
    :goto_c
    new-instance v2, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$bodyContent$1$1;

    invoke-direct {v2, v3, v14}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$bodyContent$1$1;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;)V

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move/from16 v17, v1

    const v1, -0x69e1890d

    invoke-direct {v9, v1, v6, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_d
    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/high16 v1, 0x380000

    and-int v1, v17, v1

    const/high16 v2, 0x100000

    if-ne v1, v2, :cond_15

    move v1, v6

    goto :goto_e

    :cond_15
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_16

    if-ne v2, v15, :cond_17

    :cond_16
    new-instance v1, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$bottomBarContent$1$1;

    invoke-direct {v1, v7}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$bottomBarContent$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x67371298

    invoke-direct {v2, v3, v6, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/high16 v1, 0x70000

    and-int v1, v17, v1

    const/high16 v3, 0x20000

    if-ne v1, v3, :cond_18

    move v1, v6

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    and-int/lit8 v3, v17, 0xe

    const/4 v6, 0x4

    if-ne v3, v6, :cond_19

    const/4 v3, 0x1

    goto :goto_10

    :cond_19
    const/4 v3, 0x0

    :goto_10
    or-int/2addr v1, v3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_1a

    if-ne v3, v15, :cond_1b

    :cond_1a
    new-instance v8, Landroidx/compose/material3/r;

    move-object/from16 v16, v9

    move-object v15, v14

    move-object/from16 v9, p5

    move-object v14, v2

    invoke-direct/range {v8 .. v16}, Landroidx/compose/material3/r;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v8

    :cond_1b
    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static {v1, v3, v0, v2, v6}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    goto :goto_11

    :cond_1c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1d

    new-instance v0, Lz2;

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lz2;-><init>(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1d
    return-void
.end method
