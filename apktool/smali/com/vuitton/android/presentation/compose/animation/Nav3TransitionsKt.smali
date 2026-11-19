.class public abstract Lcom/vuitton/android/presentation/compose/animation/Nav3TransitionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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


# direct methods
.method public static a(Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ContentTransform;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->a:Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x12c

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v4

    invoke-static {p0, v1, v4}, Landroidx/compose/animation/AnimatedContentTransitionScope;->f(Landroidx/compose/animation/AnimatedContentTransitionScope;ILandroidx/compose/animation/core/TweenSpec;)Landroidx/compose/animation/EnterTransition;

    move-result-object v4

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    invoke-static {p0, v1, v0}, Landroidx/compose/animation/AnimatedContentTransitionScope;->a(Landroidx/compose/animation/AnimatedContentTransitionScope;ILandroidx/compose/animation/core/TweenSpec;)Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    invoke-static {v4, p0}, Landroidx/compose/animation/AnimatedContentKt;->e(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ContentTransform;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ContentTransform;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->a:Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->b:I

    const/16 v1, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v5

    invoke-static {p0, v0, v5}, Landroidx/compose/animation/AnimatedContentTransitionScope;->f(Landroidx/compose/animation/AnimatedContentTransitionScope;ILandroidx/compose/animation/core/TweenSpec;)Landroidx/compose/animation/EnterTransition;

    move-result-object v5

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/AnimatedContentTransitionScope;->a(Landroidx/compose/animation/AnimatedContentTransitionScope;ILandroidx/compose/animation/core/TweenSpec;)Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    invoke-static {v5, p0}, Landroidx/compose/animation/AnimatedContentKt;->e(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ContentTransform;

    move-result-object p0

    return-object p0
.end method
