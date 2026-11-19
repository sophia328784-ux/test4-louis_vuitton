.class public abstract Landroidx/compose/animation/core/MonoSplineKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "animation-core"
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
.method public static final a(FFFFFF)F
    .locals 3

    mul-float v0, p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v1, p1

    mul-float/2addr v1, p4

    add-float/2addr v1, p5

    mul-float/2addr v1, v2

    sub-float v1, p4, v1

    const/high16 v2, 0x40400000    # 3.0f

    add-float/2addr p4, p5

    mul-float/2addr p4, v2

    mul-float/2addr p4, v0

    add-float/2addr p4, v1

    mul-float/2addr p4, p0

    const/high16 p0, 0x40c00000    # 6.0f

    sub-float/2addr p1, v0

    mul-float/2addr p1, p0

    sub-float/2addr p2, p3

    mul-float/2addr p2, p1

    sub-float/2addr p4, p2

    return p4
.end method
