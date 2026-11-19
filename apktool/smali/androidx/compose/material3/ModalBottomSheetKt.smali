.class public abstract Landroidx/compose/material3/ModalBottomSheetKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/ModalBottomSheetKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "alpha",
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x42400000    # 48.0f

    sput v0, Landroidx/compose/material3/ModalBottomSheetKt;->a:F

    const/high16 v0, 0x41c00000    # 24.0f

    sput v0, Landroidx/compose/material3/ModalBottomSheetKt;->b:F

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/TransformOriginKt;->a(FF)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material3/ModalBottomSheetKt;->c:J

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move-wide/from16 v8, p6

    move/from16 v10, p17

    move/from16 v11, p18

    if-eqz v0, :cond_0

    const-string v2, "ModalBottomSheet-YbuCTN8"

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, 0x7188eb30

    move-object/from16 v4, p16

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    and-int/lit8 v2, v10, 0x6

    const/4 v4, 0x2

    if-nez v2, :cond_2

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    or-int/2addr v2, v10

    goto :goto_1

    :cond_2
    move v2, v10

    :goto_1
    and-int/lit8 v5, v10, 0x30

    const/16 v6, 0x10

    const/16 v7, 0x20

    if-nez v5, :cond_4

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v7

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    or-int/2addr v2, v5

    :cond_4
    and-int/lit16 v5, v10, 0x180

    if-nez v5, :cond_6

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x100

    goto :goto_3

    :cond_5
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v2, v5

    :cond_6
    or-int/lit16 v5, v2, 0x6c00

    const/high16 v16, 0x30000

    and-int v16, v10, v16

    if-nez v16, :cond_7

    const v5, 0x16c00

    or-int/2addr v5, v2

    :cond_7
    const/high16 v2, 0x180000

    and-int/2addr v2, v10

    if-nez v2, :cond_9

    invoke-virtual {v12, v8, v9}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v2

    if-eqz v2, :cond_8

    const/high16 v2, 0x100000

    goto :goto_4

    :cond_8
    const/high16 v2, 0x80000

    :goto_4
    or-int/2addr v5, v2

    :cond_9
    const/high16 v2, 0xc00000

    and-int/2addr v2, v10

    if-nez v2, :cond_a

    const/high16 v2, 0x400000

    or-int/2addr v5, v2

    :cond_a
    const/high16 v2, 0x6000000

    or-int/2addr v2, v5

    const/high16 v16, 0x30000000

    and-int v16, v10, v16

    if-nez v16, :cond_b

    const/high16 v2, 0x16000000

    or-int/2addr v2, v5

    :cond_b
    and-int/lit8 v5, v11, 0x6

    if-nez v5, :cond_d

    move-object/from16 v5, p12

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/4 v4, 0x4

    :cond_c
    or-int/2addr v4, v11

    goto :goto_5

    :cond_d
    move-object/from16 v5, p12

    move v4, v11

    :goto_5
    and-int/lit8 v16, v11, 0x30

    move-object/from16 v14, p13

    if-nez v16, :cond_f

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    move v6, v7

    :cond_e
    or-int/2addr v4, v6

    :cond_f
    and-int/lit16 v6, v11, 0x180

    if-nez v6, :cond_11

    move-object/from16 v6, p14

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/16 v7, 0x100

    goto :goto_6

    :cond_10
    const/16 v7, 0x80

    :goto_6
    or-int/2addr v4, v7

    goto :goto_7

    :cond_11
    move-object/from16 v6, p14

    :goto_7
    and-int/lit16 v7, v11, 0xc00

    if-nez v7, :cond_13

    move-object/from16 v7, p15

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const/16 v16, 0x800

    goto :goto_8

    :cond_12
    const/16 v16, 0x400

    :goto_8
    or-int v4, v4, v16

    goto :goto_9

    :cond_13
    move-object/from16 v7, p15

    :goto_9
    const v16, 0x12492493

    and-int v13, v2, v16

    const v15, 0x12492492

    const/16 v22, 0x1

    if-ne v13, v15, :cond_15

    and-int/lit16 v13, v4, 0x493

    const/16 v15, 0x492

    if-eq v13, v15, :cond_14

    goto :goto_a

    :cond_14
    const/4 v13, 0x0

    goto :goto_b

    :cond_15
    :goto_a
    move/from16 v13, v22

    :goto_b
    and-int/lit8 v15, v2, 0x1

    invoke-virtual {v12, v15, v13}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v13

    if-eqz v13, :cond_37

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v13, v10, 0x1

    const v15, -0x71c70001

    if-eqz v13, :cond_17

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v13

    if-eqz v13, :cond_16

    goto :goto_c

    :cond_16
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/2addr v2, v15

    move/from16 v13, p3

    move/from16 v15, p4

    move-object/from16 v14, p5

    move-wide/from16 v17, p8

    move-wide/from16 v23, p10

    move/from16 v20, v4

    goto :goto_d

    :cond_17
    :goto_c
    sget v13, Landroidx/compose/material3/BottomSheetDefaults;->c:F

    sget-object v16, Landroidx/compose/material3/BottomSheetDefaults;->a:Landroidx/compose/material3/BottomSheetDefaults;

    sget-object v16, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Landroidx/compose/material3/tokens/SheetBottomTokens;->a:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v7, v12}, Landroidx/compose/material3/ShapesKt;->a(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v7

    invoke-static {v8, v9, v12}, Landroidx/compose/material3/ColorSchemeKt;->b(JLandroidx/compose/runtime/Composer;)J

    move-result-wide v17

    sget-object v19, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    move/from16 v19, v15

    sget-object v15, Landroidx/compose/material3/tokens/ScrimTokens;->a:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move/from16 v20, v4

    invoke-static {v15, v12}, Landroidx/compose/material3/ColorSchemeKt;->d(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v4

    const v15, 0x3ea3d70a    # 0.32f

    invoke-static {v15, v4, v5}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v4

    and-int v2, v2, v19

    move-wide/from16 v23, v4

    move-object v14, v7

    move/from16 v15, v22

    :goto_d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v4, v12}, Landroidx/compose/material3/MotionSchemeKt;->a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v6

    invoke-static {v4, v12}, Landroidx/compose/material3/MotionSchemeKt;->a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v4

    sget-object v5, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v5, v12}, Landroidx/compose/material3/MotionSchemeKt;->a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v5

    and-int/lit16 v7, v2, 0x380

    xor-int/lit16 v7, v7, 0x180

    move-object/from16 v19, v0

    const/16 v0, 0x100

    if-le v7, v0, :cond_18

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_19

    :cond_18
    and-int/lit16 v3, v2, 0x180

    if-ne v3, v0, :cond_1a

    :cond_19
    move/from16 v0, v22

    goto :goto_e

    :cond_1a
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    move/from16 v21, v7

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_1b

    if-ne v3, v7, :cond_1c

    :cond_1b
    move v0, v2

    goto :goto_f

    :cond_1c
    move v0, v2

    move-object v2, v3

    move-object v9, v7

    move/from16 v25, v20

    move/from16 v8, v21

    move-object/from16 v3, p2

    goto :goto_10

    :goto_f
    new-instance v2, Leh;

    move-object v3, v7

    const/4 v7, 0x1

    move-object v9, v3

    move/from16 v25, v20

    move/from16 v8, v21

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Leh;-><init>(Landroidx/compose/material3/SheetState;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;I)V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_10
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v12}, Landroidx/compose/runtime/EffectsKt;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_1d

    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v2, v12}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    const/16 v4, 0x100

    if-le v8, v4, :cond_1e

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    :cond_1e
    and-int/lit16 v5, v0, 0x180

    if-ne v5, v4, :cond_20

    :cond_1f
    move/from16 v7, v22

    goto :goto_11

    :cond_20
    const/4 v7, 0x0

    :goto_11
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v7

    and-int/lit8 v5, v0, 0xe

    const/4 v6, 0x4

    if-ne v5, v6, :cond_21

    move/from16 v7, v22

    goto :goto_12

    :cond_21
    const/4 v7, 0x0

    :goto_12
    or-int/2addr v4, v7

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_22

    if-ne v6, v9, :cond_23

    :cond_22
    new-instance v6, Landroidx/compose/material3/l;

    const/4 v4, 0x0

    invoke-direct {v6, v3, v2, v1, v4}, Landroidx/compose/material3/l;-><init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Object;I)V

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    const/16 v7, 0x100

    if-le v8, v7, :cond_25

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_24

    goto :goto_13

    :cond_24
    move/from16 p4, v4

    goto :goto_14

    :cond_25
    :goto_13
    move/from16 p4, v4

    and-int/lit16 v4, v0, 0x180

    if-ne v4, v7, :cond_26

    :goto_14
    move/from16 v7, v22

    goto :goto_15

    :cond_26
    const/4 v7, 0x0

    :goto_15
    or-int v4, p4, v7

    const/4 v7, 0x4

    if-ne v5, v7, :cond_27

    move/from16 v7, v22

    goto :goto_16

    :cond_27
    const/4 v7, 0x0

    :goto_16
    or-int/2addr v4, v7

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_28

    if-ne v7, v9, :cond_29

    :cond_28
    new-instance v7, Landroidx/compose/material3/m;

    invoke-direct {v7, v3, v1, v2}, Landroidx/compose/material3/m;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_29
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_2a

    const/4 v4, 0x0

    invoke-static {v4}, Landroidx/compose/animation/core/AnimatableKt;->a(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v4, Landroidx/compose/animation/core/Animatable;

    move-object/from16 p4, v6

    const/16 v6, 0x100

    if-le v8, v6, :cond_2c

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2b

    goto :goto_17

    :cond_2b
    move-object/from16 p5, v7

    goto :goto_18

    :cond_2c
    :goto_17
    move-object/from16 p5, v7

    and-int/lit16 v7, v0, 0x180

    if-ne v7, v6, :cond_2d

    :goto_18
    move/from16 v7, v22

    goto :goto_19

    :cond_2d
    const/4 v7, 0x0

    :goto_19
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v7, v7, v16

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v7, v7, v16

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2e

    move/from16 v5, v22

    goto :goto_1a

    :cond_2e
    const/4 v5, 0x0

    :goto_1a
    or-int/2addr v5, v7

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_2f

    if-ne v6, v9, :cond_30

    :cond_2f
    new-instance v6, Landroidx/compose/material3/n;

    invoke-direct {v6, v3, v2, v4, v1}, Landroidx/compose/material3/n;-><init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_30
    move-object/from16 v26, v6

    check-cast v26, Lkotlin/jvm/functions/Function0;

    move-object v5, v9

    move-object v9, v2

    new-instance v2, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$4;

    move-object/from16 v10, p5

    move-object/from16 v20, p13

    move-object/from16 v7, p14

    move-object/from16 v21, p15

    move-object v6, v3

    move-object/from16 v27, v5

    move-object v1, v12

    move v12, v13

    move v13, v15

    move-object/from16 v11, v19

    move-object/from16 v5, p4

    move-wide/from16 v15, p6

    move-object/from16 v19, p12

    move-wide/from16 v29, v23

    move/from16 v23, v0

    move v0, v8

    move-object v8, v4

    move-wide/from16 v3, v29

    invoke-direct/range {v2 .. v21}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$4;-><init>(JLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;FZLandroidx/compose/ui/graphics/Shape;JJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-wide v15, v3

    move-object v7, v8

    move-object/from16 v19, v11

    move-object v3, v2

    move-object v2, v6

    const v4, 0x3c33c970

    invoke-static {v4, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    move/from16 v4, v25

    and-int/lit16 v3, v4, 0x380

    or-int/lit16 v10, v3, 0x7000

    move-object/from16 v6, p14

    move-object v9, v1

    move-wide/from16 v4, v17

    move-object/from16 v3, v26

    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->a(Lkotlin/jvm/functions/Function0;JLandroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    iget-object v3, v2, Landroidx/compose/material3/SheetState;->e:Landroidx/compose/material3/internal/AnchoredDraggableState;

    invoke-virtual {v3}, Landroidx/compose/material3/internal/AnchoredDraggableState;->e()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object v3

    sget-object v4, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    invoke-interface {v3, v4}, Landroidx/compose/material3/internal/DraggableAnchors;->d(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    const v3, 0x2c9c96f2

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/16 v4, 0x100

    if-le v0, v4, :cond_31

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    :cond_31
    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x180

    if-ne v0, v4, :cond_33

    :cond_32
    move/from16 v7, v22

    goto :goto_1b

    :cond_33
    const/4 v7, 0x0

    :goto_1b
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v7, :cond_34

    move-object/from16 v3, v27

    if-ne v0, v3, :cond_35

    :cond_34
    new-instance v0, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$5$1;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$5$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_35
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1c

    :cond_36
    const/4 v4, 0x0

    const v0, 0x2c9d8732

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1c
    move v4, v12

    move v5, v13

    move-object v6, v14

    move-wide v11, v15

    move-wide/from16 v9, v17

    goto :goto_1d

    :cond_37
    move-object/from16 v19, v0

    move-object v2, v3

    move-object v1, v12

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    :goto_1d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_38

    move-object v1, v0

    new-instance v0, Lbd0;

    move-wide/from16 v7, p6

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v28, v1

    move-object v3, v2

    move-object/from16 v2, v19

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v18}, Lbd0;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    move-object/from16 v1, v28

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_38
    return-void
.end method

.method public static final b(Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v9, p3

    move-object/from16 v0, p4

    move-object/from16 v3, p5

    move/from16 v10, p6

    move/from16 v8, p7

    const-string v2, "ModalBottomSheetContent-7---e2Q"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v11, v0

    const v0, -0x23aaf70

    move-object/from16 v4, p17

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    :goto_0
    or-int v0, p18, v0

    move-object/from16 v7, p1

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_1

    :cond_2
    const/16 v6, 0x80

    :goto_1
    or-int/2addr v0, v6

    move-object/from16 v6, p2

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x800

    const/16 v17, 0x400

    if-eqz v15, :cond_3

    move/from16 v15, v16

    goto :goto_2

    :cond_3
    move/from16 v15, v17

    :goto_2
    or-int/2addr v0, v15

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    const/16 v18, 0x2000

    if-eqz v15, :cond_4

    const/16 v15, 0x4000

    goto :goto_3

    :cond_4
    move/from16 v15, v18

    :goto_3
    or-int/2addr v0, v15

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    const/high16 v19, 0x10000

    const/high16 v20, 0x20000

    if-eqz v15, :cond_5

    move/from16 v15, v20

    goto :goto_4

    :cond_5
    move/from16 v15, v19

    :goto_4
    or-int/2addr v0, v15

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/high16 v15, 0x100000

    goto :goto_5

    :cond_6
    const/high16 v15, 0x80000

    :goto_5
    or-int/2addr v0, v15

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v15

    if-eqz v15, :cond_7

    const/high16 v15, 0x800000

    goto :goto_6

    :cond_7
    const/high16 v15, 0x400000

    :goto_6
    or-int/2addr v0, v15

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v15

    if-eqz v15, :cond_8

    const/high16 v15, 0x4000000

    goto :goto_7

    :cond_8
    const/high16 v15, 0x2000000

    :goto_7
    or-int/2addr v0, v15

    move-object/from16 v15, p8

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    const/high16 v21, 0x20000000

    goto :goto_8

    :cond_9
    const/high16 v21, 0x10000000

    :goto_8
    or-int v21, v0, v21

    move-wide/from16 v14, p9

    invoke-virtual {v12, v14, v15}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v22

    if-eqz v22, :cond_a

    const/16 v22, 0x4

    :goto_9
    move-wide/from16 v5, p11

    goto :goto_a

    :cond_a
    const/16 v22, 0x2

    goto :goto_9

    :goto_a
    invoke-virtual {v12, v5, v6}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v24

    if-eqz v24, :cond_b

    const/16 v24, 0x20

    goto :goto_b

    :cond_b
    const/16 v24, 0x10

    :goto_b
    or-int v22, v22, v24

    move/from16 v4, p13

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v24

    if-eqz v24, :cond_c

    const/16 v0, 0x100

    goto :goto_c

    :cond_c
    const/16 v0, 0x80

    :goto_c
    or-int v0, v22, v0

    move-object/from16 v13, p14

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    goto :goto_d

    :cond_d
    move/from16 v16, v17

    :goto_d
    or-int v0, v0, v16

    move/from16 v16, v0

    move-object/from16 v0, p15

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/16 v18, 0x4000

    :cond_e
    or-int v16, v16, v18

    move-object/from16 v0, p16

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    move/from16 v19, v20

    :cond_f
    or-int v16, v16, v19

    const v17, 0x12492493

    and-int v0, v21, v17

    const v4, 0x12492492

    const/4 v6, 0x1

    if-ne v0, v4, :cond_11

    const v0, 0x12493

    and-int v0, v16, v0

    const v4, 0x12492

    if-eq v0, v4, :cond_10

    goto :goto_e

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :cond_11
    :goto_e
    move v0, v6

    :goto_f
    and-int/lit8 v4, v21, 0x1

    invoke-virtual {v12, v4, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, p18, 0x1

    if-eqz v0, :cond_13

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_10

    :cond_12
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :cond_13
    :goto_10
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget v0, Landroidx/compose/material3/internal/Strings;->a:I

    const v0, 0x7f140bb7

    invoke-static {v12, v0}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->c:Landroidx/compose/ui/BiasAlignment;

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v5, v11, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v10, v6}, Landroidx/compose/foundation/layout/SizeKt;->u(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/high16 v18, 0x380000

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/high16 v19, 0x180000

    if-eqz v8, :cond_19

    const v6, -0x5e4bf1b7

    invoke-static {v12, v6, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    and-int v6, v21, v18

    xor-int v6, v6, v19

    const/high16 v7, 0x100000

    if-le v6, v7, :cond_14

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    :cond_14
    and-int v6, v21, v19

    if-ne v6, v7, :cond_16

    :cond_15
    const/4 v6, 0x1

    goto :goto_11

    :cond_16
    const/4 v6, 0x0

    :goto_11
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_17

    if-ne v7, v5, :cond_18

    :cond_17
    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    sget v7, Landroidx/compose/material3/SheetDefaultsKt;->a:F

    new-instance v7, Landroidx/compose/material3/SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;

    invoke-direct {v7, v3, v9, v6}, Landroidx/compose/material3/SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;)V

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v7, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    const/4 v6, 0x0

    invoke-static {v2, v7, v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_19
    const/4 v6, 0x0

    const v7, -0x5e4bb908

    invoke-static {v12, v7, v6, v2}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    :goto_12
    invoke-interface {v4, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v4, v3, Landroidx/compose/material3/SheetState;->e:Landroidx/compose/material3/internal/AnchoredDraggableState;

    iget-object v6, v3, Landroidx/compose/material3/SheetState;->e:Landroidx/compose/material3/internal/AnchoredDraggableState;

    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    and-int v18, v21, v18

    xor-int v8, v18, v19

    const/high16 v10, 0x100000

    if-le v8, v10, :cond_1a

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1b

    :cond_1a
    move-object/from16 v33, v11

    goto :goto_13

    :cond_1b
    move-object/from16 v33, v11

    goto :goto_14

    :goto_13
    and-int v11, v21, v19

    if-ne v11, v10, :cond_1c

    :goto_14
    const/4 v10, 0x1

    goto :goto_15

    :cond_1c
    const/4 v10, 0x0

    :goto_15
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_1d

    if-ne v11, v5, :cond_1e

    :cond_1d
    new-instance v11, Lw20;

    const/16 v10, 0xb

    invoke-direct {v11, v3, v10}, Lw20;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v4, v7, v11}, Landroidx/compose/material3/internal/AnchoredDraggableKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v24

    iget-object v2, v6, Landroidx/compose/material3/internal/AnchoredDraggableState;->f:Landroidx/compose/material3/internal/AnchoredDraggableState$draggableState$1;

    if-eqz p7, :cond_1f

    invoke-virtual {v3}, Landroidx/compose/material3/SheetState;->e()Z

    move-result v4

    if-eqz v4, :cond_1f

    const/16 v27, 0x1

    goto :goto_16

    :cond_1f
    const/16 v27, 0x0

    :goto_16
    iget-object v4, v6, Landroidx/compose/material3/internal/AnchoredDraggableState;->m:Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_20

    const/16 v29, 0x1

    goto :goto_17

    :cond_20
    const/16 v29, 0x0

    :goto_17
    const v10, 0xe000

    and-int v4, v21, v10

    const/16 v11, 0x4000

    if-ne v4, v11, :cond_21

    const/4 v4, 0x1

    goto :goto_18

    :cond_21
    const/4 v4, 0x0

    :goto_18
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v4, :cond_22

    if-ne v11, v5, :cond_23

    :cond_22
    new-instance v11, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$4$1;

    const/4 v4, 0x0

    invoke-direct {v11, v4, v9}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$4$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    move-object/from16 v30, v11

    check-cast v30, Lkotlin/jvm/functions/Function3;

    const/16 v31, 0x0

    const/16 v32, 0xa8

    const/16 v28, 0x0

    move-object/from16 v25, v2

    move-object/from16 v26, v7

    invoke-static/range {v24 .. v32}, Landroidx/compose/foundation/gestures/DraggableKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_24

    if-ne v7, v5, :cond_25

    :cond_24
    new-instance v7, Llt;

    const/16 v4, 0x16

    invoke-direct {v7, v0, v4}, Llt;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-static {v2, v0, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v0, v6, Landroidx/compose/material3/internal/AnchoredDraggableState;->j:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->a()F

    move-result v0

    float-to-int v6, v0

    if-gez v6, :cond_26

    const/4 v6, 0x0

    :cond_26
    const/16 v0, 0xd

    invoke-static {v6, v0}, Landroidx/compose/foundation/layout/WindowInsetsKt;->b(II)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v7, 0x100000

    if-le v8, v7, :cond_27

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    :cond_27
    and-int v2, v21, v19

    if-ne v2, v7, :cond_29

    :cond_28
    const/4 v6, 0x1

    goto :goto_19

    :cond_29
    const/4 v6, 0x0

    :goto_19
    and-int/lit8 v2, v21, 0x70

    const/16 v4, 0x20

    if-eq v2, v4, :cond_2b

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_1a

    :cond_2a
    const/16 v20, 0x0

    goto :goto_1b

    :cond_2b
    :goto_1a
    const/16 v20, 0x1

    :goto_1b
    or-int v2, v6, v20

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_2c

    if-ne v4, v5, :cond_2d

    :cond_2c
    new-instance v4, Lk60;

    const/16 v2, 0xa

    invoke-direct {v4, v3, v1, v2}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2d
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v4}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v2, Lih;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6}, Lih;-><init>(Landroidx/compose/material3/SheetState;I)V

    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    new-instance v0, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$7;

    move-object/from16 v7, p1

    move-object/from16 v6, p2

    move/from16 v8, p7

    move-object/from16 v5, p16

    move-object v2, v1

    move-object v4, v13

    move-object/from16 v1, p15

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$7;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Z)V

    const v1, 0x2b6fbd6b

    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v20

    shr-int/lit8 v0, v21, 0x18

    and-int/lit8 v0, v0, 0x70

    const/high16 v1, 0xc00000

    or-int/2addr v0, v1

    shl-int/lit8 v1, v16, 0x6

    and-int/lit16 v2, v1, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    or-int/2addr v0, v2

    and-int/2addr v1, v10

    or-int v22, v0, v1

    const/16 v23, 0x60

    const/16 v19, 0x0

    move-object/from16 v13, p8

    move-wide/from16 v16, p11

    move/from16 v18, p13

    move-object/from16 v21, v12

    move-object v12, v11

    invoke-static/range {v12 .. v23}, Landroidx/compose/material3/SurfaceKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1c

    :cond_2e
    move-object/from16 v33, v11

    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1c
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2f

    move-object v1, v0

    new-instance v0, Lad0;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p18

    move-object/from16 v34, v1

    move-object v4, v9

    move-object/from16 v5, v33

    move-object/from16 v1, p0

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v18}, Lad0;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    move-object/from16 v1, v34

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2f
    return-void
.end method

.method public static final c(JLkotlin/jvm/functions/Function0;ZZLandroidx/compose/runtime/Composer;I)V
    .locals 18

    move-wide/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    const v0, -0x17578dd7

    move-object/from16 v6, p5

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v0

    const/4 v12, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    or-int v0, p6, v0

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    const/16 v14, 0x20

    if-eqz v6, :cond_1

    move v6, v14

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v0, v6

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v0, v6

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x800

    goto :goto_3

    :cond_3
    const/16 v6, 0x400

    :goto_3
    or-int/2addr v0, v6

    and-int/lit16 v6, v0, 0x493

    const/16 v7, 0x492

    const/4 v8, 0x1

    if-eq v6, v7, :cond_4

    move v6, v8

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v9, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_11

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-wide/16 v6, 0x10

    cmp-long v6, v1, v6

    if-eqz v6, :cond_10

    const v6, -0x55bf0636

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz v4, :cond_5

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    sget-object v7, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v7, v9}, Landroidx/compose/material3/MotionSchemeKt;->a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v7

    const/4 v10, 0x0

    const/16 v11, 0x1c

    move/from16 v16, v8

    const/4 v8, 0x0

    move/from16 v13, v16

    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    sget v7, Landroidx/compose/material3/internal/Strings;->a:I

    const v7, 0x7f1405cd

    invoke-static {v9, v7}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const-string v10, "Scrim-KTwxG1Y"

    if-eqz v5, :cond_c

    const v11, -0x55ba773b

    invoke-static {v9, v11, v10}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v11

    and-int/lit8 v15, v0, 0x70

    if-ne v15, v14, :cond_6

    move/from16 v17, v13

    goto :goto_6

    :cond_6
    const/16 v17, 0x0

    :goto_6
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v17, :cond_7

    if-ne v13, v8, :cond_8

    :cond_7
    new-instance v13, Landroidx/compose/material3/ModalBottomSheetKt$Scrim$dismissSheet$1$1;

    invoke-direct {v13, v3}, Landroidx/compose/material3/ModalBottomSheetKt$Scrim$dismissSheet$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v11, v3, v13}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-ne v15, v14, :cond_9

    const/4 v14, 0x1

    goto :goto_7

    :cond_9
    const/4 v14, 0x0

    :goto_7
    or-int/2addr v13, v14

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_a

    if-ne v14, v8, :cond_b

    :cond_a
    new-instance v14, Lt50;

    invoke-direct {v14, v12, v7, v3}, Lt50;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v14, Lkotlin/jvm/functions/Function1;

    const/4 v13, 0x1

    invoke-static {v11, v13, v14}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_c
    const/4 v11, 0x0

    const v7, -0x55b3f66f

    invoke-static {v9, v7, v11, v10}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v7

    :goto_8
    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v11, v10}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v10, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v11, v10}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-interface {v10, v7}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    and-int/lit8 v0, v0, 0xe

    const/4 v10, 0x4

    if-ne v0, v10, :cond_d

    goto :goto_9

    :cond_d
    const/4 v13, 0x0

    :goto_9
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v13

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v0, :cond_e

    if-ne v10, v8, :cond_f

    :cond_e
    new-instance v10, Ls1;

    invoke-direct {v10, v1, v2, v6}, Ls1;-><init>(JLandroidx/compose/runtime/State;)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v11, 0x0

    invoke-static {v7, v10, v9, v11}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_10
    const/4 v11, 0x0

    const v0, -0x55b13247

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_11
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_12

    new-instance v0, Lzc0;

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lzc0;-><init>(JLkotlin/jvm/functions/Function0;ZZI)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static final d(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F
    .locals 4

    invoke-interface {p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->b()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v3, v0, v1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget v3, Landroidx/compose/material3/ModalBottomSheetKt;->a:F

    invoke-interface {p0, v3}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v1, p0, p1}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    move-result p0

    div-float/2addr p0, v0

    sub-float/2addr v2, p0

    :cond_1
    :goto_0
    return v2
.end method

.method public static final e(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F
    .locals 4

    invoke-interface {p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->b()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v3, v0, v1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget v3, Landroidx/compose/material3/ModalBottomSheetKt;->b:F

    invoke-interface {p0, v3}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v1, p0, p1}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    move-result p0

    div-float/2addr p0, v0

    sub-float/2addr v2, p0

    :cond_1
    :goto_0
    return v2
.end method

.method public static final f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material3/SheetState;
    .locals 8

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p1, p3, :cond_1

    new-instance p1, Lba0;

    const/4 p3, 0x7

    invoke-direct {p1, p3}, Lba0;-><init>(I)V

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object p3, p1

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_2
    move-object v2, p3

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    and-int/lit8 p0, p0, 0x70

    const/16 p1, 0x180

    or-int v6, p1, p0

    const/16 v7, 0x38

    const/4 v4, 0x0

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/SheetDefaultsKt;->b(ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SheetValue;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object p0

    return-object p0
.end method
