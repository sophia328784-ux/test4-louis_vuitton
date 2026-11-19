.class public abstract Lcom/vuitton/android/presentation/compose/animation/ExitTransitionKt;
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


# static fields
.field public static final a:Landroidx/compose/animation/ExitTransition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x190

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v4

    new-instance v5, Liv;

    const/16 v6, 0x11

    invoke-direct {v5, v6}, Liv;-><init>(I)V

    invoke-static {v5, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->u(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/ExitTransition;

    move-result-object v4

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/compose/animation/ExitTransitionKt;->a:Landroidx/compose/animation/ExitTransition;

    return-void
.end method

.method public static a(Landroidx/compose/animation/AnimatedContentTransitionScope;II)Landroidx/compose/animation/ExitTransition;
    .locals 3

    and-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    sget-object p1, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->a:Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move p1, v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    const/4 v1, 0x6

    const/16 v2, 0x12c

    invoke-static {v2, v0, p2, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/compose/animation/AnimatedContentTransitionScope;->a(Landroidx/compose/animation/AnimatedContentTransitionScope;ILandroidx/compose/animation/core/TweenSpec;)Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroidx/compose/animation/AnimatedContentTransitionScope;II)Landroidx/compose/animation/ExitTransition;
    .locals 3

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    sget-object p1, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->a:Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->b:I

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    const/4 v0, 0x6

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-static {v1, v2, p2, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/compose/animation/AnimatedContentTransitionScope;->a(Landroidx/compose/animation/AnimatedContentTransitionScope;ILandroidx/compose/animation/core/TweenSpec;)Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    return-object p0
.end method
