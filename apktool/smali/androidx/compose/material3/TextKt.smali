.class public abstract Landroidx/compose/material3/TextKt;
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
.field public static final a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->n()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    new-instance v1, Lo11;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lo11;-><init>(I)V

    new-instance v2, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-direct {v2, v0, v1}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)V

    sput-object v2, Landroidx/compose/material3/TextKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    const v0, 0xe9e0ce

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    and-int/lit8 v1, p3, 0x30

    if-nez v1, :cond_2

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    :cond_2
    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/material3/TextKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v2, p0}, Landroidx/compose/ui/text/TextStyle;->d(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    and-int/lit8 v0, v0, 0x70

    const/16 v2, 0x8

    or-int/2addr v0, v2

    invoke-static {v1, p1, p2, v0}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Li31;

    invoke-direct {v0, p0, p1, p3, v3}, Li31;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method

.method public static final b(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJJIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V
    .locals 26

    move-object/from16 v0, p1

    const-string v1, "Text--4IGK_g"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x7a7e7926

    move-object/from16 v3, p15

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, p16, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int v4, p16, v4

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move/from16 v4, p16

    :goto_1
    and-int/lit8 v5, p17, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    :goto_3
    const v6, 0x36db6d80

    or-int/2addr v4, v6

    const/high16 v6, 0x10000

    and-int v7, p17, v6

    if-nez v7, :cond_5

    move-object/from16 v7, p14

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/high16 v8, 0x100000

    goto :goto_4

    :cond_5
    move-object/from16 v7, p14

    :cond_6
    const/high16 v8, 0x80000

    :goto_4
    const v9, 0x36db6

    or-int/2addr v8, v9

    const v10, 0x12492493

    and-int/2addr v10, v4

    const v11, 0x12492492

    const/4 v12, 0x1

    if-ne v10, v11, :cond_8

    const v10, 0x92493

    and-int/2addr v10, v8

    const v11, 0x92492

    if-eq v10, v11, :cond_7

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    move v10, v12

    :goto_6
    and-int/lit8 v11, v4, 0x1

    invoke-virtual {v2, v11, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v10, p16, 0x1

    if-eqz v10, :cond_b

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int v1, p17, v6

    move-wide/from16 v5, p2

    move-wide/from16 v10, p6

    move-wide/from16 v14, p8

    move/from16 v16, p10

    move/from16 v17, p11

    move/from16 v18, p12

    move/from16 v19, p13

    move-object/from16 v21, v7

    if-eqz v1, :cond_a

    :goto_7
    move-wide/from16 v7, p4

    goto :goto_a

    :cond_a
    move v9, v8

    goto :goto_7

    :cond_b
    :goto_8
    if-eqz v5, :cond_c

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_c
    sget-object v1, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v10, Landroidx/compose/ui/graphics/Color;->i:J

    sget-object v1, Landroidx/compose/ui/unit/TextUnit;->b:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v13, Landroidx/compose/ui/unit/TextUnit;->d:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/text/style/TextOverflow;->b:I

    and-int v5, p17, v6

    const v6, 0x7fffffff

    if-eqz v5, :cond_d

    sget-object v5, Landroidx/compose/material3/TextKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/TextStyle;

    move/from16 v16, v1

    move-object/from16 v21, v5

    move/from16 v18, v6

    :goto_9
    move-wide v5, v10

    move/from16 v17, v12

    move/from16 v19, v17

    move-wide v7, v13

    move-wide v10, v7

    move-wide v14, v10

    goto :goto_a

    :cond_d
    move/from16 v16, v1

    move/from16 v18, v6

    move-object/from16 v21, v7

    move v9, v8

    goto :goto_9

    :goto_a
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v1, v4, 0xe

    or-int/lit16 v1, v1, 0xc00

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v1, v4

    const v4, 0x36db6180

    or-int v23, v1, v4

    shl-int/lit8 v1, v9, 0x3

    const/high16 v4, 0x1c00000

    and-int/2addr v1, v4

    const v4, 0x1b6db6

    or-int v24, v4, v1

    const/16 v25, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x0

    move-object v4, v0

    move-object/from16 v22, v2

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-wide v11, v10

    move-wide v13, v14

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v21

    move-wide v9, v7

    move-wide v7, v5

    move-object v6, v4

    goto :goto_b

    :cond_e
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->D()V

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move-wide/from16 v13, p8

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move-object v6, v0

    move-object/from16 v19, v7

    move-wide/from16 v7, p2

    :goto_b
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v4, Lg31;

    move-object/from16 v5, p0

    move/from16 v20, p16

    move/from16 v21, p17

    invoke-direct/range {v4 .. v21}, Lg31;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJJIZIILandroidx/compose/ui/text/TextStyle;II)V

    iput-object v4, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V
    .locals 43

    move-object/from16 v0, p1

    move/from16 v1, p20

    move/from16 v2, p21

    move/from16 v3, p22

    const-string v4, "Text-Nvy7gAk"

    if-eqz v0, :cond_0

    invoke-static {v0, v4}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v5, 0x6bda414b

    move-object/from16 v6, p19

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    and-int/lit8 v6, v1, 0x6

    if-nez v6, :cond_2

    move-object/from16 v6, p0

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    :goto_0
    or-int/2addr v9, v1

    goto :goto_1

    :cond_2
    move-object/from16 v6, p0

    move v9, v1

    :goto_1
    and-int/lit8 v10, v3, 0x2

    if-eqz v10, :cond_3

    or-int/lit8 v9, v9, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v13, v1, 0x30

    if-nez v13, :cond_5

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x20

    goto :goto_2

    :cond_4
    const/16 v13, 0x10

    :goto_2
    or-int/2addr v9, v13

    :cond_5
    :goto_3
    and-int/lit8 v13, v3, 0x4

    if-eqz v13, :cond_7

    or-int/lit16 v9, v9, 0x180

    :cond_6
    move v7, v9

    move-wide/from16 v8, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v1, 0x180

    if-nez v7, :cond_6

    move v7, v9

    move-wide/from16 v8, p2

    invoke-virtual {v5, v8, v9}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    const/16 v16, 0x80

    :goto_4
    or-int v7, v7, v16

    :goto_5
    and-int/lit8 v16, v3, 0x8

    const/4 v11, 0x0

    const/16 v18, 0x400

    const/16 v19, 0x800

    if-eqz v16, :cond_9

    or-int/lit16 v7, v7, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v12, v1, 0xc00

    if-nez v12, :cond_b

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    move/from16 v12, v19

    goto :goto_6

    :cond_a
    move/from16 v12, v18

    :goto_6
    or-int/2addr v7, v12

    :cond_b
    :goto_7
    and-int/lit8 v12, v3, 0x10

    const/16 v20, 0x2000

    const/16 v21, 0x4000

    if-eqz v12, :cond_c

    or-int/lit16 v7, v7, 0x6000

    move/from16 v23, v12

    move-wide/from16 v11, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v14, v1, 0x6000

    move/from16 v23, v12

    move-wide/from16 v11, p4

    if-nez v14, :cond_e

    invoke-virtual {v5, v11, v12}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v24

    if-eqz v24, :cond_d

    move/from16 v24, v21

    goto :goto_8

    :cond_d
    move/from16 v24, v20

    :goto_8
    or-int v7, v7, v24

    :cond_e
    :goto_9
    and-int/lit8 v24, v3, 0x20

    const/high16 v25, 0x10000

    const/high16 v26, 0x30000

    const/high16 v27, 0x20000

    if-eqz v24, :cond_f

    or-int v7, v7, v26

    goto :goto_b

    :cond_f
    and-int v24, v1, v26

    if-nez v24, :cond_11

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    move/from16 v24, v27

    goto :goto_a

    :cond_10
    move/from16 v24, v25

    :goto_a
    or-int v7, v7, v24

    :cond_11
    :goto_b
    and-int/lit8 v24, v3, 0x40

    const/high16 v28, 0x80000

    const/high16 v29, 0x100000

    const/high16 v30, 0x180000

    if-eqz v24, :cond_12

    or-int v7, v7, v30

    move-object/from16 v14, p6

    goto :goto_d

    :cond_12
    and-int v31, v1, v30

    move-object/from16 v14, p6

    if-nez v31, :cond_14

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_13

    move/from16 v32, v29

    goto :goto_c

    :cond_13
    move/from16 v32, v28

    :goto_c
    or-int v7, v7, v32

    :cond_14
    :goto_d
    and-int/lit16 v15, v3, 0x80

    const/high16 v33, 0x400000

    const/high16 v34, 0x800000

    const/high16 v35, 0xc00000

    if-eqz v15, :cond_16

    or-int v7, v7, v35

    :cond_15
    const/4 v15, 0x0

    goto :goto_f

    :cond_16
    and-int v15, v1, v35

    if-nez v15, :cond_15

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_17

    move/from16 v31, v34

    goto :goto_e

    :cond_17
    move/from16 v31, v33

    :goto_e
    or-int v7, v7, v31

    :goto_f
    and-int/lit16 v15, v3, 0x100

    const/high16 v36, 0x6000000

    if-eqz v15, :cond_19

    or-int v7, v7, v36

    :cond_18
    move-object/from16 v36, v0

    move-wide/from16 v0, p7

    goto :goto_11

    :cond_19
    and-int v36, v1, v36

    if-nez v36, :cond_18

    move-object/from16 v36, v0

    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v37

    if-eqz v37, :cond_1a

    const/high16 v37, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v37, 0x2000000

    :goto_10
    or-int v7, v7, v37

    :goto_11
    and-int/lit16 v0, v3, 0x200

    const/high16 v1, 0x30000000

    if-eqz v0, :cond_1c

    or-int/2addr v7, v1

    :cond_1b
    move-object/from16 v1, p9

    goto :goto_13

    :cond_1c
    and-int v1, p20, v1

    if-nez v1, :cond_1b

    move-object/from16 v1, p9

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1d

    const/high16 v37, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v37, 0x10000000

    :goto_12
    or-int v7, v7, v37

    :goto_13
    move/from16 v37, v0

    and-int/lit16 v0, v3, 0x400

    if-eqz v0, :cond_1e

    or-int/lit8 v38, v2, 0x6

    move/from16 v39, v38

    move/from16 v38, v0

    move-object/from16 v0, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v38, v2, 0x6

    if-nez v38, :cond_20

    move/from16 v38, v0

    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1f

    const/16 v39, 0x4

    goto :goto_14

    :cond_1f
    const/16 v39, 0x2

    :goto_14
    or-int v39, v2, v39

    goto :goto_15

    :cond_20
    move/from16 v38, v0

    move-object/from16 v0, p10

    move/from16 v39, v2

    :goto_15
    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_21

    or-int/lit8 v39, v39, 0x30

    move/from16 v40, v0

    :goto_16
    move/from16 v0, v39

    goto :goto_18

    :cond_21
    and-int/lit8 v40, v2, 0x30

    if-nez v40, :cond_23

    move/from16 v40, v0

    move-wide/from16 v0, p11

    invoke-virtual {v5, v0, v1}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v41

    if-eqz v41, :cond_22

    const/16 v16, 0x20

    goto :goto_17

    :cond_22
    const/16 v16, 0x10

    :goto_17
    or-int v39, v39, v16

    goto :goto_16

    :cond_23
    move/from16 v40, v0

    move-wide/from16 v0, p11

    goto :goto_16

    :goto_18
    and-int/lit16 v1, v3, 0x1000

    if-eqz v1, :cond_24

    or-int/lit16 v0, v0, 0x180

    goto :goto_1b

    :cond_24
    move/from16 v16, v0

    and-int/lit16 v0, v2, 0x180

    if-nez v0, :cond_26

    move/from16 v0, p13

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v17

    if-eqz v17, :cond_25

    const/16 v32, 0x100

    goto :goto_19

    :cond_25
    const/16 v32, 0x80

    :goto_19
    or-int v16, v16, v32

    :goto_1a
    move/from16 v0, v16

    goto :goto_1b

    :cond_26
    move/from16 v0, p13

    goto :goto_1a

    :goto_1b
    move/from16 v16, v1

    and-int/lit16 v1, v3, 0x2000

    if-eqz v1, :cond_27

    or-int/lit16 v0, v0, 0xc00

    goto :goto_1d

    :cond_27
    move/from16 v17, v0

    and-int/lit16 v0, v2, 0xc00

    if-nez v0, :cond_29

    move/from16 v0, p14

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v22

    if-eqz v22, :cond_28

    move/from16 v18, v19

    :cond_28
    or-int v17, v17, v18

    :goto_1c
    move/from16 v0, v17

    goto :goto_1d

    :cond_29
    move/from16 v0, p14

    goto :goto_1c

    :goto_1d
    move/from16 v17, v1

    and-int/lit16 v1, v3, 0x4000

    if-eqz v1, :cond_2b

    or-int/lit16 v0, v0, 0x6000

    move/from16 v18, v0

    :cond_2a
    move/from16 v0, p15

    goto :goto_1e

    :cond_2b
    move/from16 v18, v0

    and-int/lit16 v0, v2, 0x6000

    if-nez v0, :cond_2a

    move/from16 v0, p15

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v19

    if-eqz v19, :cond_2c

    move/from16 v20, v21

    :cond_2c
    or-int v18, v18, v20

    :goto_1e
    const v19, 0x8000

    and-int v19, v3, v19

    if-eqz v19, :cond_2d

    or-int v18, v18, v26

    move/from16 v0, p16

    goto :goto_20

    :cond_2d
    and-int v20, v2, v26

    move/from16 v0, p16

    if-nez v20, :cond_2f

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v20

    if-eqz v20, :cond_2e

    move/from16 v20, v27

    goto :goto_1f

    :cond_2e
    move/from16 v20, v25

    :goto_1f
    or-int v18, v18, v20

    :cond_2f
    :goto_20
    and-int v20, v3, v25

    if-eqz v20, :cond_30

    or-int v18, v18, v30

    move-object/from16 v0, p17

    goto :goto_21

    :cond_30
    and-int v21, v2, v30

    move-object/from16 v0, p17

    if-nez v21, :cond_32

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_31

    move/from16 v28, v29

    :cond_31
    or-int v18, v18, v28

    :cond_32
    :goto_21
    and-int v21, v2, v35

    if-nez v21, :cond_34

    and-int v21, v3, v27

    move-object/from16 v0, p18

    if-nez v21, :cond_33

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_33

    move/from16 v33, v34

    :cond_33
    or-int v18, v18, v33

    goto :goto_22

    :cond_34
    move-object/from16 v0, p18

    :goto_22
    const v21, 0x12492493

    and-int v0, v7, v21

    move/from16 v21, v1

    const v1, 0x12492492

    const/16 v22, 0x1

    if-ne v0, v1, :cond_36

    const v0, 0x492493

    and-int v0, v18, v0

    const v1, 0x492492

    if-eq v0, v1, :cond_35

    goto :goto_23

    :cond_35
    const/4 v0, 0x0

    goto :goto_24

    :cond_36
    :goto_23
    move/from16 v0, v22

    :goto_24
    and-int/lit8 v1, v7, 0x1

    invoke-virtual {v5, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, p20, 0x1

    const v1, -0x1c00001

    if-eqz v0, :cond_39

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_25

    :cond_37
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int v0, v3, v27

    if-eqz v0, :cond_38

    and-int v18, v18, v1

    :cond_38
    move-object/from16 v4, p9

    move-object/from16 v15, p10

    move-wide/from16 v23, p11

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v21, p15

    move/from16 v22, p16

    move-object/from16 v31, p17

    move-object/from16 v1, p18

    move-wide v10, v11

    move-object/from16 v0, v36

    move-wide/from16 v12, p7

    goto/16 :goto_31

    :cond_39
    :goto_25
    if-eqz v10, :cond_3a

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_26

    :cond_3a
    move-object/from16 v0, v36

    :goto_26
    if-eqz v13, :cond_3b

    sget-object v4, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v8, Landroidx/compose/ui/graphics/Color;->i:J

    :cond_3b
    if-eqz v23, :cond_3c

    sget-object v4, Landroidx/compose/ui/unit/TextUnit;->b:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v10, Landroidx/compose/ui/unit/TextUnit;->d:J

    goto :goto_27

    :cond_3c
    move-wide v10, v11

    :goto_27
    if-eqz v24, :cond_3d

    const/4 v14, 0x0

    :cond_3d
    if-eqz v15, :cond_3e

    sget-object v4, Landroidx/compose/ui/unit/TextUnit;->b:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v12, Landroidx/compose/ui/unit/TextUnit;->d:J

    goto :goto_28

    :cond_3e
    move-wide/from16 v12, p7

    :goto_28
    if-eqz v37, :cond_3f

    const/4 v4, 0x0

    goto :goto_29

    :cond_3f
    move-object/from16 v4, p9

    :goto_29
    if-eqz v38, :cond_40

    const/4 v15, 0x0

    goto :goto_2a

    :cond_40
    move-object/from16 v15, p10

    :goto_2a
    if-eqz v40, :cond_41

    sget-object v23, Landroidx/compose/ui/unit/TextUnit;->b:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v23, Landroidx/compose/ui/unit/TextUnit;->d:J

    goto :goto_2b

    :cond_41
    move-wide/from16 v23, p11

    :goto_2b
    if-eqz v16, :cond_42

    sget-object v16, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v16, Landroidx/compose/ui/text/style/TextOverflow;->b:I

    goto :goto_2c

    :cond_42
    move/from16 v16, p13

    :goto_2c
    if-eqz v17, :cond_43

    move/from16 v17, v22

    goto :goto_2d

    :cond_43
    move/from16 v17, p14

    :goto_2d
    if-eqz v21, :cond_44

    const v21, 0x7fffffff

    goto :goto_2e

    :cond_44
    move/from16 v21, p15

    :goto_2e
    if-eqz v19, :cond_45

    goto :goto_2f

    :cond_45
    move/from16 v22, p16

    :goto_2f
    if-eqz v20, :cond_46

    const/16 v31, 0x0

    goto :goto_30

    :cond_46
    move-object/from16 v31, p17

    :goto_30
    and-int v19, v3, v27

    if-eqz v19, :cond_47

    move/from16 p1, v1

    sget-object v1, Landroidx/compose/material3/TextKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/TextStyle;

    and-int v18, v18, p1

    goto :goto_31

    :cond_47
    move-object/from16 v1, p18

    :goto_31
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v19, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v2, -0x21b08752

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const-wide/16 v19, 0x10

    cmp-long v2, v8, v19

    if-eqz v2, :cond_48

    move-object/from16 p14, v0

    move-object/from16 p2, v1

    move-wide/from16 v25, v8

    const/4 v0, 0x0

    goto :goto_34

    :cond_48
    const v2, -0x21b0844d

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->b()J

    move-result-wide v25

    cmp-long v2, v25, v19

    if-eqz v2, :cond_49

    move-object/from16 p14, v0

    move-object/from16 p2, v1

    :goto_32
    const/4 v0, 0x0

    goto :goto_33

    :cond_49
    sget-object v2, Landroidx/compose/material3/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    move-object/from16 p14, v0

    move-object/from16 p2, v1

    iget-wide v0, v2, Landroidx/compose/ui/graphics/Color;->a:J

    move-wide/from16 v25, v0

    goto :goto_32

    :goto_33
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_34
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-eqz v15, :cond_4a

    iget v2, v15, Landroidx/compose/ui/text/style/TextAlign;->a:I

    goto :goto_35

    :cond_4a
    sget-object v1, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, v0

    :goto_35
    const v0, 0xfd6f50

    move-object/from16 p1, p2

    move/from16 p13, v0

    move/from16 p10, v2

    move-object/from16 p9, v4

    move-wide/from16 p4, v10

    move-wide/from16 p7, v12

    move-object/from16 p6, v14

    move-wide/from16 p11, v23

    move-wide/from16 p2, v25

    invoke-static/range {p1 .. p13}, Landroidx/compose/ui/text/TextStyle;->e(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;IJI)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    move-object/from16 v1, p1

    and-int/lit8 v2, v7, 0x7e

    move-object/from16 p3, v0

    shr-int/lit8 v0, v18, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/2addr v0, v2

    shl-int/lit8 v2, v18, 0x6

    const v18, 0xe000

    and-int v18, v2, v18

    or-int v0, v0, v18

    const/high16 v18, 0x70000

    and-int v18, v2, v18

    or-int v0, v0, v18

    const/high16 v18, 0x380000

    and-int v18, v2, v18

    or-int v0, v0, v18

    const/high16 v18, 0x1c00000

    and-int v2, v2, v18

    or-int/2addr v0, v2

    shl-int/lit8 v2, v7, 0x12

    const/high16 v7, 0x70000000

    and-int/2addr v2, v7

    or-int/2addr v0, v2

    const/16 v2, 0x100

    move-object/from16 p2, p14

    move/from16 p10, v0

    move/from16 p11, v2

    move-object/from16 p9, v5

    move-object/from16 p1, v6

    move/from16 p5, v16

    move/from16 p6, v17

    move/from16 p7, v21

    move/from16 p8, v22

    move-object/from16 p4, v31

    invoke-static/range {p1 .. p11}, Landroidx/compose/foundation/text/BasicTextKt;->b(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/runtime/Composer;II)V

    move-object/from16 v0, p2

    move-object/from16 v2, p9

    move-object/from16 v19, v1

    move-wide v5, v10

    move-object v7, v14

    move-object v11, v15

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v21

    move/from16 v17, v22

    move-object/from16 v18, v31

    move-object v10, v4

    goto :goto_36

    :cond_4b
    move-object v2, v5

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v10, p9

    move-wide/from16 v23, p11

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-wide v5, v11

    move-object v7, v14

    move-object/from16 v0, v36

    move-wide/from16 v12, p7

    move-object/from16 v11, p10

    move/from16 v14, p13

    :goto_36
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_4c

    move-object v2, v0

    new-instance v0, Lh31;

    move/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v42, v1

    move/from16 v22, v3

    move-wide v3, v8

    move-wide v8, v12

    move-wide/from16 v12, v23

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v22}, Lh31;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;III)V

    move-object v1, v0

    move-object/from16 v0, v42

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4c
    return-void
.end method

.method public static final d(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V
    .locals 55

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p19

    move/from16 v3, p20

    move/from16 v4, p21

    const-string v5, "Text-Z58ophY"

    if-eqz v0, :cond_0

    invoke-static {v0, v5}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v6, 0x116b5779

    move-object/from16 v7, p18

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    and-int/lit8 v7, v2, 0x6

    if-nez v7, :cond_2

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v2

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    and-int/lit8 v10, v4, 0x2

    if-eqz v10, :cond_3

    or-int/lit8 v7, v7, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v11, v2, 0x30

    if-nez v11, :cond_5

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x20

    goto :goto_2

    :cond_4
    const/16 v11, 0x10

    :goto_2
    or-int/2addr v7, v11

    :cond_5
    :goto_3
    and-int/lit8 v11, v4, 0x4

    if-eqz v11, :cond_7

    or-int/lit16 v7, v7, 0x180

    :cond_6
    move-wide/from16 v14, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v14, v2, 0x180

    if-nez v14, :cond_6

    move-wide/from16 v14, p2

    invoke-virtual {v6, v14, v15}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    const/16 v16, 0x80

    :goto_4
    or-int v7, v7, v16

    :goto_5
    const v16, 0x36db6c00

    or-int v7, v7, v16

    and-int/lit16 v8, v4, 0x400

    if-eqz v8, :cond_9

    or-int/lit8 v16, v3, 0x6

    move-object/from16 v12, p8

    :goto_6
    move/from16 v13, v16

    goto :goto_8

    :cond_9
    and-int/lit8 v16, v3, 0x6

    move-object/from16 v12, p8

    if-nez v16, :cond_b

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x4

    goto :goto_7

    :cond_a
    const/16 v16, 0x2

    :goto_7
    or-int v16, v3, v16

    goto :goto_6

    :cond_b
    move v13, v3

    :goto_8
    or-int/lit8 v16, v13, 0x30

    and-int/lit16 v9, v4, 0x1000

    if-eqz v9, :cond_c

    or-int/lit16 v13, v13, 0x1b0

    move-object/from16 v18, v0

    move v0, v13

    move/from16 v13, p11

    goto :goto_b

    :cond_c
    and-int/lit16 v13, v3, 0x180

    if-nez v13, :cond_e

    move/from16 v13, p11

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x100

    goto :goto_9

    :cond_d
    const/16 v18, 0x80

    :goto_9
    or-int v16, v16, v18

    :goto_a
    move-object/from16 v18, v0

    move/from16 v0, v16

    goto :goto_b

    :cond_e
    move/from16 v13, p11

    goto :goto_a

    :goto_b
    or-int/lit16 v2, v0, 0xc00

    move/from16 v16, v2

    and-int/lit16 v2, v4, 0x4000

    if-eqz v2, :cond_10

    or-int/lit16 v0, v0, 0x6c00

    move/from16 v16, v0

    :cond_f
    move/from16 v0, p13

    goto :goto_d

    :cond_10
    and-int/lit16 v0, v3, 0x6000

    if-nez v0, :cond_f

    move/from16 v0, p13

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v19

    if-eqz v19, :cond_11

    const/16 v19, 0x4000

    goto :goto_c

    :cond_11
    const/16 v19, 0x2000

    :goto_c
    or-int v16, v16, v19

    :goto_d
    const/high16 v19, 0x1b0000

    or-int v19, v16, v19

    const/high16 v20, 0x20000

    and-int v20, v4, v20

    if-eqz v20, :cond_12

    const/high16 v19, 0xdb0000

    or-int v19, v16, v19

    move-object/from16 v0, p16

    goto :goto_f

    :cond_12
    const/high16 v16, 0xc00000

    and-int v16, v3, v16

    move-object/from16 v0, p16

    if-nez v16, :cond_14

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x800000

    goto :goto_e

    :cond_13
    const/high16 v16, 0x400000

    :goto_e
    or-int v19, v19, v16

    :cond_14
    :goto_f
    const/high16 v16, 0x6000000

    and-int v16, v3, v16

    const/high16 v21, 0x40000

    if-nez v16, :cond_16

    and-int v16, v4, v21

    move-object/from16 v0, p17

    if-nez v16, :cond_15

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    const/high16 v16, 0x4000000

    goto :goto_10

    :cond_15
    const/high16 v16, 0x2000000

    :goto_10
    or-int v19, v19, v16

    goto :goto_11

    :cond_16
    move-object/from16 v0, p17

    :goto_11
    const v16, 0x12492493

    and-int v0, v7, v16

    move/from16 v16, v2

    const v2, 0x12492492

    const/16 v22, 0x1

    if-ne v0, v2, :cond_18

    const v0, 0x2492493

    and-int v0, v19, v0

    const v2, 0x2492492

    if-eq v0, v2, :cond_17

    goto :goto_12

    :cond_17
    const/4 v0, 0x0

    goto :goto_13

    :cond_18
    :goto_12
    move/from16 v0, v22

    :goto_13
    and-int/lit8 v2, v7, 0x1

    invoke-virtual {v6, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, p19, 0x1

    const/16 v2, 0x9

    const v23, -0xe000001

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v0, :cond_1b

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_14

    :cond_19
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int v0, v4, v21

    if-eqz v0, :cond_1a

    and-int v19, v19, v23

    :cond_1a
    move-wide/from16 v8, p6

    move/from16 v0, p12

    move/from16 v5, p13

    move-object/from16 v16, p15

    move-object/from16 v20, p16

    move-object/from16 v21, p17

    move/from16 p18, v2

    move-wide v10, v14

    move-object/from16 v23, v18

    move/from16 v24, v19

    move-wide/from16 v14, p4

    move-wide/from16 v18, p9

    move/from16 v2, p14

    goto/16 :goto_1a

    :cond_1b
    :goto_14
    if-eqz v10, :cond_1c

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :cond_1c
    move-object/from16 v0, v18

    :goto_15
    if-eqz v11, :cond_1d

    sget-object v5, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v10, Landroidx/compose/ui/graphics/Color;->i:J

    goto :goto_16

    :cond_1d
    move-wide v10, v14

    :goto_16
    sget-object v5, Landroidx/compose/ui/unit/TextUnit;->b:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v14, Landroidx/compose/ui/unit/TextUnit;->d:J

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v8, :cond_1e

    const/4 v8, 0x0

    move-object v12, v8

    :cond_1e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v9, :cond_1f

    sget-object v5, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/text/style/TextOverflow;->b:I

    move v13, v5

    :cond_1f
    if-eqz v16, :cond_20

    const v5, 0x7fffffff

    goto :goto_17

    :cond_20
    move/from16 v5, p13

    :goto_17
    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v8

    if-eqz v20, :cond_22

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_21

    new-instance v9, Lz21;

    invoke-direct {v9, v2}, Lz21;-><init>(I)V

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v9, Lkotlin/jvm/functions/Function1;

    goto :goto_18

    :cond_22
    move-object/from16 v9, p16

    :goto_18
    and-int v16, v4, v21

    move/from16 p18, v2

    if-eqz v16, :cond_23

    sget-object v2, Landroidx/compose/material3/TextKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/TextStyle;

    and-int v19, v19, v23

    move-object/from16 v23, v0

    move-object/from16 v21, v2

    :goto_19
    move-object/from16 v16, v8

    move-object/from16 v20, v9

    move-wide v8, v14

    move/from16 v24, v19

    move/from16 v0, v22

    move v2, v0

    move-wide/from16 v18, v8

    goto :goto_1a

    :cond_23
    move-object/from16 v21, p17

    move-object/from16 v23, v0

    goto :goto_19

    :goto_1a
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v25, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move/from16 p15, v0

    const v0, 0x63f3c35c

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const-wide/16 v25, 0x10

    cmp-long v0, v10, v25

    if-eqz v0, :cond_24

    move/from16 p16, v5

    move-wide/from16 v27, v10

    const/4 v0, 0x0

    goto :goto_1d

    :cond_24
    const v0, 0x63f3c661

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/text/TextStyle;->b()J

    move-result-wide v27

    cmp-long v0, v27, v25

    if-eqz v0, :cond_25

    move/from16 p16, v5

    :goto_1b
    const/4 v0, 0x0

    goto :goto_1c

    :cond_25
    sget-object v0, Landroidx/compose/material3/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    move/from16 p16, v5

    iget-wide v4, v0, Landroidx/compose/ui/graphics/Color;->a:J

    move-wide/from16 v27, v4

    goto :goto_1b

    :goto_1c
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1d
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v6}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v4

    iget-wide v4, v4, Landroidx/compose/material3/ColorScheme;->a:J

    invoke-virtual {v6, v4, v5}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v25

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v25, :cond_26

    if-ne v0, v3, :cond_27

    :cond_26
    new-instance v0, Landroidx/compose/ui/text/TextLinkStyles;

    new-instance v29, Landroidx/compose/ui/text/SpanStyle;

    sget-object v25, Landroidx/compose/ui/text/style/TextDecoration;->b:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v46, Landroidx/compose/ui/text/style/TextDecoration;->d:Landroidx/compose/ui/text/style/TextDecoration;

    const v50, 0xeffe

    const/16 v51, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-wide/from16 v30, v4

    invoke-direct/range {v29 .. v51}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v4, 0xe

    const/4 v5, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v30, 0x0

    move-object/from16 p2, v0

    move/from16 p7, v4

    move-object/from16 p8, v5

    move-object/from16 p4, v25

    move-object/from16 p5, v26

    move-object/from16 p3, v29

    move-object/from16 p6, v30

    invoke-direct/range {p2 .. p8}, Landroidx/compose/ui/text/TextLinkStyles;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    check-cast v0, Landroidx/compose/ui/text/TextLinkStyles;

    and-int/lit8 v4, v7, 0xe

    const/4 v5, 0x4

    if-ne v4, v5, :cond_28

    goto :goto_1e

    :cond_28
    const/16 v22, 0x0

    :goto_1e
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int v4, v22, v4

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_29

    if-ne v5, v3, :cond_2a

    :cond_29
    new-instance v3, Lp11;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v4}, Lp11;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/AnnotatedString;->e(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v12, :cond_2b

    iget v3, v12, Landroidx/compose/ui/text/style/TextAlign;->a:I

    goto :goto_1f

    :cond_2b
    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :goto_1f
    const v0, 0xfd6f50

    const/4 v4, 0x0

    const/16 v17, 0x0

    move/from16 p14, v0

    move/from16 p11, v3

    move-object/from16 p7, v4

    move-wide/from16 p8, v8

    move-wide/from16 p5, v14

    move-object/from16 p10, v17

    move-wide/from16 p12, v18

    move-object/from16 p2, v21

    move-wide/from16 p3, v27

    invoke-static/range {p2 .. p14}, Landroidx/compose/ui/text/TextStyle;->e(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;IJI)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    move-object/from16 v3, p2

    move-wide/from16 v17, p12

    and-int/lit8 v4, v7, 0x70

    move-object/from16 p3, v0

    shr-int/lit8 v0, v24, 0xc

    and-int/lit16 v0, v0, 0x1c00

    or-int/2addr v0, v4

    shl-int/lit8 v4, v24, 0x6

    const v19, 0xe000

    and-int v19, v4, v19

    or-int v0, v0, v19

    const/high16 v19, 0x70000

    and-int v19, v4, v19

    or-int v0, v0, v19

    const/high16 v19, 0x380000

    and-int v19, v4, v19

    or-int v0, v0, v19

    const/high16 v19, 0x1c00000

    and-int v19, v4, v19

    or-int v0, v0, v19

    const/high16 v19, 0xe000000

    and-int v4, v4, v19

    or-int/2addr v0, v4

    shr-int/lit8 v4, v7, 0x9

    and-int/lit8 v4, v4, 0xe

    const/16 v7, 0x200

    move/from16 p6, p15

    move/from16 p7, p16

    move/from16 p11, v0

    move/from16 p8, v2

    move/from16 p12, v4

    move-object/from16 p1, v5

    move-object/from16 p10, v6

    move/from16 p13, v7

    move/from16 p5, v13

    move-object/from16 p9, v16

    move-object/from16 p4, v20

    move-object/from16 p2, v23

    invoke-static/range {p1 .. p13}, Landroidx/compose/foundation/text/BasicTextKt;->a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v0, p2

    move-object/from16 v4, p4

    move/from16 v22, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v2, p10

    move-object/from16 v16, v7

    move-wide v7, v8

    move-object v9, v12

    move v12, v13

    move/from16 v13, v22

    move-wide/from16 v53, v17

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    move-wide v3, v10

    move-wide/from16 v10, v53

    move-wide/from16 v53, v14

    move v14, v5

    move v15, v6

    move-wide/from16 v5, v53

    goto :goto_20

    :cond_2c
    move-object v2, v6

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v10, p9

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object v9, v12

    move v12, v13

    move-wide v3, v14

    move-object/from16 v0, v18

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v18, p17

    :goto_20
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_2d

    move-object/from16 v19, v2

    move-object v2, v0

    new-instance v0, Lj31;

    move/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v52, v19

    move/from16 v19, p19

    invoke-direct/range {v0 .. v21}, Lj31;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;III)V

    move-object v1, v0

    move-object/from16 v0, v52

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2d
    return-void
.end method
