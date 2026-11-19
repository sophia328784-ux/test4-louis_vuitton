.class public abstract Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVHeaderTopBarKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVHeaderTopBarKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "stateAnimationFraction",
        "system"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
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

    const/high16 v0, 0x42800000    # 64.0f

    sput v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVHeaderTopBarKt;->a:F

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFLandroidx/compose/runtime/Composer;II)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "LVHeaderTopBar"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x5aba6f8

    move-object/from16 v3, p7

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, p9, 0x1

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v5, p8, 0x6

    :goto_0
    move-object/from16 v8, p1

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    or-int v5, p8, v5

    goto :goto_0

    :goto_2
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_3

    :cond_3
    const/16 v6, 0x10

    :goto_3
    or-int/2addr v5, v6

    const v6, 0x4b6400

    or-int/2addr v5, v6

    const v6, 0x492493

    and-int/2addr v6, v5

    const v7, 0x492492

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v6, v7, :cond_4

    move v6, v10

    goto :goto_4

    :cond_4
    move v6, v9

    :goto_4
    and-int/2addr v5, v10

    invoke-virtual {v2, v5, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v5, p8, 0x1

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v11, p3

    move-object/from16 v16, p4

    move/from16 v5, p5

    move-object v7, v0

    move/from16 v0, p6

    goto :goto_6

    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_7
    invoke-static {v2}, Landroidx/compose/material3/TopAppBarDefaults;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v1

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->g:F

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->c:F

    move-object v7, v0

    move-object v11, v1

    move-object/from16 v16, v3

    move v0, v6

    :goto_6
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVHeaderTopBarKt$WhenMappings;->a:[I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v1, v3

    if-eq v3, v10, :cond_9

    if-ne v3, v4, :cond_8

    const v3, -0x495d70ab

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->f:J

    new-instance v3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v3, v12, v13}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    new-instance v6, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v6, v12, v13}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_8
    const v0, -0x495d8861

    invoke-static {v2, v0, v9}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_9
    const v3, -0x495d8277

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    new-instance v3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v3, v12, v13}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    new-instance v6, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v6, v12, v13}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_7
    iget-object v3, v12, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    iget-wide v13, v3, Landroidx/compose/ui/graphics/Color;->a:J

    iget-object v3, v12, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    move/from16 p3, v5

    iget-wide v4, v3, Landroidx/compose/ui/graphics/Color;->a:J

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v10, :cond_b

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    const v1, -0x495d4fda

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/RippleKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/RippleConfiguration;

    move-result-object v1

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_a
    const v0, -0x495d5e1e

    invoke-static {v2, v0, v9}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_b
    const v1, -0x495d57d9

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/RippleKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/RippleConfiguration;

    move-result-object v1

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_8
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/Density;

    sget v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVHeaderTopBarKt;->a:F

    invoke-interface {v3, v6}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v6, :cond_c

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v10, v6, :cond_d

    :cond_c
    new-instance v6, La60;

    invoke-direct {v6, v3}, La60;-><init>(F)V

    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v10, Landroidx/compose/runtime/State;

    const v3, 0x1dc34b48

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v3

    iget v10, v3, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->a:F

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v3, Landroidx/compose/material3/RippleKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    new-instance v6, Lb60;

    move-wide/from16 v17, v13

    move-object v13, v8

    move-wide/from16 v8, v17

    move-object/from16 v12, p2

    move-wide v14, v4

    invoke-direct/range {v6 .. v16}, Lb60;-><init>(Landroidx/compose/ui/Modifier;JFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function4;Ljava/lang/String;JLcom/vuitton/android/designkit/ui/theme/LVColorScheme;)V

    const v3, 0x19d3fdc8

    invoke-static {v3, v6, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    const/16 v4, 0x38

    invoke-static {v1, v3, v2, v4}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move/from16 v12, p3

    move v13, v0

    move-object v10, v11

    move-object/from16 v11, v16

    goto :goto_9

    :cond_e
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object v7, v0

    :goto_9
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v6, Lc60;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v14, p8

    move/from16 v15, p9

    invoke-direct/range {v6 .. v15}, Lc60;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFII)V

    iput-object v6, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method
