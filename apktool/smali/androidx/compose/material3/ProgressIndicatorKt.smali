.class public abstract Landroidx/compose/material3/ProgressIndicatorKt;
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

.field public static final c:F

.field public static final d:Landroidx/compose/animation/core/CubicBezierEasing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x43700000    # 240.0f

    sput v0, Landroidx/compose/material3/ProgressIndicatorKt;->a:F

    sget v0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->a:F

    sget v0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->a:F

    sput v0, Landroidx/compose/material3/ProgressIndicatorKt;->b:F

    sget v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->a:F

    sget v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->a:F

    sput v0, Landroidx/compose/material3/ProgressIndicatorKt;->c:F

    sget-object v0, Landroidx/compose/material3/tokens/MotionTokens;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    sget-object v0, Landroidx/compose/material3/tokens/MotionTokens;->c:Landroidx/compose/animation/core/CubicBezierEasing;

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->d:Landroidx/compose/animation/core/CubicBezierEasing;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;JFJIFLandroidx/compose/runtime/Composer;I)V
    .locals 24

    move-object/from16 v0, p0

    move-wide/from16 v10, p1

    move/from16 v4, p3

    move/from16 v12, p9

    if-eqz v0, :cond_0

    const-string v1, "CircularProgressIndicator-4lLiAd8"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v13, v0

    const v0, 0x13db87c1

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    and-int/lit8 v0, v12, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v12

    goto :goto_1

    :cond_2
    move v0, v12

    :goto_1
    and-int/lit8 v2, v12, 0x30

    if-nez v2, :cond_4

    invoke-virtual {v14, v10, v11}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    goto :goto_2

    :cond_3
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v0, v2

    :cond_4
    and-int/lit16 v2, v12, 0x180

    if-nez v2, :cond_6

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x100

    goto :goto_3

    :cond_5
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v0, v2

    :cond_6
    and-int/lit16 v2, v12, 0xc00

    if-nez v2, :cond_7

    or-int/lit16 v0, v0, 0x400

    :cond_7
    const v2, 0x36000

    or-int/2addr v0, v2

    const v2, 0x12493

    and-int/2addr v2, v0

    const v6, 0x12492

    const/4 v15, 0x0

    const/4 v7, 0x1

    if-eq v2, v6, :cond_8

    move v2, v7

    goto :goto_4

    :cond_8
    move v2, v15

    :goto_4
    and-int/lit8 v6, v0, 0x1

    invoke-virtual {v14, v6, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_a

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit16 v0, v0, -0x1c01

    move-wide/from16 v8, p4

    move/from16 v2, p6

    move/from16 v6, p7

    goto :goto_6

    :cond_a
    :goto_5
    sget v2, Landroidx/compose/material3/ProgressIndicatorDefaults;->a:I

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v8, Landroidx/compose/ui/graphics/Color;->h:J

    and-int/lit16 v0, v0, -0x1c01

    sget v2, Landroidx/compose/material3/ProgressIndicatorDefaults;->b:I

    sget v6, Landroidx/compose/material3/ProgressIndicatorDefaults;->c:F

    :goto_6
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v16, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/Density;

    new-instance v16, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-interface {v3, v4}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v17

    const/16 v22, 0x1a

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v19, v2

    invoke-direct/range {v16 .. v23}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v16

    const/4 v5, 0x0

    invoke-static {v7, v14, v5}, Landroidx/compose/animation/core/InfiniteTransitionKt;->c(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object v1

    sget-object v7, Landroidx/compose/animation/core/EasingKt;->d:Lov;

    const/16 v5, 0x1770

    const/4 v2, 0x2

    invoke-static {v5, v15, v7, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v2

    move/from16 p5, v6

    const-wide/16 v5, 0x0

    const/4 v7, 0x6

    const/4 v15, 0x0

    invoke-static {v2, v15, v5, v6, v7}, Landroidx/compose/animation/core/AnimationSpecKt;->a(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JI)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v2

    const/4 v15, 0x0

    const/high16 v5, 0x44870000    # 1080.0f

    invoke-static {v1, v15, v5, v2, v14}, Landroidx/compose/animation/core/InfiniteTransitionKt;->a(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v5

    new-instance v2, Lyn0;

    const/16 v6, 0xc

    invoke-direct {v2, v6}, Lyn0;-><init>(I)V

    new-instance v6, Landroidx/compose/animation/core/KeyframesSpec;

    new-instance v15, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    invoke-direct {v15}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;-><init>()V

    invoke-virtual {v2, v15}, Lyn0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v6, v15}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    const-wide/16 v10, 0x0

    const/4 v15, 0x0

    invoke-static {v6, v15, v10, v11, v7}, Landroidx/compose/animation/core/AnimationSpecKt;->a(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JI)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v2

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v10, 0x0

    invoke-static {v1, v10, v6, v2, v14}, Landroidx/compose/animation/core/InfiniteTransitionKt;->a(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v6

    new-instance v2, Landroidx/compose/animation/core/KeyframesSpec;

    new-instance v10, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    invoke-direct {v10}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;-><init>()V

    const/16 v11, 0x1770

    iput v11, v10, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->a:I

    const p6, 0x3f5eb852    # 0.87f

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v7, 0xbb8

    invoke-virtual {v10, v7, v15}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->a(ILjava/lang/Float;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    move-result-object v7

    sget-object v15, Landroidx/compose/material3/ProgressIndicatorKt;->d:Landroidx/compose/animation/core/CubicBezierEasing;

    iput-object v15, v7, Landroidx/compose/animation/core/KeyframeBaseEntity;->b:Landroidx/compose/animation/core/Easing;

    const v7, 0x3dcccccd    # 0.1f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v10, v11, v15}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->a(ILjava/lang/Float;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    invoke-direct {v2, v10}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    const/4 v4, 0x6

    const-wide/16 v10, 0x0

    const/4 v15, 0x0

    invoke-static {v2, v15, v10, v11, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->a(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JI)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v2

    move/from16 v4, p6

    invoke-static {v1, v7, v4, v2, v14}, Landroidx/compose/animation/core/InfiniteTransitionKt;->a(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v1

    new-instance v2, Lyn0;

    const/16 v4, 0xd

    invoke-direct {v2, v4}, Lyn0;-><init>(I)V

    const/4 v4, 0x1

    invoke-static {v13, v4, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget v7, Landroidx/compose/material3/ProgressIndicatorKt;->c:F

    invoke-static {v2, v7}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v15

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    const v7, 0xe000

    and-int/2addr v7, v0

    const/16 v10, 0x4000

    if-ne v7, v10, :cond_b

    move v7, v4

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    :goto_7
    or-int/2addr v2, v7

    const/high16 v7, 0x70000

    and-int/2addr v7, v0

    const/high16 v10, 0x20000

    if-ne v7, v10, :cond_c

    move v7, v4

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    :goto_8
    or-int/2addr v2, v7

    and-int/lit16 v7, v0, 0x380

    const/16 v10, 0x100

    if-ne v7, v10, :cond_d

    move v7, v4

    goto :goto_9

    :cond_d
    const/4 v7, 0x0

    :goto_9
    or-int/2addr v2, v7

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v2, v7

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v2, v7

    invoke-virtual {v14, v8, v9}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v7

    or-int/2addr v2, v7

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v2, v7

    and-int/lit8 v7, v0, 0x70

    xor-int/lit8 v7, v7, 0x30

    const/16 v10, 0x20

    move-object/from16 p0, v5

    move-wide/from16 v4, p1

    if-le v7, v10, :cond_e

    invoke-virtual {v14, v4, v5}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v7

    if-nez v7, :cond_f

    :cond_e
    and-int/lit8 v0, v0, 0x30

    if-ne v0, v10, :cond_10

    :cond_f
    const/4 v7, 0x1

    goto :goto_a

    :cond_10
    const/4 v7, 0x0

    :goto_a
    or-int v0, v2, v7

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_12

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v0, :cond_11

    goto :goto_b

    :cond_11
    move/from16 v3, p5

    move-object v0, v2

    move-wide v7, v8

    move/from16 v2, v19

    goto :goto_c

    :cond_12
    :goto_b
    new-instance v0, Ljq0;

    move-wide v10, v4

    move-wide v7, v8

    move/from16 v2, v19

    move-object/from16 v5, p0

    move/from16 v4, p3

    move-object v9, v3

    move/from16 v3, p5

    invoke-direct/range {v0 .. v11}, Ljq0;-><init>(Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;IFFLandroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;JLandroidx/compose/ui/graphics/drawscope/Stroke;J)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_c
    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-static {v15, v0, v14, v1}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-wide v5, v7

    move v7, v2

    move v8, v3

    goto :goto_d

    :cond_13
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    :goto_d
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_14

    new-instance v0, Lkq0;

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move v9, v12

    move-object v1, v13

    invoke-direct/range {v0 .. v9}, Lkq0;-><init>(Landroidx/compose/ui/Modifier;JFJIFI)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJIFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v8, p2

    move-wide/from16 v5, p4

    if-eqz v0, :cond_0

    const-string v2, "LinearProgressIndicator-GJbTh5U"

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x144387f6

    move-object/from16 v3, p9

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int v2, p10, v2

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_1

    :cond_2
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v2, v4

    invoke-virtual {v11, v8, v9}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x100

    goto :goto_2

    :cond_3
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v2, v4

    invoke-virtual {v11, v5, v6}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x800

    goto :goto_3

    :cond_4
    const/16 v4, 0x400

    :goto_3
    or-int/2addr v2, v4

    or-int/lit16 v2, v2, 0x6000

    move/from16 v4, p7

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v12

    if-eqz v12, :cond_5

    const/high16 v12, 0x20000

    goto :goto_4

    :cond_5
    const/high16 v12, 0x10000

    :goto_4
    or-int/2addr v2, v12

    const v12, 0x92493

    and-int/2addr v12, v2

    const v14, 0x92492

    const/4 v15, 0x1

    if-eq v12, v14, :cond_6

    move v12, v15

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    :goto_5
    and-int/lit8 v14, v2, 0x1

    invoke-virtual {v11, v14, v12}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v12, p10, 0x1

    if-eqz v12, :cond_8

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v12, p6

    goto :goto_7

    :cond_8
    :goto_6
    sget v12, Landroidx/compose/material3/ProgressIndicatorDefaults;->a:I

    :goto_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v14, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v14, v2, 0xe

    if-ne v14, v3, :cond_9

    move v3, v15

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_a

    if-ne v14, v7, :cond_b

    :cond_a
    new-instance v14, Lee0;

    const/16 v3, 0x1d

    invoke-direct {v14, v1, v3}, Lee0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v14, Lkotlin/jvm/functions/Function0;

    sget-object v3, Landroidx/compose/material3/internal/AccessibilityUtilKt;->d:Landroidx/compose/ui/Modifier;

    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v16, :cond_c

    if-ne v10, v7, :cond_d

    :cond_c
    new-instance v10, Lbo0;

    const/4 v13, 0x3

    invoke-direct {v10, v14, v13}, Lbo0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v15, v10}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget v10, Landroidx/compose/material3/ProgressIndicatorKt;->a:F

    sget v13, Landroidx/compose/material3/ProgressIndicatorKt;->b:F

    invoke-static {v3, v10, v13}, Landroidx/compose/foundation/layout/SizeKt;->p(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v13

    const/high16 v3, 0x70000

    and-int/2addr v3, v2

    const/high16 v10, 0x20000

    if-ne v3, v10, :cond_e

    move v3, v15

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v3, v10

    and-int/lit16 v10, v2, 0x1c00

    xor-int/lit16 v10, v10, 0xc00

    const/16 v15, 0x800

    if-le v10, v15, :cond_f

    invoke-virtual {v11, v5, v6}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v10

    if-nez v10, :cond_10

    :cond_f
    and-int/lit16 v10, v2, 0xc00

    if-ne v10, v15, :cond_11

    :cond_10
    const/4 v10, 0x1

    goto :goto_a

    :cond_11
    const/4 v10, 0x0

    :goto_a
    or-int/2addr v3, v10

    and-int/lit16 v10, v2, 0x380

    xor-int/lit16 v10, v10, 0x180

    const/16 v15, 0x100

    if-le v10, v15, :cond_12

    invoke-virtual {v11, v8, v9}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v10

    if-nez v10, :cond_13

    :cond_12
    and-int/lit16 v2, v2, 0x180

    if-ne v2, v15, :cond_14

    :cond_13
    const/4 v15, 0x1

    goto :goto_b

    :cond_14
    const/4 v15, 0x0

    :goto_b
    or-int v2, v3, v15

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_16

    if-ne v3, v7, :cond_15

    goto :goto_c

    :cond_15
    move-object v2, v3

    move v3, v12

    goto :goto_d

    :cond_16
    :goto_c
    new-instance v2, Llq0;

    move-object/from16 v10, p8

    move-wide v6, v5

    move v3, v12

    move-object v5, v14

    invoke-direct/range {v2 .. v10}, Llq0;-><init>(IFLkotlin/jvm/functions/Function0;JJLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_d
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    invoke-static {v13, v2, v11, v4}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move v7, v3

    goto :goto_e

    :cond_17
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v7, p6

    :goto_e
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_18

    move-object v2, v0

    new-instance v0, Lfs;

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lfs;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJIFLkotlin/jvm/functions/Function1;I)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method

.method public static final c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 11

    move-object/from16 v9, p5

    iget v0, v9, Landroidx/compose/ui/graphics/drawscope/Stroke;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    mul-float/2addr v1, v0

    sub-float/2addr v2, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v5, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v0, v7

    or-long/2addr v5, v0

    sget-object v0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v0, v4

    and-long/2addr v2, v7

    or-long v7, v0, v2

    sget-object v0, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->a0:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v10, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->b:I

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-wide v1, p3

    invoke-interface/range {v0 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->G(JFFJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    return-void
.end method

.method public static final d(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V
    .locals 22

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v1, v3

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v7, :cond_1

    move/from16 v9, p1

    goto :goto_1

    :cond_1
    sub-float v9, v8, p2

    :goto_1
    mul-float/2addr v9, v0

    if-eqz v7, :cond_2

    move/from16 v8, p2

    goto :goto_2

    :cond_2
    sub-float v8, v8, p1

    :goto_2
    mul-float/2addr v8, v0

    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->a:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p6, :cond_3

    goto :goto_3

    :cond_3
    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    :goto_3
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v9, v3

    shl-long/2addr v0, v2

    and-long/2addr v9, v5

    or-long v14, v0, v9

    sget-object v0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v0, v2

    and-long v2, v3, v5

    or-long v16, v0, v2

    const/16 v20, 0x0

    const/16 v21, 0x1f0

    const/16 v19, 0x0

    move-object/from16 v11, p0

    move-wide/from16 v12, p3

    move/from16 v18, p5

    invoke-static/range {v11 .. v21}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/AndroidPathEffect;I)V

    return-void

    :cond_4
    div-float v1, p5, v3

    sub-float/2addr v0, v1

    cmpg-float v3, v9, v1

    if-gez v3, :cond_5

    move v9, v1

    :cond_5
    cmpl-float v3, v9, v0

    if-lez v3, :cond_6

    move v9, v0

    :cond_6
    cmpg-float v3, v8, v1

    if-gez v3, :cond_7

    move v8, v1

    :cond_7
    cmpl-float v1, v8, v0

    if-lez v1, :cond_8

    goto :goto_4

    :cond_8
    move v0, v8

    :goto_4
    sub-float v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_9

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v7, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v9, v1

    shl-long/2addr v7, v2

    and-long/2addr v9, v5

    or-long/2addr v7, v9

    sget-object v1, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v0, v2

    and-long v2, v3, v5

    or-long v5, v0, v2

    const/4 v9, 0x0

    const/16 v10, 0x1e0

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide v3, v7

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/AndroidPathEffect;I)V

    :cond_9
    return-void
.end method
