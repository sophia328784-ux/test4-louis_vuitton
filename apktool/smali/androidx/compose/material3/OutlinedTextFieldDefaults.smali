.class public final Landroidx/compose/material3/OutlinedTextFieldDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/material3/OutlinedTextFieldDefaults;",
        "",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/compose/material3/OutlinedTextFieldDefaults;

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->a:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x42600000    # 56.0f

    sput v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->b:F

    const/high16 v0, 0x438c0000    # 280.0f

    sput v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->c:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->d:F

    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->e:F

    return-void
.end method


# virtual methods
.method public final a(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V
    .locals 26

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v10, p10

    move/from16 v11, p11

    const-string v1, "Container-4EFweAY"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v5, 0x3db82288

    move-object/from16 v8, p9

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    goto :goto_0

    :cond_1
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v8, v10

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_1

    :cond_2
    const/16 v9, 0x10

    :goto_1
    or-int/2addr v8, v9

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x100

    goto :goto_2

    :cond_3
    const/16 v9, 0x80

    :goto_2
    or-int/2addr v8, v9

    and-int/lit8 v9, v11, 0x8

    if-eqz v9, :cond_4

    or-int/lit16 v8, v8, 0xc00

    goto :goto_4

    :cond_4
    and-int/lit16 v12, v10, 0xc00

    if-nez v12, :cond_6

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v12, 0x800

    goto :goto_3

    :cond_5
    const/16 v12, 0x400

    :goto_3
    or-int/2addr v8, v12

    :cond_6
    :goto_4
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x4000

    goto :goto_5

    :cond_7
    const/16 v12, 0x2000

    :goto_5
    or-int/2addr v8, v12

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/high16 v12, 0x20000

    goto :goto_6

    :cond_8
    const/high16 v12, 0x10000

    :goto_6
    or-int/2addr v8, v12

    const/high16 v12, 0x180000

    and-int/2addr v12, v10

    if-nez v12, :cond_b

    and-int/lit8 v12, v11, 0x40

    if-nez v12, :cond_9

    move/from16 v12, p7

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v13

    if-eqz v13, :cond_a

    const/high16 v13, 0x100000

    goto :goto_7

    :cond_9
    move/from16 v12, p7

    :cond_a
    const/high16 v13, 0x80000

    :goto_7
    or-int/2addr v8, v13

    goto :goto_8

    :cond_b
    move/from16 v12, p7

    :goto_8
    const/high16 v13, 0xc00000

    and-int/2addr v13, v10

    if-nez v13, :cond_e

    and-int/lit16 v13, v11, 0x80

    if-nez v13, :cond_c

    move/from16 v13, p8

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v14

    if-eqz v14, :cond_d

    const/high16 v14, 0x800000

    goto :goto_9

    :cond_c
    move/from16 v13, p8

    :cond_d
    const/high16 v14, 0x400000

    :goto_9
    or-int/2addr v8, v14

    goto :goto_a

    :cond_e
    move/from16 v13, p8

    :goto_a
    const v14, 0x2492493

    and-int/2addr v14, v8

    const v15, 0x2492492

    move-object/from16 v16, v0

    if-eq v14, v15, :cond_f

    const/4 v14, 0x1

    goto :goto_b

    :cond_f
    const/4 v14, 0x0

    :goto_b
    and-int/lit8 v15, v8, 0x1

    invoke-virtual {v5, v15, v14}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v14

    if-eqz v14, :cond_20

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v14, v10, 0x1

    const v15, -0x1c00001

    const v17, -0x380001

    if-eqz v14, :cond_13

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v14

    if-eqz v14, :cond_10

    goto :goto_d

    :cond_10
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v1, v11, 0x40

    if-eqz v1, :cond_11

    and-int v8, v8, v17

    :cond_11
    and-int/lit16 v1, v11, 0x80

    if-eqz v1, :cond_12

    and-int/2addr v8, v15

    :cond_12
    move v1, v12

    move-object/from16 v9, v16

    :goto_c
    move v12, v8

    move v8, v13

    goto :goto_f

    :cond_13
    :goto_d
    if-eqz v9, :cond_14

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :cond_14
    move-object/from16 v9, v16

    :goto_e
    and-int/lit8 v1, v11, 0x40

    if-eqz v1, :cond_15

    and-int v8, v8, v17

    sget v1, Landroidx/compose/material3/OutlinedTextFieldDefaults;->e:F

    move v12, v1

    :cond_15
    and-int/lit16 v1, v11, 0x80

    if-eqz v1, :cond_16

    and-int/2addr v8, v15

    sget v1, Landroidx/compose/material3/OutlinedTextFieldDefaults;->d:F

    move/from16 v25, v8

    move v8, v1

    move v1, v12

    move/from16 v12, v25

    goto :goto_f

    :cond_16
    move v1, v12

    goto :goto_c

    :goto_f
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 v12, v12, 0x6

    and-int/lit8 v12, v12, 0xe

    invoke-static {v4, v5, v12}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    sget v12, Landroidx/compose/material3/internal/TextFieldImplKt;->a:F

    if-nez v2, :cond_17

    iget-wide v12, v6, Landroidx/compose/material3/TextFieldColors;->n:J

    goto :goto_10

    :cond_17
    if-eqz v3, :cond_18

    iget-wide v12, v6, Landroidx/compose/material3/TextFieldColors;->o:J

    goto :goto_10

    :cond_18
    if-eqz v19, :cond_19

    iget-wide v12, v6, Landroidx/compose/material3/TextFieldColors;->l:J

    goto :goto_10

    :cond_19
    iget-wide v12, v6, Landroidx/compose/material3/TextFieldColors;->m:J

    :goto_10
    sget-object v14, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    move-object v15, v14

    invoke-static {v15, v5}, Landroidx/compose/material3/MotionSchemeKt;->a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v14

    if-eqz v2, :cond_1a

    const v0, -0x63cef6df

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/16 v17, 0x0

    const/16 v18, 0xc

    move-object v0, v15

    const/4 v15, 0x0

    move-object/from16 v16, v5

    invoke-static/range {v12 .. v18}, Landroidx/compose/animation/SingleValueAnimationKt;->b(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v5

    move-object/from16 v12, v16

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_11

    :cond_1a
    move-object v0, v15

    move-wide v14, v12

    const/4 v13, 0x0

    move-object v12, v5

    const v5, -0x63cdbb6c

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v14, v15}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v5, v12}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    sget-object v13, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v13, v12}, Landroidx/compose/material3/MotionSchemeKt;->a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v13

    if-eqz v2, :cond_1c

    const v14, -0x63caf6c8

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v16, v12

    if-eqz v19, :cond_1b

    move v12, v1

    goto :goto_12

    :cond_1b
    move v12, v8

    :goto_12
    const/16 v17, 0x0

    const/16 v18, 0xc

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v18}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v12

    move-object/from16 v13, v16

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_1c
    move-object v13, v12

    const/4 v14, 0x0

    const v12, -0x63c82f99

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v12, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v12, v8}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v12, v13}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/unit/Dp;

    iget v12, v12, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/graphics/Color;

    iget-wide v14, v5, Landroidx/compose/ui/graphics/Color;->a:J

    invoke-static {v12, v14, v15}, Landroidx/compose/foundation/BorderStrokeKt;->a(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object v5

    invoke-static {v5, v13}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    if-nez v2, :cond_1d

    iget-wide v14, v6, Landroidx/compose/material3/TextFieldColors;->g:J

    goto :goto_14

    :cond_1d
    if-eqz v3, :cond_1e

    iget-wide v14, v6, Landroidx/compose/material3/TextFieldColors;->h:J

    goto :goto_14

    :cond_1e
    if-eqz v19, :cond_1f

    iget-wide v14, v6, Landroidx/compose/material3/TextFieldColors;->e:J

    goto :goto_14

    :cond_1f
    iget-wide v14, v6, Landroidx/compose/material3/TextFieldColors;->f:J

    :goto_14
    invoke-static {v0, v13}, Landroidx/compose/material3/MotionSchemeKt;->a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v0

    const/16 v17, 0x0

    const/16 v18, 0xc

    move-object/from16 v16, v13

    move-wide v12, v14

    const/4 v15, 0x0

    move-object v14, v0

    invoke-static/range {v12 .. v18}, Landroidx/compose/animation/SingleValueAnimationKt;->b(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v20

    move-object/from16 v0, v16

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/BorderStroke;

    iget v12, v5, Landroidx/compose/foundation/BorderStroke;->a:F

    iget-object v5, v5, Landroidx/compose/foundation/BorderStroke;->b:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v9, v12, v5, v7}, Landroidx/compose/foundation/BorderKt;->b(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    new-instance v19, Landroidx/compose/material3/OutlinedTextFieldDefaults$Container$1;

    const-string v23, "getValue()Ljava/lang/Object;"

    const/16 v24, 0x0

    const-class v21, Landroidx/compose/runtime/State;

    const-string v22, "value"

    invoke-direct/range {v19 .. v24}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v12, v19

    new-instance v13, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;

    invoke-direct {v13, v12}, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    new-instance v12, Lm21;

    const/4 v14, 0x3

    invoke-direct {v12, v7, v13, v14}, Lm21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v5, v12}, Landroidx/compose/ui/draw/DrawModifierKt;->c(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v13, 0x0

    invoke-static {v5, v0, v13}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    move-object v5, v9

    move v9, v8

    move v8, v1

    goto :goto_15

    :cond_20
    move-object v0, v5

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    move v8, v12

    move v9, v13

    move-object/from16 v5, v16

    :goto_15
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_21

    new-instance v0, Lzj0;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v11}, Lzj0;-><init>(Landroidx/compose/material3/OutlinedTextFieldDefaults;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFII)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_21
    return-void
.end method

.method public final b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 35

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    move/from16 v15, p15

    const v0, -0x67408512

    move-object/from16 v1, p14

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v15, 0x6

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v15

    goto :goto_1

    :cond_1
    move v1, v15

    :goto_1
    and-int/lit8 v5, v15, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x20

    goto :goto_2

    :cond_2
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v1, v10

    goto :goto_3

    :cond_3
    move-object/from16 v5, p2

    :goto_3
    and-int/lit16 v10, v15, 0x180

    if-nez v10, :cond_5

    move/from16 v10, p3

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x100

    goto :goto_4

    :cond_4
    const/16 v13, 0x80

    :goto_4
    or-int/2addr v1, v13

    goto :goto_5

    :cond_5
    move/from16 v10, p3

    :goto_5
    and-int/lit16 v13, v15, 0xc00

    const/16 v16, 0x800

    if-nez v13, :cond_7

    move/from16 v13, p4

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-eqz v17, :cond_6

    move/from16 v17, v16

    goto :goto_6

    :cond_6
    const/16 v17, 0x400

    :goto_6
    or-int v1, v1, v17

    goto :goto_7

    :cond_7
    move/from16 v13, p4

    :goto_7
    and-int/lit16 v7, v15, 0x6000

    const/16 v17, 0x2000

    if-nez v7, :cond_9

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x4000

    goto :goto_8

    :cond_8
    move/from16 v7, v17

    :goto_8
    or-int/2addr v1, v7

    :cond_9
    const/high16 v7, 0x30000

    and-int/2addr v7, v15

    const/high16 v19, 0x10000

    if-nez v7, :cond_b

    move-object/from16 v7, p6

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/high16 v20, 0x20000

    goto :goto_9

    :cond_a
    move/from16 v20, v19

    :goto_9
    or-int v1, v1, v20

    goto :goto_a

    :cond_b
    move-object/from16 v7, p6

    :goto_a
    const/high16 v20, 0x180000

    and-int v20, v15, v20

    move/from16 v11, p7

    if-nez v20, :cond_d

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v21

    if-eqz v21, :cond_c

    const/high16 v21, 0x100000

    goto :goto_b

    :cond_c
    const/high16 v21, 0x80000

    :goto_b
    or-int v1, v1, v21

    :cond_d
    const/high16 v21, 0xc00000

    and-int v22, v15, v21

    if-nez v22, :cond_f

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/high16 v22, 0x800000

    goto :goto_c

    :cond_e
    const/high16 v22, 0x400000

    :goto_c
    or-int v1, v1, v22

    :cond_f
    const/high16 v22, 0x6000000

    and-int v22, v15, v22

    move-object/from16 v12, p9

    if-nez v22, :cond_11

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    const/high16 v23, 0x4000000

    goto :goto_d

    :cond_10
    const/high16 v23, 0x2000000

    :goto_d
    or-int v1, v1, v23

    :cond_11
    const/high16 v23, 0x30000000

    and-int v23, v15, v23

    const/4 v14, 0x0

    if-nez v23, :cond_13

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    const/high16 v23, 0x20000000

    goto :goto_e

    :cond_12
    const/high16 v23, 0x10000000

    :goto_e
    or-int v1, v1, v23

    :cond_13
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    const/16 v23, 0x4

    goto :goto_f

    :cond_14
    const/16 v23, 0x2

    :goto_f
    const/high16 v25, 0xd80000

    or-int v23, v25, v23

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    const/16 v18, 0x20

    goto :goto_10

    :cond_15
    const/16 v18, 0x10

    :goto_10
    or-int v18, v23, v18

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    const/16 v20, 0x100

    goto :goto_11

    :cond_16
    const/16 v20, 0x80

    :goto_11
    or-int v18, v18, v20

    move-object/from16 v3, p10

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    goto :goto_12

    :cond_17
    const/16 v16, 0x400

    :goto_12
    or-int v16, v18, v16

    move-object/from16 v14, p11

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    const/16 v17, 0x4000

    :cond_18
    or-int v16, v16, v17

    or-int v16, v16, v19

    const v17, 0x12492493

    and-int v8, v1, v17

    const v4, 0x12492492

    const/16 v20, 0x1

    if-ne v8, v4, :cond_1a

    const v4, 0x492493

    and-int v4, v16, v4

    const v8, 0x492492

    if-eq v4, v8, :cond_19

    goto :goto_13

    :cond_19
    const/4 v4, 0x0

    goto :goto_14

    :cond_1a
    :goto_13
    move/from16 v4, v20

    :goto_14
    and-int/lit8 v8, v1, 0x1

    invoke-virtual {v0, v8, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v4, v15, 0x1

    const v8, -0x70001

    if-eqz v4, :cond_1c

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_15

    :cond_1b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int v4, v16, v8

    move-object/from16 v27, p12

    goto :goto_16

    :cond_1c
    :goto_15
    sget v4, Landroidx/compose/material3/internal/TextFieldImplKt;->a:F

    invoke-static {v4, v4, v4, v4}, Landroidx/compose/foundation/layout/PaddingKt;->d(FFFF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v4

    and-int v8, v16, v8

    move-object/from16 v27, v4

    move v4, v8

    :goto_16
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v8, v1, 0xe

    const/4 v3, 0x4

    if-ne v8, v3, :cond_1d

    move/from16 v3, v20

    goto :goto_17

    :cond_1d
    const/4 v3, 0x0

    :goto_17
    const p12, 0xe000

    and-int v8, v1, p12

    move/from16 v17, v3

    const/16 v3, 0x4000

    if-ne v8, v3, :cond_1e

    goto :goto_18

    :cond_1e
    const/16 v20, 0x0

    :goto_18
    or-int v3, v17, v20

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_20

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v3, :cond_1f

    goto :goto_19

    :cond_1f
    move/from16 p14, v4

    move-object v3, v8

    const/4 v8, 0x0

    goto :goto_1a

    :cond_20
    :goto_19
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString;

    move/from16 p14, v4

    const/4 v4, 0x2

    const/4 v8, 0x0

    invoke-direct {v3, v2, v8, v4, v8}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v6, v3}, Landroidx/compose/ui/text/input/VisualTransformation;->h(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1a
    check-cast v3, Landroidx/compose/ui/text/input/TransformedText;

    iget-object v3, v3, Landroidx/compose/ui/text/input/TransformedText;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v16, Landroidx/compose/material3/internal/TextFieldType;->Outlined:Landroidx/compose/material3/internal/TextFieldType;

    new-instance v19, Landroidx/compose/material3/TextFieldLabelPosition$Attached;

    const/16 v32, 0x7

    const/16 v33, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v28, v19

    invoke-direct/range {v28 .. v33}, Landroidx/compose/material3/TextFieldLabelPosition$Attached;-><init>(ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-nez v9, :cond_21

    const v4, 0x72dc957c

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v20, v8

    goto :goto_1b

    :cond_21
    const v8, 0x72dc957d

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v8, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$2$1;

    invoke-direct {v8, v9}, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$2$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v2, -0x570185d2

    invoke-static {v2, v8, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v20, v2

    :goto_1b
    shl-int/lit8 v2, v1, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/lit8 v2, v2, 0x6

    shr-int/lit8 v4, v1, 0x9

    const/high16 v8, 0x70000

    and-int/2addr v8, v4

    or-int/2addr v2, v8

    const/high16 v8, 0x380000

    and-int v17, v4, v8

    or-int v2, v2, v17

    shl-int/lit8 v17, p14, 0x15

    const/high16 v18, 0x1c00000

    and-int v18, v17, v18

    or-int v2, v2, v18

    const/high16 v18, 0xe000000

    and-int v18, v17, v18

    or-int v2, v2, v18

    const/high16 v18, 0x70000000

    and-int v17, v17, v18

    or-int v31, v2, v17

    shr-int/lit8 v2, p14, 0x9

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v17, v1, 0x6

    and-int/lit8 v17, v17, 0x70

    or-int v2, v2, v17

    move/from16 v17, v8

    and-int/lit16 v8, v1, 0x380

    or-int/2addr v2, v8

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v2, v4

    shr-int/lit8 v1, v1, 0x3

    and-int v1, v1, p12

    or-int/2addr v1, v2

    shl-int/lit8 v2, p14, 0x6

    and-int v2, v2, v17

    or-int/2addr v1, v2

    or-int v32, v1, v21

    move-object/from16 v22, p10

    move-object/from16 v29, p13

    move-object/from16 v30, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v26, v7

    move/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v21, v12

    move/from16 v23, v13

    move-object/from16 v28, v14

    invoke-static/range {v16 .. v32}, Landroidx/compose/material3/internal/TextFieldImplKt;->a(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition$Attached;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v13, v27

    goto :goto_1c

    :cond_22
    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v13, p12

    :goto_1c
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_23

    move-object v1, v0

    new-instance v0, Lak0;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v14, p13

    move-object/from16 v34, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v15}, Lak0;-><init>(Landroidx/compose/material3/OutlinedTextFieldDefaults;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    move-object/from16 v1, v34

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_23
    return-void
.end method
