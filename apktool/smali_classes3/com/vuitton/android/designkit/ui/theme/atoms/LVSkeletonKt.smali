.class public abstract Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeletonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeletonKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/Color;",
        "colour",
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
.field public static final a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc70;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lc70;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeletonKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    if-eqz p0, :cond_0

    const-string v0, "LVSkeletonBody"

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    move-object v1, p0

    const p0, 0x4a9e4cc6    # 5187171.0f

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p0

    and-int/lit8 p3, p4, 0x6

    if-nez p3, :cond_2

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x4

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    :goto_0
    or-int/2addr p3, p4

    goto :goto_1

    :cond_2
    move p3, p4

    :goto_1
    or-int/lit16 p3, p3, 0xb0

    and-int/lit16 v0, p3, 0x93

    const/16 v2, 0x92

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    and-int/2addr p3, v4

    invoke-virtual {p0, p3, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_4

    :cond_5
    :goto_3
    sget-object p1, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    const-string p2, ""

    invoke-static {v3, p0, p2}, Landroidx/compose/animation/core/InfiniteTransitionKt;->c(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object p2

    :goto_4
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object p3

    iget-object p3, p3, Lcom/vuitton/android/designkit/ui/theme/LVShape;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v1, p3}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p3

    invoke-static {p0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->h:F

    invoke-static {p3, v0}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p3

    const/16 v0, 0x230

    invoke-static {p3, p1, p2, p0, v0}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeletonKt;->d(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/Composer;I)V

    :goto_5
    move-object v2, p1

    move-object v3, p2

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_5

    :goto_6
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_7

    new-instance v0, Lm70;

    const/4 v5, 0x0

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lm70;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;II)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/Composer;II)V
    .locals 7

    if-eqz p0, :cond_0

    const-string v0, "LVSkeletonContent"

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    move-object v1, p0

    const p0, -0x697cfc7

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x4

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    :goto_0
    or-int/2addr p3, p4

    or-int/lit8 p3, p3, 0x30

    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_3

    and-int/lit16 v0, p4, 0x200

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    const/16 v0, 0x100

    goto :goto_2

    :cond_3
    const/16 v0, 0x80

    :goto_2
    or-int/2addr p3, v0

    and-int/lit16 v0, p3, 0x93

    const/16 v2, 0x92

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    and-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_7

    :goto_4
    and-int/lit16 p3, p3, -0x381

    goto :goto_6

    :cond_6
    :goto_5
    sget-object p1, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_7

    const-string p2, ""

    invoke-static {v3, p0, p2}, Landroidx/compose/animation/core/InfiniteTransitionKt;->c(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object p2

    goto :goto_4

    :cond_7
    :goto_6
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v0, p3, 0x7e

    or-int/lit16 v0, v0, 0x200

    and-int/lit16 p3, p3, 0x380

    or-int/2addr p3, v0

    invoke-static {v1, p1, p2, p0, p3}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeletonKt;->d(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/Composer;I)V

    :goto_7
    move-object v2, p1

    move-object v3, p2

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_7

    :goto_8
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_9

    new-instance v0, Ln70;

    const/4 v6, 0x1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ln70;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;III)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/Composer;II)V
    .locals 9

    const-string v0, "LVSkeletonImage"

    if-eqz p0, :cond_0

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    const v1, 0x6962a827

    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p4

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_1

    or-int/lit8 v2, p5, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v2, p5, 0x6

    if-nez v2, :cond_3

    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, p5

    goto :goto_1

    :cond_3
    move v2, p5

    :goto_1
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x30

    goto :goto_3

    :cond_4
    and-int/lit8 v4, p5, 0x30

    if-nez v4, :cond_6

    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    goto :goto_2

    :cond_5
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    :cond_6
    :goto_3
    or-int/lit16 v2, v2, 0x580

    and-int/lit16 v4, v2, 0x493

    const/16 v5, 0x492

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_7

    move v4, v7

    goto :goto_4

    :cond_7
    move v4, v6

    :goto_4
    and-int/2addr v2, v7

    invoke-virtual {p4, v2, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_9

    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_6

    :cond_9
    :goto_5
    if-eqz v1, :cond_a

    new-instance p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {p0, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_a
    if-eqz v3, :cond_b

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_b
    sget-object p2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    const-string p3, ""

    invoke-static {v6, p4, p3}, Landroidx/compose/animation/core/InfiniteTransitionKt;->c(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object p3

    :goto_6
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVShape;->b:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {p0, v0}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, p1, v6}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v1, 0x230

    invoke-static {v0, p2, p3, p4, v1}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeletonKt;->d(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/Composer;I)V

    :goto_7
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    goto :goto_8

    :cond_c
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_7

    :goto_8
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_d

    new-instance v2, Lo70;

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lo70;-><init>(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;II)V

    iput-object v2, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void
.end method

.method public static final d(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v8, p4

    if-eqz v0, :cond_0

    const-string v1, "LVSkeletonInternal"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v9, v0

    const v0, 0x2e8c2a4b

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    and-int/lit8 v0, v8, 0x6

    const/4 v10, 0x4

    const/4 v1, 0x2

    if-nez v0, :cond_2

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    or-int/2addr v0, v8

    goto :goto_1

    :cond_2
    move v0, v8

    :goto_1
    and-int/lit8 v2, v8, 0x30

    if-nez v2, :cond_5

    if-nez p1, :cond_3

    const/4 v2, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    :goto_2
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_3

    :cond_4
    const/16 v2, 0x10

    :goto_3
    or-int/2addr v0, v2

    :cond_5
    and-int/lit16 v2, v8, 0x180

    if-nez v2, :cond_8

    and-int/lit16 v2, v8, 0x200

    if-nez v2, :cond_6

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    :cond_6
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_7

    const/16 v2, 0x100

    goto :goto_5

    :cond_7
    const/16 v2, 0x80

    :goto_5
    or-int/2addr v0, v2

    :cond_8
    and-int/lit16 v2, v0, 0x93

    const/16 v4, 0x92

    const/4 v11, 0x0

    const/4 v5, 0x1

    if-eq v2, v4, :cond_9

    move v2, v5

    goto :goto_6

    :cond_9
    move v2, v11

    :goto_6
    and-int/lit8 v4, v0, 0x1

    invoke-virtual {v6, v4, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeletonKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeletonKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    if-eq v2, v5, :cond_b

    if-ne v2, v1, :cond_a

    const v1, -0x43d5130f

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeleton;

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeleton;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_a
    const v0, -0x43d52571

    invoke-static {v6, v0, v11}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_b
    const v1, -0x43d51bae

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeleton;

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeleton;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_7
    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x70

    const/16 v2, 0x40

    or-int/2addr v0, v2

    iget-wide v4, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->a:J

    move-wide v12, v4

    iget-wide v3, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->b:J

    iget v2, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->d:I

    iget v5, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->c:I

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->e:Landroidx/compose/animation/core/Easing;

    new-instance v7, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v7, v2, v5, v1}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    sget-object v1, Landroidx/compose/animation/core/RepeatMode;->Reverse:Landroidx/compose/animation/core/RepeatMode;

    const-wide/16 v14, 0x0

    invoke-static {v7, v1, v14, v15, v10}, Landroidx/compose/animation/core/AnimationSpecKt;->a(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JI)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v5

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v7, v0, 0x7008

    move-object/from16 v0, p2

    move-wide v1, v12

    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/TransitionKt;->a(Landroidx/compose/animation/core/InfiniteTransition;JJLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_c

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v0, :cond_d

    :cond_c
    new-instance v2, Lya;

    invoke-direct {v2, v1, v10}, Lya;-><init>(Landroidx/compose/runtime/State;I)V

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v2}, Landroidx/compose/ui/draw/DrawModifierKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v6, v11}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    goto :goto_8

    :cond_e
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_f

    new-instance v0, Lm70;

    const/4 v5, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v8

    move-object v1, v9

    invoke-direct/range {v0 .. v5}, Lm70;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final e(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/Composer;II)V
    .locals 9

    const-string v0, "LVSkeletonTitle"

    if-eqz p0, :cond_0

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    const v1, -0x6406f6c6

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p3

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_1

    or-int/lit8 v2, p4, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v2, p4, 0x6

    if-nez v2, :cond_3

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, p4

    goto :goto_1

    :cond_3
    move v2, p4

    :goto_1
    or-int/lit16 v2, v2, 0xb0

    and-int/lit16 v3, v2, 0x93

    const/16 v4, 0x92

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_4

    move v3, v6

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    and-int/2addr v2, v6

    invoke-virtual {p3, v2, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_6

    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_4

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    new-instance p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {p0, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_7
    sget-object p1, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    const-string p2, ""

    invoke-static {v5, p3, p2}, Landroidx/compose/animation/core/InfiniteTransitionKt;->c(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object p2

    :goto_4
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVShape;->b:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {p0, v0}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {p3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v1, 0x230

    invoke-static {v0, p1, p2, p3, v1}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeletonKt;->d(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/Composer;I)V

    :goto_5
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    goto :goto_6

    :cond_8
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_5

    :goto_6
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_9

    new-instance v2, Ln70;

    const/4 v8, 0x0

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v8}, Ln70;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;III)V

    iput-object v2, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method
