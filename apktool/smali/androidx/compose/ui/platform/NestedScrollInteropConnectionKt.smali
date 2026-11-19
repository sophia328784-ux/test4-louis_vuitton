.class public abstract Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "ui"
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
.method public static final a(J)I
    .locals 4

    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_1

    or-int/lit8 p0, v0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method public static final b(IJ[II)J
    .locals 10

    const/4 v0, 0x0

    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    shr-long v5, p1, v2

    long-to-int v1, v5

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    int-to-float p0, p0

    mul-float/2addr p0, v4

    sub-float/2addr v1, p0

    :goto_0
    const/4 p0, 0x1

    aget v5, p3, p0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const-wide v6, 0xffffffffL

    if-nez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    and-long v8, p1, v6

    long-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    int-to-float p4, p4

    mul-float/2addr p4, v4

    sub-float/2addr v5, p4

    :goto_1
    shr-long v8, p1, v2

    long-to-int p4, v8

    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    cmpl-float v8, v8, v3

    if-ltz v8, :cond_2

    aget v0, p3, v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    cmpl-float v1, v0, p4

    if-lez v1, :cond_3

    :goto_2
    move v0, p4

    goto :goto_3

    :cond_2
    aget v0, p3, v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    cmpg-float v1, v0, p4

    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    and-long/2addr p1, v6

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    cmpl-float p2, p2, v3

    if-ltz p2, :cond_4

    aget p0, p3, p0

    int-to-float p0, p0

    mul-float/2addr p0, v4

    add-float/2addr p0, v5

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    cmpl-float p2, p0, p1

    if-lez p2, :cond_5

    :goto_4
    move p0, p1

    goto :goto_5

    :cond_4
    aget p0, p3, p0

    int-to-float p0, p0

    mul-float/2addr p0, v4

    add-float/2addr p0, v5

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    cmpg-float p2, p0, p1

    if-gez p2, :cond_5

    goto :goto_4

    :cond_5
    :goto_5
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p3, p0

    shl-long p0, p1, v2

    and-long p2, p3, v6

    or-long/2addr p0, p2

    sget-object p2, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    return-wide p0
.end method

.method public static final c(I)I
    .locals 2

    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->a:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->b:I

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v1

    return p0
.end method

.method public static final d(F)I
    .locals 0

    invoke-static {p0}, Lkotlin/math/MathKt;->c(F)I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final e(Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/platform/NestedScrollInteropConnection;
    .locals 4

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->u:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v2, :cond_1

    :cond_0
    new-instance v3, Landroidx/compose/ui/platform/NestedScrollInteropConnection;

    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->c()F

    move-result v1

    invoke-direct {v3, v0, v1}, Landroidx/compose/ui/platform/NestedScrollInteropConnection;-><init>(Landroid/view/View;F)V

    invoke-interface {p0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v3, Landroidx/compose/ui/platform/NestedScrollInteropConnection;

    return-object v3
.end method
