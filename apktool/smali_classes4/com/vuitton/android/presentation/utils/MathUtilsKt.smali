.class public abstract Lcom/vuitton/android/presentation/utils/MathUtilsKt;
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
.method public static final a(FFFFF)F
    .locals 1

    cmpg-float v0, p1, p3

    if-nez v0, :cond_1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_0

    return p2

    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :cond_1
    sub-float/2addr p0, p1

    sub-float/2addr p4, p2

    mul-float/2addr p4, p0

    sub-float/2addr p3, p1

    div-float/2addr p4, p3

    add-float/2addr p4, p2

    return p4
.end method
