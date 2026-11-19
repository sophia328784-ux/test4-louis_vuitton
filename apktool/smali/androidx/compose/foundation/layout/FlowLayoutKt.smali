.class public abstract Landroidx/compose/foundation/layout/FlowLayoutKt;
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


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment;->a:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;-><init>(Landroidx/compose/ui/Alignment$Vertical;)V

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    new-instance v1, Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;-><init>(Landroidx/compose/ui/Alignment$Horizontal;)V

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v8, p8

    if-eqz v0, :cond_0

    const-string v1, "FlowRow"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v9, v0

    const v0, -0x4dacdb7f

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v8, 0x6

    if-nez v1, :cond_2

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v8

    goto :goto_1

    :cond_2
    move v1, v8

    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x30

    :cond_3
    move-object/from16 v3, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v3, v8, 0x30

    if-nez v3, :cond_3

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    goto :goto_2

    :cond_5
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :goto_3
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v5, p2

    goto :goto_5

    :cond_6
    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    :goto_5
    or-int/lit16 v6, v1, 0xc00

    and-int/lit8 v7, p9, 0x10

    if-eqz v7, :cond_9

    or-int/lit16 v6, v1, 0x6c00

    :cond_8
    move/from16 v1, p4

    goto :goto_7

    :cond_9
    and-int/lit16 v1, v8, 0x6000

    if-nez v1, :cond_8

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x4000

    goto :goto_6

    :cond_a
    const/16 v10, 0x2000

    :goto_6
    or-int/2addr v6, v10

    :goto_7
    const/high16 v10, 0x30000

    or-int/2addr v6, v10

    const v10, 0x92493

    and-int/2addr v10, v6

    const v11, 0x92492

    if-eq v10, v11, :cond_b

    const/4 v10, 0x1

    goto :goto_8

    :cond_b
    const/4 v10, 0x0

    :goto_8
    and-int/lit8 v11, v6, 0x1

    invoke-virtual {v0, v11, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_f

    if-eqz v2, :cond_c

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    move-object v10, v2

    goto :goto_9

    :cond_c
    move-object v10, v3

    :goto_9
    if-eqz v4, :cond_d

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    move-object v11, v2

    goto :goto_a

    :cond_d
    move-object v11, v5

    :goto_a
    sget-object v2, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    const v2, 0x7fffffff

    if-eqz v7, :cond_e

    move v13, v2

    goto :goto_b

    :cond_e
    move v13, v1

    :goto_b
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/foundation/layout/FlowRowOverflow;->f:Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/foundation/layout/FlowRowOverflow;->g:Landroidx/compose/foundation/layout/FlowRowOverflow;

    and-int/lit8 v1, v6, 0xe

    const/high16 v3, 0x180000

    or-int/2addr v1, v3

    and-int/lit8 v3, v6, 0x70

    or-int/2addr v1, v3

    and-int/lit16 v3, v6, 0x380

    or-int/2addr v1, v3

    or-int/lit16 v1, v1, 0xc00

    const v3, 0xe000

    and-int/2addr v3, v6

    or-int/2addr v1, v3

    const/high16 v3, 0xc30000

    or-int v17, v1, v3

    move-object/from16 v15, p6

    move-object/from16 v16, v0

    invoke-static/range {v9 .. v17}, Landroidx/compose/foundation/layout/FlowLayoutKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;ILandroidx/compose/foundation/layout/FlowRowOverflow;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    move v6, v2

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move v5, v13

    goto :goto_c

    :cond_f
    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v4, p3

    move/from16 v6, p5

    move-object v2, v3

    move-object v3, v5

    move v5, v1

    :goto_c
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_10

    new-instance v0, Loz;

    move-object/from16 v7, p6

    move-object v1, v9

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Loz;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;ILandroidx/compose/foundation/layout/FlowRowOverflow;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p3

    move/from16 v7, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v14, p8

    if-eqz v0, :cond_0

    const-string v1, "FlowRow"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v15, v0

    const v0, -0x749f38e1

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v14, 0x6

    const/4 v5, 0x4

    if-nez v1, :cond_2

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v14

    goto :goto_1

    :cond_2
    move v1, v14

    :goto_1
    and-int/lit8 v6, v14, 0x30

    if-nez v6, :cond_4

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_2

    :cond_3
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v1, v6

    :cond_4
    and-int/lit16 v6, v14, 0x180

    if-nez v6, :cond_6

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x100

    goto :goto_3

    :cond_5
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v1, v6

    :cond_6
    and-int/lit16 v6, v14, 0xc00

    if-nez v6, :cond_8

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x800

    goto :goto_4

    :cond_7
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v1, v6

    :cond_8
    and-int/lit16 v6, v14, 0x6000

    if-nez v6, :cond_a

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x4000

    goto :goto_5

    :cond_9
    const/16 v6, 0x2000

    :goto_5
    or-int/2addr v1, v6

    :cond_a
    const/high16 v6, 0x30000

    and-int/2addr v6, v14

    move/from16 p7, v1

    if-nez v6, :cond_c

    const v6, 0x7fffffff

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-eqz v6, :cond_b

    const/high16 v6, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v6, 0x10000

    :goto_6
    or-int v6, p7, v6

    goto :goto_7

    :cond_c
    move/from16 v6, p7

    :goto_7
    const/high16 v16, 0x180000

    and-int v16, v14, v16

    const/high16 v1, 0x100000

    if-nez v16, :cond_e

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v16, v1

    goto :goto_8

    :cond_d
    const/high16 v16, 0x80000

    :goto_8
    or-int v6, v6, v16

    :cond_e
    const/high16 v16, 0xc00000

    and-int v16, v14, v16

    if-nez v16, :cond_10

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v16, 0x400000

    :goto_9
    or-int v6, v6, v16

    :cond_10
    move/from16 v16, v6

    const v6, 0x492493

    and-int v6, v16, v6

    const v4, 0x492492

    const/16 v18, 0x0

    if-eq v6, v4, :cond_11

    const/4 v4, 0x1

    goto :goto_a

    :cond_11
    move/from16 v4, v18

    :goto_a
    and-int/lit8 v6, v16, 0x1

    invoke-virtual {v0, v6, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_35

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v4, 0x380000

    and-int v4, v16, v4

    if-ne v4, v1, :cond_12

    const/4 v6, 0x1

    goto :goto_b

    :cond_12
    move/from16 v6, v18

    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v6, :cond_13

    if-ne v1, v10, :cond_14

    :cond_13
    new-instance v1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget-object v6, v12, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->a:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    iget v9, v12, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->b:I

    iget v8, v12, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->c:I

    invoke-direct {v1, v6, v9, v8}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;II)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object v9, v1

    check-cast v9, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    shr-int/lit8 v1, v16, 0x3

    and-int/lit8 v6, v1, 0xe

    xor-int/lit8 v6, v6, 0x6

    if-le v6, v5, :cond_15

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    :cond_15
    and-int/lit8 v6, v1, 0x6

    if-ne v6, v5, :cond_17

    :cond_16
    const/4 v5, 0x1

    goto :goto_c

    :cond_17
    move/from16 v5, v18

    :goto_c
    and-int/lit8 v6, v1, 0x70

    xor-int/lit8 v6, v6, 0x30

    const/16 v8, 0x20

    if-le v6, v8, :cond_18

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    :cond_18
    and-int/lit8 v6, v1, 0x30

    if-ne v6, v8, :cond_1a

    :cond_19
    const/4 v6, 0x1

    goto :goto_d

    :cond_1a
    move/from16 v6, v18

    :goto_d
    or-int/2addr v5, v6

    and-int/lit16 v6, v1, 0x380

    xor-int/lit16 v6, v6, 0x180

    const/16 v8, 0x100

    if-le v6, v8, :cond_1b

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    :cond_1b
    and-int/lit16 v6, v1, 0x180

    if-ne v6, v8, :cond_1d

    :cond_1c
    const/4 v6, 0x1

    goto :goto_e

    :cond_1d
    move/from16 v6, v18

    :goto_e
    or-int/2addr v5, v6

    and-int/lit16 v6, v1, 0x1c00

    xor-int/lit16 v6, v6, 0xc00

    const/16 v8, 0x800

    if-le v6, v8, :cond_1e

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-nez v6, :cond_1f

    :cond_1e
    and-int/lit16 v6, v1, 0xc00

    if-ne v6, v8, :cond_20

    :cond_1f
    const/4 v6, 0x1

    goto :goto_f

    :cond_20
    move/from16 v6, v18

    :goto_f
    or-int/2addr v5, v6

    const v6, 0xe000

    and-int/2addr v6, v1

    xor-int/lit16 v6, v6, 0x6000

    const v8, 0x7fffffff

    const/16 v2, 0x4000

    if-le v6, v2, :cond_21

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-nez v6, :cond_22

    :cond_21
    and-int/lit16 v1, v1, 0x6000

    if-ne v1, v2, :cond_23

    :cond_22
    const/4 v1, 0x1

    goto :goto_10

    :cond_23
    move/from16 v1, v18

    :goto_10
    or-int/2addr v1, v5

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_24

    if-ne v2, v10, :cond_25

    :cond_24
    move v1, v4

    goto :goto_11

    :cond_25
    move-object v11, v0

    move v14, v4

    move-object/from16 v20, v10

    move-object/from16 v17, v15

    const/high16 v15, 0x100000

    goto :goto_12

    :goto_11
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->a()F

    move-result v4

    sget-object v2, Landroidx/compose/foundation/layout/CrossAxisAlignment;->a:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

    invoke-direct {v5, v11}, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;-><init>(Landroidx/compose/ui/Alignment$Vertical;)V

    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->a()F

    move-result v6

    move-object v2, v0

    new-instance v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    move/from16 v17, v1

    const/4 v1, 0x1

    move-object/from16 v19, v10

    const/4 v10, 0x0

    move-object v11, v2

    move/from16 v14, v17

    move-object/from16 v20, v19

    move-object/from16 v2, p1

    move-object/from16 v17, v15

    const/high16 v15, 0x100000

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;-><init>(ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment;FIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_12
    check-cast v2, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    if-ne v14, v15, :cond_26

    const/4 v10, 0x1

    goto :goto_13

    :cond_26
    move/from16 v10, v18

    :goto_13
    const/high16 v0, 0x1c00000

    and-int v0, v16, v0

    const/high16 v1, 0x800000

    if-ne v0, v1, :cond_27

    const/4 v0, 0x1

    goto :goto_14

    :cond_27
    move/from16 v0, v18

    :goto_14
    or-int/2addr v0, v10

    const/high16 v1, 0x70000

    and-int v1, v16, v1

    const/high16 v3, 0x20000

    if-ne v1, v3, :cond_28

    const/4 v10, 0x1

    goto :goto_15

    :cond_28
    move/from16 v10, v18

    :goto_15
    or-int/2addr v0, v10

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v0, :cond_29

    move-object/from16 v0, v20

    if-ne v1, v0, :cond_30

    goto :goto_16

    :cond_29
    move-object/from16 v0, v20

    :goto_16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lql;

    const/4 v5, 0x2

    invoke-direct {v4, v13, v5}, Lql;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    new-instance v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v7, -0x471afb91

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v12, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->d:Lkotlin/jvm/functions/Function1;

    if-eqz v4, :cond_2a

    invoke-interface {v4, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    goto :goto_17

    :cond_2a
    move-object v4, v3

    :goto_17
    iget-object v6, v12, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->e:Lkotlin/jvm/functions/Function1;

    if-eqz v6, :cond_2b

    invoke-interface {v6, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function2;

    goto :goto_18

    :cond_2b
    move-object v6, v3

    :goto_18
    iget-object v7, v12, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->a:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    sget-object v8, Landroidx/compose/foundation/layout/FlowLayoutOverflow$WhenMappings;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2e

    if-eq v7, v5, :cond_2c

    goto :goto_19

    :cond_2c
    if-eqz v4, :cond_2d

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    if-eqz v6, :cond_2f

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2e
    if-eqz v4, :cond_2f

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_19
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_30
    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->b(Ljava/util/List;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_31

    if-ne v5, v0, :cond_32

    :cond_31
    new-instance v5, Landroidx/compose/ui/layout/MultiContentMeasurePolicyImpl;

    invoke-direct {v5, v2}, Landroidx/compose/ui/layout/MultiContentMeasurePolicyImpl;-><init>(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_32
    check-cast v5, Landroidx/compose/ui/layout/MeasurePolicy;

    iget-wide v6, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    move-object/from16 v4, v17

    invoke-static {v11, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v8, v11, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v8, :cond_34

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v3, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v3, :cond_33

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1a

    :cond_33
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1a
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v5, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v6, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1b

    :cond_34
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_35
    move-object v11, v0

    move-object v4, v15

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_36

    new-instance v0, Loa;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v8, p8

    move-object v1, v4

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Loa;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;ILandroidx/compose/foundation/layout/FlowRowOverflow;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_36
    return-void
.end method

.method public static final c(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J
    .locals 2

    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->b(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/compose/foundation/layout/RowColumnParentData;->d:Landroidx/compose/foundation/layout/FlowLayoutData;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/compose/foundation/layout/FlowLayoutData;->a:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p0, p2, p3}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->c(Landroidx/compose/ui/layout/Placeable;)I

    move-result p2

    invoke-interface {p1, p0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->e(Landroidx/compose/ui/layout/Placeable;)I

    move-result p0

    invoke-static {p2, p0}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide p0

    return-wide p0

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    const p2, 0x7fffffff

    if-eqz p1, :cond_2

    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    move-result p2

    goto :goto_1

    :cond_2
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result p2

    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result p0

    goto :goto_2

    :cond_3
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    move-result p0

    :goto_2
    invoke-static {p2, p0}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide p0

    return-wide p0
.end method
