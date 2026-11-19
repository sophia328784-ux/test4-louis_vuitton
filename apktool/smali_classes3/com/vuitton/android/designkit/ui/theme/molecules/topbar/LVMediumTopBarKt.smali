.class public abstract Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u00a8\u0006\u0006\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0004\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/Color;",
        "animatedBackgroundColor",
        "",
        "pinnedHeightPx",
        "collapsibleHeightPx",
        "maxHeightPx",
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
.field public static final a:Landroidx/compose/animation/core/CubicBezierEasing;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const/4 v1, 0x0

    const v2, 0x3e19999a    # 0.15f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v1, v3, v2}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V
    .locals 41

    move-object/from16 v0, p0

    move/from16 v9, p9

    move/from16 v10, p10

    const-string v1, "LVMediumTopBar"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x5c39a3c3

    move-object/from16 v3, p8

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    or-int/lit8 v2, v9, 0x6

    and-int/lit8 v3, v10, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v9, 0x36

    goto :goto_2

    :cond_1
    and-int/lit8 v5, v9, 0x30

    if-nez v5, :cond_4

    if-nez p1, :cond_2

    const/4 v5, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    :goto_0
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_1

    :cond_3
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v2, v5

    :cond_4
    :goto_2
    and-int/lit16 v5, v9, 0x180

    if-nez v5, :cond_6

    move-object/from16 v5, p2

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x100

    goto :goto_3

    :cond_5
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v2, v6

    goto :goto_4

    :cond_6
    move-object/from16 v5, p2

    :goto_4
    and-int/lit8 v6, v10, 0x8

    if-eqz v6, :cond_8

    or-int/lit16 v2, v2, 0xc00

    :cond_7
    move-object/from16 v7, p3

    goto :goto_6

    :cond_8
    and-int/lit16 v7, v9, 0xc00

    if-nez v7, :cond_7

    move-object/from16 v7, p3

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x800

    goto :goto_5

    :cond_9
    const/16 v8, 0x400

    :goto_5
    or-int/2addr v2, v8

    :goto_6
    and-int/lit16 v8, v9, 0x6000

    if-nez v8, :cond_b

    move-object/from16 v8, p4

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x4000

    goto :goto_7

    :cond_a
    const/16 v11, 0x2000

    :goto_7
    or-int/2addr v2, v11

    goto :goto_8

    :cond_b
    move-object/from16 v8, p4

    :goto_8
    and-int/lit8 v11, v10, 0x20

    const/high16 v12, 0x30000

    if-eqz v11, :cond_d

    or-int/2addr v2, v12

    :cond_c
    move-object/from16 v12, p5

    goto :goto_a

    :cond_d
    and-int/2addr v12, v9

    if-nez v12, :cond_c

    move-object/from16 v12, p5

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/high16 v13, 0x20000

    goto :goto_9

    :cond_e
    const/high16 v13, 0x10000

    :goto_9
    or-int/2addr v2, v13

    :goto_a
    const/high16 v13, 0x80000

    or-int/2addr v13, v2

    and-int/lit16 v14, v10, 0x80

    if-eqz v14, :cond_f

    const/high16 v13, 0xc80000

    or-int/2addr v2, v13

    move v13, v2

    move-object/from16 v2, p7

    goto :goto_c

    :cond_f
    move-object/from16 v2, p7

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x800000

    goto :goto_b

    :cond_10
    const/high16 v16, 0x400000

    :goto_b
    or-int v13, v13, v16

    :goto_c
    const v16, 0x492493

    and-int v4, v13, v16

    move-object/from16 v16, v0

    const v0, 0x492492

    const/4 v2, 0x0

    if-eq v4, v0, :cond_11

    const/4 v0, 0x1

    goto :goto_d

    :cond_11
    move v0, v2

    :goto_d
    and-int/lit8 v4, v13, 0x1

    invoke-virtual {v15, v4, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v9, 0x1

    const v17, -0x380001

    if-eqz v0, :cond_14

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_e

    :cond_12
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int v0, v13, v17

    move-object/from16 v30, p1

    move-object/from16 v21, p6

    move v3, v0

    move-object/from16 v26, v7

    move-object/from16 v29, v12

    move-object/from16 v6, v16

    :cond_13
    move-object/from16 v0, p7

    goto :goto_11

    :cond_14
    :goto_e
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_15

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_f

    :cond_15
    move-object/from16 v3, p1

    :goto_f
    if-eqz v6, :cond_16

    const/4 v7, 0x0

    :cond_16
    if-eqz v11, :cond_17

    sget-object v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/ComposableSingletons$LVMediumTopBarKt;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/ComposableSingletons$LVMediumTopBarKt;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/ComposableSingletons$LVMediumTopBarKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_10

    :cond_17
    move-object v6, v12

    :goto_10
    invoke-static {v15}, Landroidx/compose/material3/TopAppBarDefaults;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v11

    and-int v12, v13, v17

    move-object/from16 v30, v3

    move-object/from16 v29, v6

    move-object/from16 v26, v7

    move-object/from16 v21, v11

    move v3, v12

    move-object v6, v0

    if-eqz v14, :cond_13

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$WhenMappings;->a:[I

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v7, v7, v11

    const/4 v11, 0x1

    if-eq v7, v11, :cond_19

    const/4 v12, 0x2

    if-ne v7, v12, :cond_18

    const v7, -0x674eb3b2

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v31, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->f:J

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-wide/from16 v32, v12

    iget-wide v11, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v13, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->n:J

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/RippleKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/RippleConfiguration;

    move-result-object v38

    const/16 v39, 0x0

    move-wide/from16 v34, v11

    move-wide/from16 v36, v13

    invoke-direct/range {v31 .. v39}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;-><init>(JJJLandroidx/compose/material3/RippleConfiguration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    move-object/from16 v4, v31

    goto :goto_13

    :cond_18
    const v0, -0x674ee309

    invoke-static {v15, v0, v2}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_19
    const v7, -0x674ede63

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v31, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v11, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v13, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/RippleKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/RippleConfiguration;

    move-result-object v38

    const/16 v39, 0x0

    move-wide/from16 v36, v4

    move-wide/from16 v32, v11

    move-wide/from16 v34, v13

    invoke-direct/range {v31 .. v39}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;-><init>(JJJLandroidx/compose/material3/RippleConfiguration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :goto_13
    const/high16 v5, 0x43c80000    # 400.0f

    const/4 v7, 0x5

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v5, v7, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v13

    const/16 v16, 0x1b0

    const/16 v17, 0x8

    move v5, v11

    iget-wide v11, v4, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->a:J

    const-string v14, ""

    const/16 v18, 0x1

    invoke-static/range {v11 .. v17}, Landroidx/compose/animation/SingleValueAnimationKt;->b(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v31

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object v7

    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Landroidx/compose/material3/TopAppBarState;->a()F

    move-result v11

    goto :goto_14

    :cond_1a
    move v11, v5

    :goto_14
    sget-object v7, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-virtual {v7, v11}, Landroidx/compose/animation/core/CubicBezierEasing;->a(F)F

    move-result v27

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v12, :cond_1b

    new-instance v11, Lk40;

    const/16 v13, 0x15

    invoke-direct {v11, v13}, Lk40;-><init>(I)V

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v11, Lkotlin/jvm/functions/Function0;

    const/16 v13, 0x30

    invoke-static {v7, v11, v15, v13}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/MutableFloatState;

    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v12, :cond_1c

    new-instance v14, Lk40;

    const/16 v5, 0x16

    invoke-direct {v14, v5}, Lk40;-><init>(I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-static {v11, v14, v15, v13}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/MutableFloatState;

    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v12, :cond_1d

    new-instance v14, Lk40;

    const/16 v2, 0x17

    invoke-direct {v14, v2}, Lk40;-><init>(I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-static {v11, v14, v15, v13}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/MutableFloatState;

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v11, v13

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v11, v13

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_1e

    if-ne v13, v12, :cond_1f

    :cond_1e
    new-instance v13, Lpp;

    const/16 v11, 0x10

    invoke-direct {v13, v7, v5, v2, v11}, Lpp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-static {v13, v15}, Landroidx/compose/runtime/EffectsKt;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    const/high16 v11, 0x1c00000

    and-int/2addr v3, v11

    const/high16 v11, 0x800000

    if-ne v3, v11, :cond_20

    move/from16 v11, v18

    goto :goto_15

    :cond_20
    const/4 v11, 0x0

    :goto_15
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v11, v13

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v11, v13

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_21

    if-ne v13, v12, :cond_22

    :cond_21
    new-instance v13, Lpp;

    const/16 v11, 0x11

    invoke-direct {v13, v0, v7, v2, v11}, Lpp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-static {v13, v15}, Landroidx/compose/runtime/EffectsKt;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    new-instance v11, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    sget-object v13, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/unit/Density;

    invoke-interface {v2}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v2

    invoke-interface {v7}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v14

    sub-float/2addr v2, v14

    if-eqz v0, :cond_23

    invoke-interface {v0}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object v14

    if-eqz v14, :cond_23

    invoke-virtual {v14}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result v14

    goto :goto_16

    :cond_23
    const/4 v14, 0x0

    :goto_16
    add-float/2addr v2, v14

    invoke-interface {v13, v2}, Landroidx/compose/ui/unit/Density;->l1(F)F

    move-result v2

    iput v2, v11, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    if-eqz v0, :cond_2a

    const v1, -0x577a01dd

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v34, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/high16 v1, 0x800000

    if-ne v3, v1, :cond_24

    move/from16 v1, v18

    goto :goto_17

    :cond_24
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_25

    if-ne v2, v12, :cond_26

    :cond_25
    new-instance v2, Ll00;

    const/16 v1, 0xf

    invoke-direct {v2, v0, v1}, Ll00;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_26
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v2}, Landroidx/compose/foundation/gestures/DraggableKt;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object v33

    const/high16 v1, 0x800000

    if-ne v3, v1, :cond_27

    move/from16 v2, v18

    goto :goto_18

    :cond_27
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v2, :cond_28

    if-ne v1, v12, :cond_29

    :cond_28
    new-instance v1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1;

    const/4 v12, 0x0

    invoke-direct {v1, v0, v12}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1;-><init>(Landroidx/compose/material3/TopAppBarScrollBehavior;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_29
    move-object/from16 v38, v1

    check-cast v38, Lkotlin/jvm/functions/Function3;

    const/16 v39, 0x0

    const/16 v40, 0xbc

    sget-object v32, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v32 .. v40}, Landroidx/compose/foundation/gestures/DraggableKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_19
    move-object/from16 v18, v1

    goto :goto_1a

    :cond_2a
    const/4 v2, 0x0

    const v3, -0x5772bf13

    invoke-static {v15, v3, v2, v1}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    goto :goto_19

    :goto_1a
    sget-object v1, Landroidx/compose/material3/RippleKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    iget-object v2, v4, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->d:Landroidx/compose/material3/RippleConfiguration;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    new-instance v16, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;

    move-object/from16 v25, p2

    move-object/from16 v22, v0

    move-object/from16 v20, v4

    move-object/from16 v24, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v28, v8

    move-object/from16 v23, v11

    invoke-direct/range {v16 .. v31}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableFloatState;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarScrollBehavior;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/runtime/MutableFloatState;Ljava/lang/String;Ljava/lang/String;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/State;)V

    move-object/from16 v0, v16

    const v2, -0x3debc083    # -37.062f

    invoke-static {v2, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v2, 0x38

    invoke-static {v1, v0, v15, v2}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v1, v17

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v4, v26

    move-object/from16 v6, v29

    move-object/from16 v2, v30

    goto :goto_1b

    :cond_2b
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v2, p1

    move-object/from16 v8, p7

    move-object v4, v7

    move-object v6, v12

    move-object/from16 v1, v16

    move-object/from16 v7, p6

    :goto_1b
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_2c

    new-instance v0, Lsd;

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v10}, Lsd;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarScrollBehavior;II)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2c
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JJLandroidx/compose/runtime/Composer;I)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    const-string v1, "TopBarCollapsibleTitle-ZkgLGzA"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0xa523949

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int v2, p8, v2

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_1

    :cond_2
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v2, v5

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x100

    goto :goto_2

    :cond_3
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v2, v5

    move-wide/from16 v11, p3

    invoke-virtual {v0, v11, v12}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x800

    goto :goto_3

    :cond_4
    const/16 v5, 0x400

    :goto_3
    or-int/2addr v2, v5

    move-wide/from16 v13, p5

    invoke-virtual {v0, v13, v14}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x4000

    goto :goto_4

    :cond_5
    const/16 v5, 0x2000

    :goto_4
    or-int/2addr v2, v5

    and-int/lit16 v5, v2, 0x2493

    const/16 v6, 0x2492

    const/4 v15, 0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_6

    move v5, v15

    goto :goto_5

    :cond_6
    move v5, v7

    :goto_5
    and-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v8, 0x0

    const/16 v9, 0xa

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x0

    move/from16 v16, v7

    move v7, v5

    move/from16 v10, v16

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    move-object/from16 v28, v4

    move v4, v5

    invoke-static {v6}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v6, v7, v0, v10}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v6

    iget-wide v7, v0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v0, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v4, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v4, :cond_7

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_6
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v8, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v4, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    const-string v6, "header_title_text"

    invoke-static {v0, v5, v4, v1, v6}, Ln00;->f(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v6, :cond_8

    new-instance v5, Lx20;

    const/16 v6, 0x1c

    invoke-direct {v5, v6}, Lx20;-><init>(I)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v10, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->e:Landroidx/compose/ui/text/TextStyle;

    sget-object v5, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v18, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    shr-int/lit8 v5, v2, 0x3

    and-int/lit16 v5, v5, 0x38e

    const/16 v26, 0x6180

    const v27, 0x1aff8

    move/from16 v16, v10

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move v7, v15

    const/4 v15, 0x0

    move/from16 v8, v16

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v24, v0

    move-object/from16 v23, v4

    move/from16 v25, v5

    move v0, v7

    move v4, v8

    move-object/from16 v5, p1

    move-wide/from16 v7, p3

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move/from16 v13, v18

    move-object/from16 v5, v24

    if-nez v3, :cond_9

    const v2, -0x5b35812e

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v29, v1

    goto :goto_7

    :cond_9
    const v6, -0x5b35812d

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const-string v6, "header_subtitle_text"

    invoke-static {v1, v6}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    shr-int/lit8 v2, v2, 0x6

    and-int/lit16 v2, v2, 0x380

    const/16 v21, 0x6180

    const v22, 0x1aff8

    move/from16 v16, v4

    move-object/from16 v24, v5

    const-wide/16 v4, 0x0

    move-object v8, v1

    move-object v1, v6

    const/4 v6, 0x0

    move-object/from16 v18, v7

    move-object v9, v8

    const-wide/16 v7, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v14, v11

    const-wide/16 v11, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x1

    move/from16 v19, v16

    const/16 v16, 0x0

    move-object/from16 v20, v17

    const/16 v17, 0x0

    move-object v0, v3

    move-object/from16 v29, v20

    move-object/from16 v19, v24

    move/from16 v20, v2

    move-wide/from16 v2, p5

    invoke-static/range {v0 .. v22}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v5, v19

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_7
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v8, v29

    invoke-direct {v0, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v5, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_b
    move-object v5, v0

    move-object/from16 v28, v4

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_c

    new-instance v0, Ll60;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p8

    move-object/from16 v1, v28

    invoke-direct/range {v0 .. v8}, Ll60;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JJI)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method

.method public static final c(Landroidx/compose/material3/TopAppBarState;FLandroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p4, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;

    iget v1, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->g:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;

    invoke-direct {v0, p4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p4, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->f:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    iget p1, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->e:F

    iget-object p0, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object p3, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->c:Landroidx/compose/animation/core/AnimationSpec;

    iget-object p2, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->b:Landroidx/compose/material3/TopAppBarState;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p4, p0

    move-object p0, p2

    goto :goto_2

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->a()F

    move-result p4

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float p4, p4, v1

    if-ltz p4, :cond_9

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->a()F

    move-result p4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p4, p4, v1

    if-nez p4, :cond_4

    goto/16 :goto_7

    :cond_4
    new-instance p4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iput p1, p4, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    if-eqz p2, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v1, v5, v1

    if-lez v1, :cond_5

    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/16 v5, 0x1c

    invoke-static {v8, p1, v5}, Landroidx/compose/animation/core/AnimationStateKt;->a(FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object v5

    new-instance v7, Lv6;

    invoke-direct {v7, v1, p0, p4, v3}, Lv6;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/internal/Ref$FloatRef;I)V

    iput-object p0, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->b:Landroidx/compose/material3/TopAppBarState;

    iput-object p3, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->c:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p4, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p1, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->e:F

    iput v3, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->g:I

    const/4 v1, 0x0

    invoke-static {v5, p2, v1, v7, v6}, Landroidx/compose/animation/core/SuspendAnimationKt;->e(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_5

    goto :goto_5

    :cond_5
    :goto_2
    move-object v3, p3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result p2

    cmpg-float p2, p2, v8

    if-gez p2, :cond_8

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result p2

    iget p3, p0, Landroidx/compose/material3/TopAppBarState;->a:F

    cmpl-float p2, p2, p3

    if-lez p2, :cond_8

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result p2

    const/16 p3, 0x1e

    invoke-static {p2, v8, p3}, Landroidx/compose/animation/core/AnimationStateKt;->a(FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->a()F

    move-result p2

    const/high16 p3, 0x3f000000    # 0.5f

    cmpg-float p2, p2, p3

    if-gez p2, :cond_6

    move p2, v8

    :goto_3
    move p3, v2

    goto :goto_4

    :cond_6
    iget p2, p0, Landroidx/compose/material3/TopAppBarState;->a:F

    goto :goto_3

    :goto_4
    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p2}, Ljava/lang/Float;-><init>(F)V

    new-instance v5, Lw6;

    invoke-direct {v5, p0, p3}, Lw6;-><init>(Landroidx/compose/material3/TopAppBarState;I)V

    iput-object v4, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->b:Landroidx/compose/material3/TopAppBarState;

    iput-object v4, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->c:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p4, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p1, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->e:F

    iput p3, v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->g:I

    const/4 v4, 0x0

    const/4 v7, 0x4

    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/core/SuspendAnimationKt;->g(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Float;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    :goto_5
    return-object v0

    :cond_7
    move-object p0, p4

    :goto_6
    move-object p4, p0

    :cond_8
    iget p0, p4, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    invoke-static {v8, p0}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    move-result-wide p0

    new-instance p2, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {p2, p0, p1}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    return-object p2

    :cond_9
    :goto_7
    sget-object p0, Landroidx/compose/ui/unit/Velocity;->b:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/compose/ui/unit/Velocity;

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    return-object p0
.end method
