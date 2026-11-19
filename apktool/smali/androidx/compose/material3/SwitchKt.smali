.class public abstract Landroidx/compose/material3/SwitchKt;
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

.field public static final d:F

.field public static final e:F

.field public static final f:Landroidx/compose/animation/core/SnapSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->a:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget v0, Landroidx/compose/material3/tokens/SwitchTokens;->p:F

    sput v0, Landroidx/compose/material3/SwitchKt;->a:F

    sget v1, Landroidx/compose/material3/tokens/SwitchTokens;->z:F

    sput v1, Landroidx/compose/material3/SwitchKt;->b:F

    sget v1, Landroidx/compose/material3/tokens/SwitchTokens;->w:F

    sput v1, Landroidx/compose/material3/SwitchKt;->c:F

    sget v1, Landroidx/compose/material3/tokens/SwitchTokens;->t:F

    sput v1, Landroidx/compose/material3/SwitchKt;->d:F

    sub-float/2addr v1, v0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    sput v1, Landroidx/compose/material3/SwitchKt;->e:F

    new-instance v0, Landroidx/compose/animation/core/SnapSpec;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/animation/core/SnapSpec;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/SwitchKt;->f:Landroidx/compose/animation/core/SnapSpec;

    return-void
.end method

.method public static final a(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/Composer;II)V
    .locals 50

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v7, p6

    const-string v1, "Switch"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, -0xfb23c9f

    move-object/from16 v4, p5

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    and-int/lit8 v3, v7, 0x6

    move/from16 v9, p0

    if-nez v3, :cond_2

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v7

    goto :goto_1

    :cond_2
    move v3, v7

    :goto_1
    and-int/lit8 v4, v7, 0x30

    if-nez v4, :cond_4

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_2

    :cond_3
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_4
    and-int/lit8 v4, p7, 0x4

    if-eqz v4, :cond_5

    or-int/lit16 v3, v3, 0x180

    goto :goto_4

    :cond_5
    and-int/lit16 v5, v7, 0x180

    if-nez v5, :cond_7

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x100

    goto :goto_3

    :cond_6
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v3, v5

    :cond_7
    :goto_4
    or-int/lit16 v5, v3, 0xc00

    and-int/lit8 v6, p7, 0x10

    if-eqz v6, :cond_9

    or-int/lit16 v5, v3, 0x6c00

    :cond_8
    move/from16 v3, p3

    goto :goto_6

    :cond_9
    and-int/lit16 v3, v7, 0x6000

    if-nez v3, :cond_8

    move/from16 v3, p3

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x4000

    goto :goto_5

    :cond_a
    const/16 v10, 0x2000

    :goto_5
    or-int/2addr v5, v10

    :goto_6
    const/high16 v10, 0x30000

    and-int/2addr v10, v7

    if-nez v10, :cond_d

    and-int/lit8 v10, p7, 0x20

    if-nez v10, :cond_b

    move-object/from16 v10, p4

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/high16 v11, 0x20000

    goto :goto_7

    :cond_b
    move-object/from16 v10, p4

    :cond_c
    const/high16 v11, 0x10000

    :goto_7
    or-int/2addr v5, v11

    goto :goto_8

    :cond_d
    move-object/from16 v10, p4

    :goto_8
    const/high16 v11, 0x180000

    or-int/2addr v5, v11

    const v11, 0x92493

    and-int/2addr v11, v5

    const v12, 0x92492

    const/4 v13, 0x0

    const/4 v15, 0x1

    if-eq v11, v12, :cond_e

    move v11, v15

    goto :goto_9

    :cond_e
    move v11, v13

    :goto_9
    and-int/lit8 v12, v5, 0x1

    invoke-virtual {v14, v12, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v11, v7, 0x1

    const v12, -0x70001

    if-eqz v11, :cond_11

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v4, p7, 0x20

    if-eqz v4, :cond_10

    and-int/2addr v5, v12

    :cond_10
    move-object v8, v0

    move v9, v5

    move-object v11, v10

    move v10, v3

    goto/16 :goto_c

    :cond_11
    :goto_a
    if-eqz v4, :cond_12

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_12
    if-eqz v6, :cond_13

    goto :goto_b

    :cond_13
    move v15, v3

    :goto_b
    and-int/lit8 v3, p7, 0x20

    if-eqz v3, :cond_15

    sget v3, Landroidx/compose/material3/SwitchDefaults;->a:I

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v14}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    iget-object v4, v3, Landroidx/compose/material3/ColorScheme;->g0:Landroidx/compose/material3/SwitchColors;

    iget-wide v10, v3, Landroidx/compose/material3/ColorScheme;->p:J

    if-nez v4, :cond_14

    new-instance v16, Landroidx/compose/material3/SwitchColors;

    sget-object v4, Landroidx/compose/material3/tokens/SwitchTokens;->o:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v17

    sget-object v4, Landroidx/compose/material3/tokens/SwitchTokens;->r:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v19

    sget-object v4, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v21, Landroidx/compose/ui/graphics/Color;->h:J

    sget-object v4, Landroidx/compose/material3/tokens/SwitchTokens;->q:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v23

    sget-object v4, Landroidx/compose/material3/tokens/SwitchTokens;->y:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v25

    sget-object v4, Landroidx/compose/material3/tokens/SwitchTokens;->B:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v27

    sget-object v4, Landroidx/compose/material3/tokens/SwitchTokens;->x:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v29

    sget-object v4, Landroidx/compose/material3/tokens/SwitchTokens;->A:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v31

    sget-object v4, Landroidx/compose/material3/tokens/SwitchTokens;->a:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    sget v4, Landroidx/compose/material3/tokens/SwitchTokens;->b:F

    invoke-static {v4, v8, v9}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v8

    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->f(JJ)J

    move-result-wide v33

    sget-object v4, Landroidx/compose/material3/tokens/SwitchTokens;->e:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    sget v4, Landroidx/compose/material3/tokens/SwitchTokens;->f:F

    invoke-static {v4, v8, v9}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v8

    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->f(JJ)J

    move-result-wide v35

    sget-object v6, Landroidx/compose/material3/tokens/SwitchTokens;->c:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v6}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    sget v6, Landroidx/compose/material3/tokens/SwitchTokens;->d:F

    invoke-static {v6, v8, v9}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v8

    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->f(JJ)J

    move-result-wide v39

    sget-object v6, Landroidx/compose/material3/tokens/SwitchTokens;->g:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v6}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    sget v6, Landroidx/compose/material3/tokens/SwitchTokens;->h:F

    invoke-static {v6, v8, v9}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v8

    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->f(JJ)J

    move-result-wide v41

    sget-object v6, Landroidx/compose/material3/tokens/SwitchTokens;->k:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v6}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v8

    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->f(JJ)J

    move-result-wide v43

    sget-object v6, Landroidx/compose/material3/tokens/SwitchTokens;->l:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v6}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v8

    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->f(JJ)J

    move-result-wide v45

    sget-object v4, Landroidx/compose/material3/tokens/SwitchTokens;->i:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    sget v4, Landroidx/compose/material3/tokens/SwitchTokens;->j:F

    invoke-static {v4, v8, v9}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v8

    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->f(JJ)J

    move-result-wide v47

    const/16 v49, 0x0

    move-wide/from16 v37, v21

    invoke-direct/range {v16 .. v49}, Landroidx/compose/material3/SwitchColors;-><init>(JJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v16

    iput-object v4, v3, Landroidx/compose/material3/ColorScheme;->g0:Landroidx/compose/material3/SwitchColors;

    :cond_14
    and-int/2addr v5, v12

    move-object v10, v4

    :cond_15
    move-object v8, v0

    move v9, v5

    move-object v11, v10

    move v10, v15

    :goto_c
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x696ac19a

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v3, :cond_16

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    move-object v12, v0

    check-cast v12, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-eqz v2, :cond_17

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/material3/InteractiveComponentSizeKt;->a:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    sget-object v1, Landroidx/compose/material3/MinimumInteractiveModifier;->b:Landroidx/compose/material3/MinimumInteractiveModifier;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/semantics/Role;->d:I

    new-instance v5, Landroidx/compose/ui/semantics/Role;

    invoke-direct {v5, v1}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    const/4 v3, 0x0

    move/from16 v1, p0

    move-object v6, v2

    move v4, v10

    move-object v2, v12

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt;->a(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_d

    :cond_17
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-interface {v8, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->w(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget v1, Landroidx/compose/material3/SwitchKt;->c:F

    sget v2, Landroidx/compose/material3/SwitchKt;->d:F

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/material3/tokens/SwitchTokens;->m:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v1, v14}, Landroidx/compose/material3/ShapesKt;->a(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v13

    shl-int/lit8 v1, v9, 0x3

    and-int/lit8 v2, v1, 0x70

    shr-int/lit8 v3, v9, 0x6

    and-int/lit16 v4, v3, 0x380

    or-int/2addr v2, v4

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v2, v3

    const v3, 0xe000

    and-int/2addr v1, v3

    or-int v15, v2, v1

    move-object v9, v8

    move-object v8, v0

    move-object v0, v9

    move/from16 v9, p0

    invoke-static/range {v8 .. v15}, Landroidx/compose/material3/SwitchKt;->b(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/Composer;I)V

    move v4, v10

    move-object v5, v11

    :goto_e
    move-object v3, v0

    goto :goto_f

    :cond_18
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move v4, v3

    move-object v5, v10

    goto :goto_e

    :goto_f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_19

    new-instance v0, Lfb0;

    move/from16 v1, p0

    move-object/from16 v2, p1

    move v6, v7

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lfb0;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    const-string v1, "SwitchImpl"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v8, -0x27fd625d

    move-object/from16 v9, p6

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    iget-object v9, v8, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v10, v7, 0x6

    if-nez v10, :cond_2

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x4

    goto :goto_0

    :cond_1
    const/4 v10, 0x2

    :goto_0
    or-int/2addr v10, v7

    goto :goto_1

    :cond_2
    move v10, v7

    :goto_1
    and-int/lit8 v12, v7, 0x30

    if-nez v12, :cond_4

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x20

    goto :goto_2

    :cond_3
    const/16 v12, 0x10

    :goto_2
    or-int/2addr v10, v12

    :cond_4
    and-int/lit16 v12, v7, 0x180

    if-nez v12, :cond_6

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v12, 0x100

    goto :goto_3

    :cond_5
    const/16 v12, 0x80

    :goto_3
    or-int/2addr v10, v12

    :cond_6
    and-int/lit16 v12, v7, 0xc00

    if-nez v12, :cond_8

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x800

    goto :goto_4

    :cond_7
    const/16 v12, 0x400

    :goto_4
    or-int/2addr v10, v12

    :cond_8
    and-int/lit16 v12, v7, 0x6000

    const/4 v13, 0x0

    if-nez v12, :cond_a

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x4000

    goto :goto_5

    :cond_9
    const/16 v12, 0x2000

    :goto_5
    or-int/2addr v10, v12

    :cond_a
    const/high16 v12, 0x30000

    and-int/2addr v12, v7

    if-nez v12, :cond_c

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/high16 v12, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v12, 0x10000

    :goto_6
    or-int/2addr v10, v12

    :cond_c
    const/high16 v12, 0x180000

    and-int/2addr v12, v7

    if-nez v12, :cond_e

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/high16 v12, 0x100000

    goto :goto_7

    :cond_d
    const/high16 v12, 0x80000

    :goto_7
    or-int/2addr v10, v12

    :cond_e
    const v12, 0x92493

    and-int/2addr v12, v10

    const v14, 0x92492

    const/4 v15, 0x1

    move-object/from16 p0, v13

    if-eq v12, v14, :cond_f

    move v12, v15

    goto :goto_8

    :cond_f
    const/4 v12, 0x0

    :goto_8
    and-int/2addr v10, v15

    invoke-virtual {v8, v10, v12}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_21

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v3, :cond_11

    if-eqz v2, :cond_10

    iget-wide v11, v4, Landroidx/compose/material3/SwitchColors;->b:J

    goto :goto_9

    :cond_10
    iget-wide v11, v4, Landroidx/compose/material3/SwitchColors;->f:J

    goto :goto_9

    :cond_11
    if-eqz v2, :cond_12

    iget-wide v11, v4, Landroidx/compose/material3/SwitchColors;->j:J

    goto :goto_9

    :cond_12
    iget-wide v11, v4, Landroidx/compose/material3/SwitchColors;->n:J

    :goto_9
    if-eqz v3, :cond_14

    if-eqz v2, :cond_13

    iget-wide v13, v4, Landroidx/compose/material3/SwitchColors;->a:J

    goto :goto_a

    :cond_13
    iget-wide v13, v4, Landroidx/compose/material3/SwitchColors;->e:J

    goto :goto_a

    :cond_14
    if-eqz v2, :cond_15

    iget-wide v13, v4, Landroidx/compose/material3/SwitchColors;->i:J

    goto :goto_a

    :cond_15
    iget-wide v13, v4, Landroidx/compose/material3/SwitchColors;->m:J

    :goto_a
    sget-object v10, Landroidx/compose/material3/tokens/SwitchTokens;->v:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v10, v8}, Landroidx/compose/material3/ShapesKt;->a(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v10

    sget v15, Landroidx/compose/material3/tokens/SwitchTokens;->u:F

    if-eqz v3, :cond_17

    if-eqz v2, :cond_16

    iget-wide v6, v4, Landroidx/compose/material3/SwitchColors;->c:J

    goto :goto_b

    :cond_16
    iget-wide v6, v4, Landroidx/compose/material3/SwitchColors;->g:J

    goto :goto_b

    :cond_17
    if-eqz v2, :cond_18

    iget-wide v6, v4, Landroidx/compose/material3/SwitchColors;->k:J

    goto :goto_b

    :cond_18
    iget-wide v6, v4, Landroidx/compose/material3/SwitchColors;->o:J

    :goto_b
    invoke-static {v0, v15, v6, v7, v10}, Landroidx/compose/foundation/BorderKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v6, v11, v12, v10}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v10, 0x0

    invoke-static {v7, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->G()I

    move-result v11

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v8, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v9, :cond_20

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_19

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_19
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_c
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v7, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v12, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    move-object/from16 v16, v0

    iget-boolean v0, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v0, :cond_1a

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_1a
    invoke-static {v11, v8, v11, v12}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_1b
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v6, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    sget-object v6, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v6, v3, v1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v3, Landroidx/compose/material3/ThumbElement;

    sget-object v6, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v6, v8}, Landroidx/compose/material3/MotionSchemeKt;->a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v6

    invoke-direct {v3, v5, v2, v6}, Landroidx/compose/material3/ThumbElement;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;ZLandroidx/compose/animation/core/FiniteAnimationSpec;)V

    invoke-interface {v1, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget v3, Landroidx/compose/material3/tokens/SwitchTokens;->s:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sget-object v6, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    move-object v11, v10

    const/4 v6, 0x4

    const/4 v10, 0x0

    invoke-static {v3, v6, v10}, Landroidx/compose/material3/RippleKt;->a(FIZ)Landroidx/compose/foundation/IndicationNodeFactory;

    move-result-object v3

    invoke-static {v1, v5, v3}, Landroidx/compose/foundation/IndicationKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v6, p5

    invoke-static {v1, v13, v14, v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v3, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->G()I

    move-result v13

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v8, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v9, :cond_1f

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_1c

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_d

    :cond_1c
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_d
    invoke-static {v8, v3, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8, v14, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v3, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v3, :cond_1d

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_1d
    invoke-static {v13, v8, v13, v12}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_1e
    invoke-static {v8, v1, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x49acf3f3

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_1f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p0

    :cond_20
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p0

    :cond_21
    move-object/from16 v16, v0

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_e
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_22

    new-instance v0, Leb;

    move/from16 v3, p2

    move/from16 v7, p7

    move-object/from16 v1, v16

    invoke-direct/range {v0 .. v7}, Leb;-><init>(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_22
    return-void
.end method
