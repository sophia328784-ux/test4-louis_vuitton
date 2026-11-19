.class public abstract Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersBackGradientKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "isGradientVisible",
        "presentation"
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

    const/high16 v0, 0x42a00000    # 80.0f

    sput v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersBackGradientKt;->a:F

    return-void
.end method

.method public static final a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Z)V
    .locals 10

    if-eqz p2, :cond_0

    const-string v0, "ActiveFiltersBackGradient"

    invoke-static {p2, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    :cond_0
    move-object v1, p2

    const p2, 0x56a17bb7

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    and-int/lit8 p1, p0, 0x6

    const/4 p2, 0x4

    const/4 v0, 0x2

    if-nez p1, :cond_2

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    or-int/2addr p1, p0

    goto :goto_1

    :cond_2
    move p1, p0

    :goto_1
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x20

    if-nez v2, :cond_4

    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    const/16 v2, 0x10

    :goto_2
    or-int/2addr p1, v2

    :cond_4
    and-int/lit8 v2, p1, 0x13

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eq v2, v4, :cond_5

    move v2, v7

    goto :goto_3

    :cond_5
    move v2, v5

    :goto_3
    and-int/lit8 v4, p1, 0x1

    invoke-virtual {v6, v4, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v4, :cond_6

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    and-int/lit8 v9, p1, 0x70

    if-ne v9, v3, :cond_7

    goto :goto_4

    :cond_7
    move v7, v5

    :goto_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    const/4 v9, 0x0

    if-nez v7, :cond_8

    if-ne v3, v4, :cond_9

    :cond_8
    new-instance v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersBackGradientKt$ActiveFiltersBackGradient$1$1;

    invoke-direct {v3, p3, v2, v9}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersBackGradientKt$ActiveFiltersBackGradient$1$1;-><init>(ZLandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v8, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v3, 0x12c

    const/16 v4, 0x258

    invoke-static {v4, v3, v9, p2}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object p2

    const/4 v3, 0x6

    invoke-static {v4, v5, v9, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    invoke-static {v3, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v3

    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ComposableSingletons$ActiveFiltersBackGradientKt;->a:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ComposableSingletons$ActiveFiltersBackGradientKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ComposableSingletons$ActiveFiltersBackGradientKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    shl-int/lit8 p1, p1, 0x3

    and-int/lit8 p1, p1, 0x70

    const v0, 0x30d80

    or-int v7, p1, v0

    const/16 v8, 0x10

    const/4 v4, 0x0

    move v0, v2

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_5

    :cond_a
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance p2, Lh3;

    invoke-direct {p2, v1, p3, p0}, Lh3;-><init>(Landroidx/compose/ui/Modifier;ZI)V

    iput-object p2, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method
