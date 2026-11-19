.class public abstract Landroidx/compose/material3/TooltipKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u00a8\u0006\u0003\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "scale",
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

.field public static final c:F

.field public static final d:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Landroidx/compose/material3/TooltipKt;->a:F

    const/high16 v1, 0x41c00000    # 24.0f

    sput v1, Landroidx/compose/material3/TooltipKt;->b:F

    const/high16 v1, 0x42200000    # 40.0f

    sput v1, Landroidx/compose/material3/TooltipKt;->c:F

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/PaddingKt;->b(FF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/TooltipKt;->d:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    return-void
.end method

.method public static final a(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p8

    move/from16 v10, p10

    const-string v2, "PlainTooltip-gv3ox5I"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, -0x147d586e

    move-object/from16 v4, p9

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    and-int/lit8 v4, v10, 0x6

    if-nez v4, :cond_3

    and-int/lit8 v4, v10, 0x8

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    :goto_1
    or-int/2addr v4, v10

    goto :goto_2

    :cond_3
    move v4, v10

    :goto_2
    or-int/lit16 v5, v4, 0xdb0

    and-int/lit16 v6, v10, 0x6000

    if-nez v6, :cond_4

    or-int/lit16 v5, v4, 0x2db0

    :cond_4
    const/high16 v4, 0x30000

    and-int/2addr v4, v10

    if-nez v4, :cond_5

    const/high16 v4, 0x10000

    or-int/2addr v5, v4

    :cond_5
    const/high16 v4, 0x180000

    and-int/2addr v4, v10

    if-nez v4, :cond_6

    const/high16 v4, 0x80000

    or-int/2addr v5, v4

    :cond_6
    const/high16 v4, 0x6c00000

    or-int/2addr v4, v5

    const/high16 v5, 0x30000000

    and-int/2addr v5, v10

    if-nez v5, :cond_8

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/high16 v5, 0x20000000

    goto :goto_3

    :cond_7
    const/high16 v5, 0x10000000

    :goto_3
    or-int/2addr v4, v5

    :cond_8
    const v5, 0x12492493

    and-int/2addr v5, v4

    const v6, 0x12492492

    const/4 v7, 0x0

    if-eq v5, v6, :cond_9

    const/4 v5, 0x1

    goto :goto_4

    :cond_9
    move v5, v7

    :goto_4
    and-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v5, v10, 0x1

    const v6, -0x3fe001

    if-eqz v5, :cond_b

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int v2, v4, v6

    move-object/from16 v12, p3

    move-wide/from16 v4, p4

    move-wide/from16 v13, p6

    move-object v11, v0

    move v0, v2

    move/from16 v2, p2

    goto :goto_6

    :cond_b
    :goto_5
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget v2, Landroidx/compose/material3/TooltipDefaults;->b:F

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/compose/material3/tokens/PlainTooltipTokens;->b:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v5, v3}, Landroidx/compose/material3/ShapesKt;->a(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v5

    sget-object v8, Landroidx/compose/material3/tokens/PlainTooltipTokens;->c:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v8, v3}, Landroidx/compose/material3/ColorSchemeKt;->d(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v11

    sget-object v8, Landroidx/compose/material3/tokens/PlainTooltipTokens;->a:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v8, v3}, Landroidx/compose/material3/ColorSchemeKt;->d(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v13

    and-int/2addr v4, v6

    sget-object v6, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    move-wide/from16 v23, v11

    move-object v11, v0

    move v0, v4

    move-object v12, v5

    move-wide/from16 v4, v23

    :goto_6
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v6, -0x66828db7

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v6, Landroidx/compose/material3/TooltipKt$PlainTooltip$4;

    invoke-direct {v6, v2, v4, v5, v9}, Landroidx/compose/material3/TooltipKt$PlainTooltip$4;-><init>(FJLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v7, -0x5dd15193

    invoke-static {v7, v6, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v19

    shr-int/lit8 v0, v0, 0x9

    const v6, 0xe000

    and-int/2addr v6, v0

    const/high16 v7, 0xc00000

    or-int/2addr v6, v7

    const/high16 v7, 0x70000

    and-int/2addr v0, v7

    or-int v21, v6, v0

    const/16 v22, 0x48

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v20, v3

    invoke-static/range {v11 .. v22}, Landroidx/compose/material3/SurfaceKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move v3, v2

    move-wide v5, v4

    move-object v2, v11

    move-object v4, v12

    move-wide v7, v13

    goto :goto_7

    :cond_c
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object v2, v0

    :goto_7
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_d

    new-instance v0, Lg41;

    invoke-direct/range {v0 .. v10}, Lg41;-><init>(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void
.end method

.method public static final b(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 12

    move-object/from16 v7, p5

    move/from16 v8, p7

    const-string v1, "TooltipBox"

    if-eqz p3, :cond_0

    invoke-static {p3, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    const v3, -0x11825480

    move-object/from16 v4, p6

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    and-int/lit8 v3, v8, 0x6

    if-nez v3, :cond_2

    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    or-int/2addr v3, v8

    goto :goto_2

    :cond_2
    move v3, v8

    :goto_2
    and-int/lit8 v4, v8, 0x30

    if-nez v4, :cond_4

    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_3

    :cond_3
    const/16 v4, 0x10

    :goto_3
    or-int/2addr v3, v4

    :cond_4
    and-int/lit16 v4, v8, 0x180

    if-nez v4, :cond_7

    and-int/lit16 v4, v8, 0x200

    if-nez v4, :cond_5

    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_4

    :cond_5
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    :goto_4
    if-eqz v4, :cond_6

    const/16 v4, 0x100

    goto :goto_5

    :cond_6
    const/16 v4, 0x80

    :goto_5
    or-int/2addr v3, v4

    :cond_7
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_8

    or-int/lit16 v3, v3, 0xc00

    goto :goto_7

    :cond_8
    and-int/lit16 v6, v8, 0xc00

    if-nez v6, :cond_a

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x800

    goto :goto_6

    :cond_9
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v3, v6

    :cond_a
    :goto_7
    const v6, 0xdb6000

    or-int/2addr v3, v6

    const/high16 v6, 0x6000000

    and-int/2addr v6, v8

    if-nez v6, :cond_c

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/high16 v6, 0x4000000

    goto :goto_8

    :cond_b
    const/high16 v6, 0x2000000

    :goto_8
    or-int/2addr v3, v6

    :cond_c
    const v6, 0x2492493

    and-int/2addr v6, v3

    const v9, 0x2492492

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v6, v9, :cond_d

    move v6, v11

    goto :goto_9

    :cond_d
    move v6, v10

    :goto_9
    and-int/lit8 v9, v3, 0x1

    invoke-virtual {v5, v9, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_11

    if-eqz v4, :cond_e

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_e
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p2}, Landroidx/compose/material3/TooltipState;->a()Landroidx/compose/animation/core/MutableTransitionState;

    move-result-object v1

    const-string v4, "tooltip transition"

    const/16 v6, 0x30

    invoke-static {v1, v4, v5, v6, v10}, Landroidx/compose/animation/core/TransitionKt;->e(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v1

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v6, :cond_f

    const/4 v4, 0x0

    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v4, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v6, :cond_10

    new-instance v9, Landroidx/compose/material3/TooltipScopeImpl;

    new-instance v6, Lv11;

    const/4 v10, 0x5

    invoke-direct {v6, v10, v4}, Lv11;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-direct {v9, v6, p0}, Landroidx/compose/material3/TooltipScopeImpl;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupPositionProvider;)V

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v9, Landroidx/compose/material3/TooltipScopeImpl;

    new-instance v6, Landroidx/compose/material3/TooltipKt$TooltipBox$wrappedContent$1;

    invoke-direct {v6, v4, v7}, Landroidx/compose/material3/TooltipKt$TooltipBox$wrappedContent$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v4, -0x16cb6ae

    invoke-static {v4, v6, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    new-instance v6, Landroidx/compose/material3/TooltipKt$TooltipBox$3;

    invoke-direct {v6, v1, p1, v9}, Landroidx/compose/material3/TooltipKt$TooltipBox$3;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/TooltipScopeImpl;)V

    const v1, -0x1f6f824a

    invoke-static {v1, v6, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    and-int/lit8 v6, v3, 0xe

    const v9, 0x6000030

    or-int/2addr v6, v9

    and-int/lit16 v9, v3, 0x380

    or-int/2addr v6, v9

    and-int/lit16 v9, v3, 0x1c00

    or-int/2addr v6, v9

    const v9, 0xe000

    and-int/2addr v9, v3

    or-int/2addr v6, v9

    const/high16 v9, 0x70000

    and-int/2addr v9, v3

    or-int/2addr v6, v9

    const/high16 v9, 0x380000

    and-int/2addr v9, v3

    or-int/2addr v6, v9

    const/high16 v9, 0x1c00000

    and-int/2addr v3, v9

    or-int/2addr v6, v3

    move-object v2, p2

    move-object v3, v0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/internal/BasicTooltipKt;->a(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    move-object v4, v3

    goto :goto_a

    :cond_11
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v11, p4

    move-object v4, v0

    :goto_a
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_12

    new-instance v0, Lrp;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v7

    move v7, v8

    move v5, v11

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lrp;-><init>(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static final c(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TooltipState;
    .locals 4

    sget-object v0, Landroidx/compose/material3/internal/BasicTooltipDefaults;->a:Landroidx/compose/foundation/MutatorMutex;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v2

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v2, :cond_1

    :cond_0
    new-instance v3, Landroidx/compose/material3/TooltipStateImpl;

    invoke-direct {v3, v1, v1, v0}, Landroidx/compose/material3/TooltipStateImpl;-><init>(ZZLandroidx/compose/foundation/MutatorMutex;)V

    invoke-interface {p0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v3, Landroidx/compose/material3/TooltipStateImpl;

    return-object v3
.end method
