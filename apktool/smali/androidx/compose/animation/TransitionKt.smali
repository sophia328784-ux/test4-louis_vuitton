.class public abstract Landroidx/compose/animation/TransitionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "animation"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/animation/core/InfiniteTransition;JJLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;
    .locals 3

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    sget-object v0, Landroidx/compose/animation/ColorVectorConverterKt;->a:Lkotlin/jvm/functions/Function1;

    invoke-static {p3, p4}, Landroidx/compose/ui/graphics/Color;->f(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v1

    check-cast v0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;

    invoke-virtual {v0, v1}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/TwoWayConverter;

    invoke-interface {p6, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_0
    check-cast v0, Landroidx/compose/animation/core/TwoWayConverter;

    move-wide v1, p1

    new-instance p1, Landroidx/compose/ui/graphics/Color;

    invoke-direct {p1, v1, v2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance p2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {p2, p3, p4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    and-int/lit8 p3, p7, 0xe

    const/16 p4, 0x8

    or-int/2addr p3, p4

    and-int/lit8 p4, p7, 0x70

    or-int/2addr p3, p4

    and-int/lit16 p4, p7, 0x380

    or-int/2addr p3, p4

    const p4, 0x8000

    or-int/2addr p3, p4

    shl-int/lit8 p4, p7, 0x3

    const p7, 0xe000

    and-int/2addr p7, p4

    or-int/2addr p3, p7

    const/high16 p7, 0x70000

    and-int/2addr p4, p7

    or-int p7, p3, p4

    move-object p4, p5

    const-string p5, "Colour animation"

    move-object p3, v0

    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/core/InfiniteTransitionKt;->b(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object p0

    return-object p0
.end method
