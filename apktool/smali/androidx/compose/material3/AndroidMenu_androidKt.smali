.class public abstract Landroidx/compose/material3/AndroidMenu_androidKt;
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
.field public static final a:Landroidx/compose/ui/window/PopupProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/compose/ui/window/PopupProperties;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/AndroidMenu_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    return-void
.end method

.method public static final a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 25

    move-object/from16 v0, p2

    move/from16 v13, p13

    move/from16 v14, p14

    if-eqz v0, :cond_0

    const-string v1, "DropdownMenu-IlH_yew"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v2, v0

    const v0, 0x66dab59f

    move-object/from16 v1, p12

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v13, 0x6

    move/from16 v11, p0

    if-nez v1, :cond_2

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v13

    goto :goto_1

    :cond_2
    move v1, v13

    :goto_1
    and-int/lit8 v3, v13, 0x30

    move-object/from16 v12, p1

    if-nez v3, :cond_4

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_2

    :cond_3
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_4
    and-int/lit16 v3, v13, 0x180

    if-nez v3, :cond_6

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x100

    goto :goto_3

    :cond_5
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v1, v3

    :cond_6
    and-int/lit16 v3, v13, 0xc00

    move-wide/from16 v5, p3

    if-nez v3, :cond_8

    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x800

    goto :goto_4

    :cond_7
    const/16 v3, 0x400

    :goto_4
    or-int/2addr v1, v3

    :cond_8
    and-int/lit16 v3, v13, 0x6000

    if-nez v3, :cond_9

    or-int/lit16 v1, v1, 0x2000

    :cond_9
    const/high16 v3, 0x30000

    or-int/2addr v1, v3

    const/high16 v3, 0x180000

    and-int/2addr v3, v13

    move-object/from16 v8, p7

    if-nez v3, :cond_b

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/high16 v3, 0x100000

    goto :goto_5

    :cond_a
    const/high16 v3, 0x80000

    :goto_5
    or-int/2addr v1, v3

    :cond_b
    const/high16 v3, 0xc00000

    and-int/2addr v3, v13

    if-nez v3, :cond_d

    and-int/lit16 v3, v14, 0x80

    move-wide/from16 v9, p8

    if-nez v3, :cond_c

    invoke-virtual {v0, v9, v10}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v3

    if-eqz v3, :cond_c

    const/high16 v3, 0x800000

    goto :goto_6

    :cond_c
    const/high16 v3, 0x400000

    :goto_6
    or-int/2addr v1, v3

    goto :goto_7

    :cond_d
    move-wide/from16 v9, p8

    :goto_7
    const/high16 v3, 0x36000000

    or-int/2addr v1, v3

    const v3, 0x12492493

    and-int/2addr v3, v1

    const v7, 0x12492492

    const/16 v16, 0x1

    if-ne v3, v7, :cond_e

    const/4 v3, 0x0

    goto :goto_8

    :cond_e
    move/from16 v3, v16

    :goto_8
    and-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v3, v13, 0x1

    const v17, -0xe001

    if-eqz v3, :cond_f

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    const p2, -0x1c0e001

    goto :goto_9

    :cond_10
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int v3, v1, v17

    const p2, -0x1c0e001

    and-int/lit16 v7, v14, 0x80

    if-eqz v7, :cond_11

    and-int v3, v1, p2

    :cond_11
    move-object/from16 v23, p6

    move v1, v3

    move-wide v7, v9

    move-object/from16 v3, p5

    move/from16 v9, p10

    goto :goto_b

    :goto_9
    invoke-static {v0}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v3

    and-int v7, v1, v17

    and-int/lit16 v4, v14, 0x80

    if-eqz v4, :cond_12

    sget v4, Landroidx/compose/material3/MenuDefaults;->a:F

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/material3/tokens/MenuTokens;->a:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v4, v0}, Landroidx/compose/material3/ColorSchemeKt;->d(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v9

    and-int v1, v1, p2

    goto :goto_a

    :cond_12
    move v1, v7

    :goto_a
    sget v4, Landroidx/compose/material3/MenuDefaults;->a:F

    sget-object v7, Landroidx/compose/material3/AndroidMenu_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    move-object/from16 v23, v7

    move-wide v7, v9

    move v9, v4

    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v10, :cond_13

    new-instance v4, Landroidx/compose/animation/core/MutableTransitionState;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v15}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v4, Landroidx/compose/animation/core/MutableTransitionState;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroidx/compose/animation/core/MutableTransitionState;->g(Ljava/lang/Boolean;)V

    iget-object v15, v4, Landroidx/compose/animation/core/MutableTransitionState;->b:Landroidx/compose/runtime/MutableState;

    check-cast v15, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_15

    iget-object v15, v4, Landroidx/compose/animation/core/MutableTransitionState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v15, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_14

    goto :goto_c

    :cond_14
    const v1, 0x458e7b43

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v1, v3

    move-wide/from16 v17, v7

    move v10, v9

    move-object/from16 v5, v23

    move-object v7, v0

    goto/16 :goto_11

    :cond_15
    :goto_c
    const v15, 0x457e4eb4

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v10, :cond_16

    sget-object v15, Landroidx/compose/ui/graphics/TransformOrigin;->b:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v24, v2

    move-object/from16 p5, v3

    sget-wide v2, Landroidx/compose/ui/graphics/TransformOrigin;->c:J

    new-instance v15, Landroidx/compose/ui/graphics/TransformOrigin;

    invoke-direct {v15, v2, v3}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    invoke-static {v15}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_d

    :cond_16
    move-object/from16 v24, v2

    move-object/from16 p5, v3

    :goto_d
    move-object v2, v15

    check-cast v2, Landroidx/compose/runtime/MutableState;

    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/Density;

    and-int/lit16 v15, v1, 0x1c00

    move/from16 p6, v1

    const/16 v1, 0x800

    if-ne v15, v1, :cond_17

    goto :goto_e

    :cond_17
    const/16 v16, 0x0

    :goto_e
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int v1, v16, v1

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v1, :cond_19

    if-ne v15, v10, :cond_18

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    goto :goto_10

    :cond_19
    :goto_f
    new-instance v15, Landroidx/compose/material3/internal/DropdownMenuPositionProvider;

    new-instance v1, Lr1;

    const/4 v10, 0x3

    invoke-direct {v1, v10, v2}, Lr1;-><init>(ILandroidx/compose/runtime/MutableState;)V

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v1

    move-object/from16 v18, v3

    move-wide/from16 v16, v5

    const/4 v1, 0x0

    invoke-direct/range {v15 .. v22}, Landroidx/compose/material3/internal/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_10
    check-cast v15, Landroidx/compose/material3/internal/DropdownMenuPositionProvider;

    move v3, v1

    new-instance v1, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;

    move-object/from16 v5, p5

    move/from16 v16, p6

    move-object/from16 v6, p7

    move-object/from16 v10, p11

    move v11, v3

    move-object v3, v4

    move-object v4, v2

    move-object/from16 v2, v24

    invoke-direct/range {v1 .. v10}, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v3, v1

    move-object v1, v5

    move-wide/from16 v17, v7

    move v10, v9

    const v4, -0x36afd328    # -852685.5f

    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    and-int/lit8 v3, v16, 0x70

    or-int/lit16 v3, v3, 0xc00

    shr-int/lit8 v4, v16, 0x9

    and-int/lit16 v4, v4, 0x380

    or-int v8, v3, v4

    const/4 v9, 0x0

    move-object v7, v0

    move-object v4, v12

    move-object v3, v15

    move-object/from16 v5, v23

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    move-object v6, v1

    move-object v0, v7

    move v11, v10

    move-wide/from16 v9, v17

    move-object v7, v5

    goto :goto_12

    :cond_1a
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v6, p5

    move/from16 v11, p10

    move-object/from16 v7, p6

    :goto_12
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_1b

    new-instance v0, Lw5;

    move/from16 v1, p0

    move-wide/from16 v4, p3

    move-object/from16 v8, p7

    move-object/from16 v12, p11

    move-object v3, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v14}, Lw5;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V
    .locals 20

    move-object/from16 v0, p2

    move/from16 v9, p9

    const-string v1, "DropdownMenuItem"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x1fc44f8d

    move-object/from16 v3, p8

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    move-object/from16 v11, p1

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_0

    :cond_1
    const/16 v3, 0x10

    :goto_0
    or-int/2addr v3, v9

    and-int/lit8 v4, p10, 0x4

    if-eqz v4, :cond_2

    or-int/lit16 v3, v3, 0x180

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x100

    goto :goto_1

    :cond_3
    const/16 v5, 0x80

    :goto_1
    or-int/2addr v3, v5

    :goto_2
    and-int/lit8 v5, p10, 0x8

    if-eqz v5, :cond_5

    or-int/lit16 v3, v3, 0xc00

    :cond_4
    move-object/from16 v6, p3

    goto :goto_4

    :cond_5
    and-int/lit16 v6, v9, 0xc00

    if-nez v6, :cond_4

    move-object/from16 v6, p3

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_3

    :cond_6
    const/16 v7, 0x400

    :goto_3
    or-int/2addr v3, v7

    :goto_4
    and-int/lit8 v7, p10, 0x10

    if-eqz v7, :cond_7

    or-int/lit16 v3, v3, 0x6000

    move-object/from16 v8, p4

    goto :goto_6

    :cond_7
    move-object/from16 v8, p4

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x4000

    goto :goto_5

    :cond_8
    const/16 v10, 0x2000

    :goto_5
    or-int/2addr v3, v10

    :goto_6
    and-int/lit8 v10, p10, 0x20

    if-eqz v10, :cond_9

    const/high16 v12, 0x30000

    or-int/2addr v3, v12

    move/from16 v12, p5

    goto :goto_8

    :cond_9
    move/from16 v12, p5

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    if-eqz v13, :cond_a

    const/high16 v13, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v13, 0x10000

    :goto_7
    or-int/2addr v3, v13

    :goto_8
    and-int/lit8 v13, p10, 0x40

    if-nez v13, :cond_b

    move-object/from16 v13, p6

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/high16 v14, 0x100000

    goto :goto_9

    :cond_b
    move-object/from16 v13, p6

    :cond_c
    const/high16 v14, 0x80000

    :goto_9
    or-int/2addr v3, v14

    const/high16 v14, 0x6c00000

    or-int/2addr v3, v14

    const v14, 0x2492493

    and-int/2addr v14, v3

    const v15, 0x2492492

    const/16 v16, 0x1

    if-eq v14, v15, :cond_d

    move/from16 v14, v16

    goto :goto_a

    :cond_d
    const/4 v14, 0x0

    :goto_a
    and-int/lit8 v15, v3, 0x1

    invoke-virtual {v2, v15, v14}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v14, v9, 0x1

    const v15, -0x380001

    if-eqz v14, :cond_10

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v14

    if-eqz v14, :cond_e

    goto :goto_c

    :cond_e
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v1, p10, 0x40

    if-eqz v1, :cond_f

    and-int/2addr v3, v15

    :cond_f
    move-object/from16 v17, p7

    :goto_b
    move-object v14, v8

    move v15, v12

    move-object/from16 v16, v13

    move-object v12, v0

    move-object v13, v6

    goto :goto_d

    :cond_10
    :goto_c
    if-eqz v4, :cond_11

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_11
    const/4 v1, 0x0

    if-eqz v5, :cond_12

    move-object v6, v1

    :cond_12
    if-eqz v7, :cond_13

    move-object v8, v1

    :cond_13
    if-eqz v10, :cond_14

    move/from16 v12, v16

    :cond_14
    and-int/lit8 v1, p10, 0x40

    if-eqz v1, :cond_15

    sget v1, Landroidx/compose/material3/MenuDefaults;->a:F

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/material3/MenuDefaults;->a(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/MenuItemColors;

    move-result-object v1

    and-int/2addr v3, v15

    move-object v13, v1

    :cond_15
    sget-object v1, Landroidx/compose/material3/MenuDefaults;->b:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-object/from16 v17, v1

    goto :goto_b

    :goto_d
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0xffffffe

    and-int v19, v3, v0

    move-object/from16 v10, p0

    move-object/from16 v18, v2

    invoke-static/range {v10 .. v19}, Landroidx/compose/material3/MenuKt;->b(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    goto :goto_e

    :cond_16
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v3, v0

    move-object v4, v6

    move-object v5, v8

    move v6, v12

    move-object v7, v13

    move-object/from16 v8, p7

    :goto_e
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_17

    new-instance v0, Lv5;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lv5;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;II)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method
