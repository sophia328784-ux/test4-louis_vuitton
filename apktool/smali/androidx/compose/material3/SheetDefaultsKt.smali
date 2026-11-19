.class public abstract Landroidx/compose/material3/SheetDefaultsKt;
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

.field public static final b:Landroidx/compose/animation/core/TweenSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x41b00000    # 22.0f

    sput v0, Landroidx/compose/material3/SheetDefaultsKt;->a:F

    sget-object v0, Landroidx/compose/animation/core/EasingKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    const/4 v1, 0x2

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/SheetDefaultsKt;->b:Landroidx/compose/animation/core/TweenSpec;

    return-void
.end method

.method public static final a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    const v0, 0x3d9bae7c

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    and-int/lit8 p1, p2, 0x13

    const/16 v0, 0x12

    const/4 v1, 0x0

    const/4 v10, 0x1

    if-eq p1, v0, :cond_0

    move p1, v10

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    and-int/lit8 v0, p2, 0x1

    invoke-virtual {v7, v0, p1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget p1, Landroidx/compose/material3/internal/Strings;->a:I

    const p1, 0x7f140bb5

    invoke-static {v7, p1}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "DragHandleWithTooltip"

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v3, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    invoke-virtual {v3, v0, v2}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->G()I

    move-result v2

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v7, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v5, v7, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v5, :cond_4

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v5, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_1

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v3, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    iget-boolean v3, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v3, :cond_2

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-static {v2, v7, v2, v1}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_3
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget v0, Landroidx/compose/material3/TooltipDefaults;->b:F

    sget-object v0, Landroidx/compose/material3/TooltipAnchorPosition;->a:Landroidx/compose/material3/TooltipAnchorPosition$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/material3/TooltipAnchorPosition;->b:I

    invoke-static {v7, v0}, Landroidx/compose/material3/TooltipDefaults;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/window/PopupPositionProvider;

    move-result-object v1

    new-instance v0, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1;

    invoke-direct {v0, p1}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1;-><init>(Ljava/lang/String;)V

    const p1, 0x7ac6d537

    invoke-static {p1, v0, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    invoke-static {v7}, Landroidx/compose/material3/TooltipKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TooltipState;

    move-result-object v3

    const v8, 0x6000030

    const/16 v9, 0xf8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/TooltipKt;->b(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2

    :cond_4
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_5
    move-object v6, p0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_6

    new-instance p1, Lql;

    const/16 v0, 0x1b

    invoke-direct {p1, v6, p2, v0}, Lql;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final b(ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SheetValue;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;
    .locals 14

    move-object/from16 v7, p4

    move/from16 v6, p5

    and-int/lit8 v0, p6, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    and-int/lit8 p0, p6, 0x8

    if-eqz p0, :cond_1

    move v5, v8

    goto :goto_1

    :cond_1
    move/from16 v5, p3

    :goto_1
    sget p0, Landroidx/compose/material3/BottomSheetDefaults;->d:F

    sget v0, Landroidx/compose/material3/BottomSheetDefaults;->e:F

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Density;

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    const v9, 0xe000

    and-int/2addr v9, v6

    xor-int/lit16 v9, v9, 0x6000

    const/16 v10, 0x4000

    const/4 v11, 0x1

    if-le v9, v10, :cond_2

    invoke-interface {v7, p0}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    and-int/lit16 v9, v6, 0x6000

    if-ne v9, v10, :cond_4

    :cond_3
    move v9, v11

    goto :goto_2

    :cond_4
    move v9, v8

    :goto_2
    or-int/2addr v3, v9

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_5

    if-ne v9, v10, :cond_6

    :cond_5
    new-instance v9, Lfw0;

    invoke-direct {v9, v2, p0, v8}, Lfw0;-><init>(Landroidx/compose/ui/unit/Density;FI)V

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p0

    const/high16 v3, 0x70000

    and-int/2addr v3, v6

    const/high16 v12, 0x30000

    xor-int/2addr v3, v12

    const/high16 v13, 0x20000

    if-le v3, v13, :cond_7

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    and-int v3, v6, v12

    if-ne v3, v13, :cond_9

    :cond_8
    move v3, v11

    goto :goto_3

    :cond_9
    move v3, v8

    :goto_3
    or-int/2addr p0, v3

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez p0, :cond_a

    if-ne v3, v10, :cond_b

    :cond_a
    new-instance v3, Lfw0;

    invoke-direct {v3, v2, v0, v11}, Lfw0;-><init>(Landroidx/compose/ui/unit/Density;FI)V

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Landroidx/compose/material3/SheetState;->h:Landroidx/compose/material3/SheetState$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lzt0;

    const/16 v0, 0x12

    invoke-direct {v12, v0}, Lzt0;-><init>(I)V

    new-instance v0, Lxz;

    move-object v4, p1

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Lxz;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)V

    new-instance v9, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v9, v12, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    and-int/lit8 v0, v6, 0xe

    xor-int/lit8 v0, v0, 0x6

    const/4 v12, 0x4

    if-le v0, v12, :cond_c

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    and-int/lit8 v0, v6, 0x6

    if-ne v0, v12, :cond_e

    :cond_d
    move v0, v11

    goto :goto_4

    :cond_e
    move v0, v8

    :goto_4
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v0, v12

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v0, v12

    and-int/lit16 v12, v6, 0x380

    xor-int/lit16 v12, v12, 0x180

    const/16 v13, 0x100

    if-le v12, v13, :cond_f

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v12

    if-nez v12, :cond_10

    :cond_f
    and-int/lit16 v12, v6, 0x180

    if-ne v12, v13, :cond_11

    :cond_10
    move v12, v11

    goto :goto_5

    :cond_11
    move v12, v8

    :goto_5
    or-int/2addr v0, v12

    and-int/lit8 v12, v6, 0x70

    xor-int/lit8 v12, v12, 0x30

    const/16 v13, 0x20

    if-le v12, v13, :cond_12

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    :cond_12
    and-int/lit8 v12, v6, 0x30

    if-ne v12, v13, :cond_14

    :cond_13
    move v12, v11

    goto :goto_6

    :cond_14
    move v12, v8

    :goto_6
    or-int/2addr v0, v12

    and-int/lit16 v12, v6, 0x1c00

    xor-int/lit16 v12, v12, 0xc00

    const/16 v13, 0x800

    if-le v12, v13, :cond_15

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v12

    if-nez v12, :cond_17

    :cond_15
    and-int/lit16 v6, v6, 0xc00

    if-ne v6, v13, :cond_16

    goto :goto_7

    :cond_16
    move v11, v8

    :cond_17
    :goto_7
    or-int/2addr v0, v11

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v0, :cond_18

    if-ne v6, v10, :cond_19

    :cond_18
    new-instance v0, Lgw0;

    move-object/from16 v4, p2

    move v6, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lgw0;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;Z)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v6, v0

    :cond_19
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v9, v6, v7, v8}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/SheetState;

    return-object p0
.end method
