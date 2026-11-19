.class public abstract Lcom/vuitton/android/presentation/screen/booking/details/components/BookingCarouselBackgroundKt;
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
.method public static final a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V
    .locals 8

    if-eqz p2, :cond_0

    const-string v0, "BookingCarouselBackground"

    invoke-static {p2, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    :cond_0
    move-object v1, p2

    const p2, 0x5916d619

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    and-int/lit8 p1, p0, 0x6

    const/4 p2, 0x2

    if-nez p1, :cond_2

    sget-object p1, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    or-int/2addr p1, p0

    goto :goto_1

    :cond_2
    move p1, p0

    :goto_1
    and-int/lit8 v0, p0, 0x30

    if-nez v0, :cond_4

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    goto :goto_2

    :cond_3
    const/16 v0, 0x10

    :goto_2
    or-int/2addr p1, v0

    :cond_4
    and-int/lit16 v0, p0, 0x180

    if-nez v0, :cond_6

    invoke-virtual {v5, p3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x100

    goto :goto_3

    :cond_5
    const/16 v0, 0x80

    :goto_3
    or-int/2addr p1, v0

    :cond_6
    and-int/lit16 v0, p1, 0x93

    const/16 v2, 0x92

    const/4 v3, 0x0

    if-eq v0, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    move v0, v3

    :goto_4
    and-int/lit8 v2, p1, 0x1

    invoke-virtual {v5, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/16 v0, 0x190

    const/4 v2, 0x0

    const/4 v4, 0x6

    invoke-static {v0, v3, v2, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v2

    new-instance v0, Ll2;

    invoke-direct {v0, p2}, Ll2;-><init>(I)V

    const p2, -0x4decf5e5

    invoke-static {p2, v0, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    shr-int/lit8 p2, p1, 0x6

    and-int/lit8 p2, p2, 0xe

    or-int/lit16 p2, p2, 0x6d80

    and-int/lit8 p1, p1, 0x70

    or-int v6, p2, p1

    const/4 v7, 0x0

    const-string v3, "BookingCarouselBackgroundCrossfade"

    move-object v0, p3

    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/CrossfadeKt;->b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_5

    :cond_8
    move-object v0, p3

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance p2, Lye;

    invoke-direct {p2, v1, v0, p0}, Lye;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;I)V

    iput-object p2, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method
